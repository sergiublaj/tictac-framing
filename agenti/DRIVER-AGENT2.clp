;
;-------Auxiliary facts ---------------------------------------
;


(defrule AGENT::initCycle-right-turn
    (declare (salience 89))
    (timp (valoare ?)) ;make sure it fires each cycle
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>initCycle-right-turn prohibited by default " crlf))
    (assert (ag_bel (bel_type moment) (bel_pname right-turn-maneuver) (bel_pval prohibited))) ;by default, we assume overtaking NOT valid
    ;(facts AGENT)
)

(defrule AGENT::initCycle-left-turn
    (declare (salience 89))
    (timp (valoare ?)) ;make sure it fires each cycle
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>initCycle-left-turn prohibited by default " crlf))
    (assert (ag_bel (bel_type moment)  (bel_pname left-turn-maneuver) (bel_pval prohibited))) ;by default, we assume overtaking NOT valid
    ;(facts AGENT)
)

;;----------------------------------
;;
;;    Intersection
;;
;;----------------------------------

;--- Sign forbidding right turn or forcing either go ahead or left turn
(defrule AGENT::r-no-right-turn-sign
    (timp (valoare ?t))
    (ag_bel (bel_pobj ?ps) (bel_pname isa) (bel_pval road_sign))
    (ag_bel (bel_pobj ?ps) (bel_pname semnificatie) (bel_pval ?v&interzis_viraj_dreapta | obligatoriu_inainte | obligatoriu_stanga | obligatoriu_inainte_stanga))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>r-no-right-turn-sign" crlf))
    (assert (ag_bel (bel_type fluent) (bel_pname no-right-turn-zone) (bel_pval yes)))
    ;(facts AGENT)
)

(defrule AGENT::r-no-right-turn-zone-end
    (timp (valoare ?t))
    ?f <- (ag_bel (bel_type fluent) (bel_pname no-right-turn-zone) (bel_pval yes))
    (ag_bel (bel_pobj ?ps) (bel_pname isa) (bel_pval area_limit))
    (ag_bel (bel_pobj ?ps) (bel_pname semnificatie) (bel_pval intersection_end))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>r-no-right-turn-zone-end we crossed an intersection" crlf))
    (retract ?f)
)

 ;--- Sign forbidding access on a street
(defrule AGENT::r-no-access
    (timp (valoare ?t))
    (ag_bel (bel_pobj ?ps) (bel_pname isa) (bel_pval road_sign))
    (ag_bel (bel_pobj ?ps) (bel_pname semnificatie) (bel_pval ?v& accesul_interzis | circulatia_interzisa_in_ambele_sensuri))
    ;;;(ag_bel (bel_pobj ?ps) (bel_pname direction) (bel_pval ?pd& right | left))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>r-no-access" crlf))
    (assert (ag_bel (bel_type moment) (bel_pname no-access) (bel_pval yes)))
    ;(facts AGENT)
)

;-----Validate intention of right-turn: check if there is any restriction ----------
(defrule AGENT::validate-right-turn
    (declare (salience -10))
    ?f <- (ag_bel (bel_type moment) (bel_pname right-turn-maneuver) (bel_pval prohibited))
    (not (ag_bel (bel_type fluent) (bel_pname no-right-turn-zone) (bel_pval yes)))
    ;(not (ag_bel (bel_type moment) (bel_pname no-access) (bel_pval yes) (bel_pdir right)))
    ;; TODO: manage direction
    (not (ag_bel (bel_type moment) (bel_pname no-access) (bel_pval yes)))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>validate-right-turn NU->DA (nu avem restrictii) " crlf))
    (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname right-turn-maneuver) (bel_pval allowed)))
    ;(facts AGENT)
)