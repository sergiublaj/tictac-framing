;; PERCEPT TYPE: isa
;; event
(ag_percept (percept_pobj event_1) (percept_pname isa) (percept_pval event))
;; road
(ag_percept (percept_pobj road_1) (percept_pname isa) (percept_pval road))
(ag_percept (percept_pobj lane_1) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj lane_2) (percept_pname isa) (percept_pval lane))
;; sign
(ag_percept (percept_pobj road_sign_1) (percept_pname isa) (percept_pval road_sign))
;; crosswalk
(ag_percept (percept_pobj crosswalk_1) (percept_pname isa) (percept_pval crosswalk))
;; cars
(ag_percept (percept_pobj ego) (percept_pname isa) (percept_pval car))
(ag_percept (percept_pobj yellow_car) (percept_pname isa) (percept_pval car))


;; PERCEPT TYPE: partof
;; road
(ag_percept (percept_pobj road_1) (percept_pname partof) (percept_pval event_1))
(ag_percept (percept_pobj lane_1) (percept_pname partof) (percept_pval road_1))
(ag_percept (percept_pobj lane_2) (percept_pname partof) (percept_pval road_1))
;; sign
(ag_percept (percept_pobj road_sign_1) (percept_pname partof) (percept_pval lane_1))
;; crosswalk
(ag_percept (percept_pobj crosswalk_1) (percept_pname partof) (percept_pval road_1))
;; cars
(ag_percept (percept_pobj ego) (percept_pname partof) (percept_pval lane_1))
(ag_percept (percept_pobj yellow_car) (percept_pname partof) (percept_pval lane_2))



;; PERCEPT TYPE: type
;; signs
(ag_percept (percept_pobj crosswalk_sign_1) (percept_pname type) (percept_pval crosswalk_sign))
;; cars
(ag_percept (percept_pobj ego) (percept_pname type) (percept_pval dacia))
(ag_percept (percept_pobj yellow_car) (percept_pname type) (percept_pval audi))



;; PERCEPT TYPE: flash
;; cars
(ag_percept (percept_pobj ego) (percept_pname flash) (percept_pval right))



;; PERCEPT TYPE: direction
;; cars
(ag_percept (percept_pobj ego) (percept_pname direction) (percept_pval ahead))
(ag_percept (percept_pobj yellow_car) (percept_pname direction) (percept_pval ahead))



;; PERCEPT TYPE: distance_to_crosswalk
;; cars
(ag_percept (percept_pobj ego) (percept_pname distance_to_crosswalk) (percept_pval 20))
(ag_percept (percept_pobj yellow_car) (percept_pname distance_to_crosswalk) (percept_pval 20))