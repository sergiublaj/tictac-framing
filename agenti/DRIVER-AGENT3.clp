;
;-------Auxiliary facts ---------------------------------------
;

(defrule AGENT::initCycle-highway-framing
    (declare (salience 89))
    (timp (valoare ?)) ; make sure it fires each cycle
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>initCycle-highway-framing prohibited by default " crlf))
    (assert (ag_bel (bel_type moment) (bel_pname highway-framing-maneuver) (bel_pval prohibited))) ; by default, we assume highway frmaing NOT valid
    ; (facts AGENT)
)

;;----------------------------------
;;
;;    Highway
;;
;;----------------------------------

;
;-------Check percepts to update restriction fluents-----------
;

(defrule AGENT::proper-ego-flash
    (timp (valoare ?t))
    (ag_bel (bel_type moment) (bel_pobj ego) (bel_pname flash) (bel_pval right))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>proper-ego-flash: invalid flash (right)" crlf))
    (assert (ag_bel (bel_type moment) (bel_pname invalid-ego-flash) (bel_pval yes)))
)

(defrule AGENT::proper-opponent-flash
    (timp (valoare ?t))
    (ag_percept (percept_pobj ?car) (percept_pname isa) (percept_pval car))
	(ag_bel (bel_type moment) (bel_pobj ?car) (bel_pname flash) (bel_pval right))
	(test (neq ?car ego))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>proper-opponent-flash: invalid flash (right)" crlf))
    (assert (ag_bel (bel_type moment) (bel_pname invalid-opponent-flash) (bel_pval yes)))
)

(defrule AGENT::proper-space
    (timp (valoare ?t))
    (or
      (ag_bel (bel_type moment) (bel_pobj ego) (bel_pname obstacle_to_left) (bel_pval true))
      (ag_bel (bel_type moment) (bel_pobj ego) (bel_pname obstacle_to_right) (bel_pval true)))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>proper-space: invalid space (not enough)" crlf))
    (assert (ag_bel (bel_type moment) (bel_pname invalid-space) (bel_pval yes)))
)

(defrule AGENT::proper-direction
    (timp (valoare ?t))
	  (ag_bel (bel_type moment) (bel_pobj ego) (bel_pname direction) (bel_pval right))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>proper-direction: invalid direction (right)" crlf))
    (assert (ag_bel (bel_type moment) (bel_pname invalid-direction) (bel_pval yes)))
)

;-----Validate intention of highway-framing: check if there is any restriction ----------
(defrule AGENT::validate-highway-framing
    (declare (salience -10))
    ?f <- (ag_bel (bel_type moment) (bel_pname highway-framing-maneuver) (bel_pval prohibited))
    (not (ag_bel (bel_type moment) (bel_pname invalid-ego-flash) (bel_pval yes)))
    (not (ag_bel (bel_type moment) (bel_pname invalid-opponent-flash) (bel_pval yes)))
    (not (ag_bel (bel_type moment) (bel_pname invalid-space) (bel_pval yes)))
    (not (ag_bel (bel_type moment) (bel_pname invalid-direction) (bel_pval yes)))
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>validate-highway-framing NO->YES (no restrictions)" crlf))
    (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname highway-framing-maneuver) (bel_pval allowed)))
)
