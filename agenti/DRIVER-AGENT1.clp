;
;-------Auxiliary facts ---------------------------------------
;

(defrule AGENT::initCycle-roundabout-framing
    (declare (salience 89))
    (timp (valoare ?)) ; make sure it fires each cycle
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>initCycle-roundabout-framing prohibited by default " crlf))
    (assert (ag_bel (bel_type moment) (bel_pname roundabout-framing-maneuver) (bel_pval prohibited))) ; by default, we assume roundabout-framing NOT valid
    ; (facts AGENT)
)

;;----------------------------------
;;
;;    Roundabout
;;
;;----------------------------------

;
;-------Check percepts to update restriction fluents-----------
;

(defrule AGENT::proper-flash
    (timp (valoare ?t))
    (ag_bel (bel_type moment) (bel_pobj ego) (bel_pname flash) (bel_pval ?f&left))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>proper-flash: invalid flash (left)" crlf))
    (assert (ag_bel (bel_type moment) (bel_pname invalid-flash) (bel_pval yes)))
)

(defrule AGENT::proper-space
    (timp (valoare ?t))
	  (ag_bel (bel_type moment) (bel_pobj ego) (bel_pname obstacle_to_right) (bel_pval true))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>proper-space: invalid space (not enough)" crlf))
    (assert (ag_bel (bel_type moment) (bel_pname invalid-space) (bel_pval yes)))
)

(defrule AGENT::proper-distance
    (timp (valoare ?t))
	  (ag_bel (bel_type moment) (bel_pobj ?car) (bel_pname distance_to_roundabout) (bel_pval ?d))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>proper-distance: invalid distance (not enough)" crlf))
    (assert (ag_bel (bel_type moment) (bel_pname invalid-distance) (bel_pval yes)))
)

(defrule AGENT::proper-direction
    (timp (valoare ?t))
	  (ag_bel (bel_type moment) (bel_pobj ego) (bel_pname direction) (bel_pval left))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>proper-direction: invalid direction (left)" crlf))
    (assert (ag_bel (bel_type moment) (bel_pname invalid-direction) (bel_pval yes)))
)

;-----Validate intention of roundabout-framing: check if there is any restriction ----------
(defrule AGENT::validate-roundabout-framing
    (declare (salience -10))
    ?f <- (ag_bel (bel_type moment) (bel_pname roundabout-framing-maneuver) (bel_pval prohibited))
    (not (ag_bel (bel_type moment) (bel_pname invalid-flash) (bel_pval yes)))
    (not (ag_bel (bel_type moment) (bel_pname invalid-space) (bel_pval yes)))
    (not (ag_bel (bel_type moment) (bel_pname invalid-distance) (bel_pval yes)))
    (not (ag_bel (bel_type moment) (bel_pname invalid-direction) (bel_pval yes)))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>validate-roundabout-framing NO->YES (no restrictions) " crlf))
    (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname roundabout-framing-maneuver) (bel_pval allowed)))
)
