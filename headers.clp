;
;----------Modul: MAIN-------------
;
(defmodule MAIN
    (export deftemplate tic)
)

(deftemplate MAIN::tic)

(defglobal ?*main-in-debug* = FALSE) ; TRUE
(defglobal ?*ag-tic-in-debug* = FALSE) ; TRUE
(defglobal ?*totalNrRules* = 6823) ; 250, 260

;
;----------Modul: PERCEPT-MANAGER-----------
;
(defmodule PERCEPT-MANAGER
 (import MAIN deftemplate tic)
 (export deftemplate timp)
 (export deftemplate ag_percept)
)

(defglobal ?*sim-in-debug* = FALSE) ; TRUE
(defglobal ?*percepts-in-debug* = FALSE) ; TRUE
(defglobal ?*perceptsDir* = "./scenarii/scenariul1/") ; ./scenarii/scenariul2/, ./scenarii/scenariul3/

(deftemplate PERCEPT-MANAGER::timp (slot valoare))

(deftemplate PERCEPT-MANAGER::ag_percept
    (slot percept_pname)
    (slot percept_pval)
    (slot percept_pobj))

;
;-------------Modul: DRIVER-AGENT
;
(defmodule AGENT
    (import PERCEPT-MANAGER deftemplate timp)
    (import PERCEPT-MANAGER deftemplate ag_percept)
)

(defglobal ?*ag-in-debug* = FALSE) ; TRUE
(defglobal ?*ag-percepts-in-debug* = FALSE) ; TRUE
(defglobal ?*ag-measure-time* = FALSE) ; TRUE

(deftemplate ag_bel
    (slot bel_type) ; fluent|moment
    (slot bel_pname) ; which property we're talking about: overtaking-maneuver|no-overtaking-zone|speed_limit
    (slot bel_pval) ; bel_pname value: (prohibited|allowed) or (yes|no) or (50|90|100|130)
    (slot bel_pobj)
)
