;; PERCEPT TYPE: isa
;; event
(ag_percept (percept_pobj event_1) (percept_pname isa) (percept_pval event))
;; road
(ag_percept (percept_pobj road_1) (percept_pname isa) (percept_pval road))
(ag_percept (percept_pobj lane_1) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj lane_2) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj lane_3) (percept_pname isa) (percept_pval lane))
;; cars
(ag_percept (percept_pobj blue_car) (percept_pname isa) (percept_pval car))
(ag_percept (percept_pobj ego) (percept_pname isa) (percept_pval car))


;; PERCEPT TYPE: partof
;; road
(ag_percept (percept_pobj road_1) (percept_pname partof) (percept_pval event_1))
(ag_percept (percept_pobj lane_1) (percept_pname partof) (percept_pval road_1))
(ag_percept (percept_pobj lane_2) (percept_pname partof) (percept_pval road_1))
(ag_percept (percept_pobj lane_3) (percept_pname partof) (percept_pval road_1))
;; cars
(ag_percept (percept_pobj blue_car) (percept_pname partof) (percept_pval lane_2))
(ag_percept (percept_pobj ego) (percept_pname partof) (percept_pval lane_1))



;; PERCEPT TYPE: type
;; cars
(ag_percept (percept_pobj blue_car) (percept_pname type) (percept_pval fiat))
(ag_percept (percept_pobj ego) (percept_pname type) (percept_pval dacia))



;; PERCEPT TYPE: flash
;; cars
(ag_percept (percept_pobj blue_car) (percept_pname flash) (percept_pval right))
(ag_percept (percept_pobj ego) (percept_pname flash) (percept_pval left))



;; PERCEPT TYPE: width
;; road
(ag_percept (percept_pobj lane_1) (percept_pname width) (percept_pval 2))
(ag_percept (percept_pobj lane_2) (percept_pname width) (percept_pval 2))
(ag_percept (percept_pobj lane_3) (percept_pname width) (percept_pval 2))
;; cars
(ag_percept (percept_pobj blue_car) (percept_pname width) (percept_pval 1.5))
(ag_percept (percept_pobj ego) (percept_pname width) (percept_pval 1.5))



;; PERCEPT TYPE: space
;; cars
(ag_percept (percept_pobj blue_car) (percept_pname space_right) (percept_pval 1.5))
(ag_percept (percept_pobj ego) (percept_pname space_left) (percept_pval 1.5))

