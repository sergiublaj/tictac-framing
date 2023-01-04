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
(ag_percept (percept_pobj red_car) (percept_pname isa) (percept_pval car))
(ag_percept (percept_pobj blue_car) (percept_pname isa) (percept_pval car))
(ag_percept (percept_pobj orange_car) (percept_pname isa) (percept_pval car))
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
(ag_percept (percept_pobj red_car) (percept_pname partof) (percept_pval lane_1))
(ag_percept (percept_pobj blue_car) (percept_pname partof) (percept_pval lane_1))
(ag_percept (percept_pobj orange_car) (percept_pname partof) (percept_pval lane_1))
(ag_percept (percept_pobj ego) (percept_pname partof) (percept_pval lane_2))
(ag_percept (percept_pobj yellow_car) (percept_pname partof) (percept_pval lane_2))



;; PERCEPT TYPE: type
;; signs
(ag_percept (percept_pobj crosswalk_sign_1) (percept_pname type) (percept_pval crosswalk_sign))
;; cars
(ag_percept (percept_pobj red_car) (percept_pname type) (percept_pval fiat))
(ag_percept (percept_pobj blue_car) (percept_pname type) (percept_pval skoda))
(ag_percept (percept_pobj orange_car) (percept_pname type) (percept_pval volkswagen))
(ag_percept (percept_pobj ego) (percept_pname type) (percept_pval dacia))
(ag_percept (percept_pobj yellow_car) (percept_pname type) (percept_pval audi))



;; PERCEPT TYPE: flash
;; cars
(ag_percept (percept_pobj ego) (percept_pname flash) (percept_pval right))



;; PERCEPT TYPE: direction
;; cars
(ag_percept (percept_pobj red_car) (percept_pname direction) (percept_pval ahead))
(ag_percept (percept_pobj blue_car) (percept_pname direction) (percept_pval ahead))
(ag_percept (percept_pobj orange_car) (percept_pname direction) (percept_pval ahead))
(ag_percept (percept_pobj ego) (percept_pname direction) (percept_pval ahead))
(ag_percept (percept_pobj yellow_car) (percept_pname direction) (percept_pval ahead))



;; PERCEPT TYPE: distance_to_crosswalk
;; cars
(ag_percept (percept_pobj red_car) (percept_pname distance_to_crosswalk) (percept_pval 30))
(ag_percept (percept_pobj blue_car) (percept_pname distance_to_crosswalk) (percept_pval 40))
(ag_percept (percept_pobj orange) (percept_pname distance_to_crosswalk) (percept_pval 55))
(ag_percept (percept_pobj ego) (percept_pname distance_to_crosswalk) (percept_pval 40))
(ag_percept (percept_pobj yellow_car) (percept_pname distance_to_crosswalk) (percept_pval 60))



;; PERCEPT TYPE: obstacle_to_right
;; cars
(ag_percept (percept_pobj red_car) (percept_pname obstacle_to_right) (percept_pval true))
(ag_percept (percept_pobj blue_car) (percept_pname obstacle_to_right) (percept_pval true))
(ag_percept (percept_pobj orange) (percept_pname obstacle_to_right) (percept_pval true))
(ag_percept (percept_pobj ego) (percept_pname obstacle_to_right) (percept_pval true))
(ag_percept (percept_pobj yellow_car) (percept_pname obstacle_to_right) (percept_pval true))
