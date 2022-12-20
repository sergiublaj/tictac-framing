;
;-------Auxiliary facts ---------------------------------------
;

(defrule AGENT::initCycle-roundabout-framing
    (declare (salience 89))
    (timp (valoare ?)) ; make sure it fires each cycle
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>initCycle-roundabout-framing prohibited by default " crlf))
    (assert (ag_bel (bel_type moment) (bel_pname roundabout-framing-maneuver) (bel_pval prohibited))) ; by default, we assume roundabout-framing NOT valid
)

;;----------------------------------
;;
;;    Roundabout
;;
;;----------------------------------

;
;-------Check percepts to update restriction fluents-----------
;

(defrule AGENT::proper-lane
    (timp (valoare ?t))
	(ag_bel (bel_type moment) (bel_pobj ego) (bel_pname partof) (bel_pval right_lane_2_4))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>proper-lane: invalid lane " right_lane_2_4 crlf))
    (assert (ag_bel (bel_type moment) (bel_pname invalid-lane) (bel_pval yes)))
)

;-----Validate intention of roundabout-framing: check if there is any restriction ----------
(defrule AGENT::validate-roundabout-framing
    (declare (salience -10))
    ?f <- (ag_bel (bel_type moment) (bel_pname roundabout-framing-maneuver) (bel_pval prohibited))
    (not (ag_bel (bel_type moment) (bel_pname invalid-lane) (bel_pval yes)))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>validate-roundabout-framing NO->YES (no restrictions) " crlf))
    ; (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname roundabout-framing-maneuver) (bel_pval allowed)))
)