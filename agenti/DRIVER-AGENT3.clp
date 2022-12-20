;
;-------Auxiliary facts ---------------------------------------
;


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
;;    Highway
;;
;;----------------------------------

;--Sign forbidding access on a street to the left dealt by r-no-access rule
;--continuous line presence checked by rmlc rule
;--TODO: roundabout

;--- Sign forbidding left turn or forcing either go ahead or right turn
(defrule AGENT::r-no-left-turn-sign
    (timp (valoare ?t))
    (ag_bel (bel_pobj ?ps) (bel_pname isa) (bel_pval road_sign))
    (ag_bel (bel_pobj ?ps) (bel_pname semnificatie) (bel_pval ?v&interzis_viraj_stanga | obligatoriu_inainte | obligatoriu_dreapta | obligatoriu_inainte_dreapta | intersectie_cu_sens_giratoriu))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>r-no-left-turn-sign" ?v crlf))
    (assert (ag_bel (bel_type fluent) (bel_pname no-left-turn-zone) (bel_pval yes)))
    ;(facts AGENT)
)

(defrule AGENT::r-no-left-turn-zone-end
    (timp (valoare ?t))
    ?f <- (ag_bel (bel_type fluent) (bel_pname no-left-turn-zone) (bel_pval yes))
    (ag_bel (bel_pobj ?ps) (bel_pname isa) (bel_pval area_limit))
    (ag_bel (bel_pobj ?ps) (bel_pname isa) (bel_pval area_limit))
    (ag_bel (bel_pobj ?ps) (bel_pname semnificatie) (bel_pval intersection_end))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>r-no-left-turn-zone-end we crossed an intersection" crlf))
    (retract ?f)
)

;-----Validate intention of left-turn: check if there is any restriction ----------
(defrule AGENT::validate-left-turn
    (declare (salience -10))
    ?f <- (ag_bel (bel_type moment) (bel_pname left-turn-maneuver) (bel_pval prohibited))
    (not (ag_bel (bel_type fluent) (bel_pname no-left-turn-zone) (bel_pval yes)))
    ;(not (ag_bel (bel_type moment) (bel_pname no-access) (bel_pval yes) (bel_pdir left)))
    ;; TODO: manage direction
     (not (ag_bel (bel_type moment) (bel_pname no-access) (bel_pval yes)))
    (not (ag_bel (bel_type moment) (bel_pname continuous-line-marking) (bel_pval yes)))
;roundabout
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>validate-left-turn NU->DA (nu avem restrictii) " crlf))
    (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname left-turn-maneuver) (bel_pval allowed)))
    ;(facts AGENT)
)