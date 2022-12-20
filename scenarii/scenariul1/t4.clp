;; PERCEPT TYPE: isa
;; event
(ag_percept (percept_pobj event_1) (percept_pname isa) (percept_pval event))
;; 1st exit
(ag_percept (percept_pobj road_1) (percept_pname isa) (percept_pval road))
(ag_percept (percept_pobj right_lane_1_1) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj right_lane_2_1) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj left_lane_1_1) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj left_lane_2_1) (percept_pname isa) (percept_pval lane))
;; 2nd exit
(ag_percept (percept_pobj road_2) (percept_pname isa) (percept_pval road))
(ag_percept (percept_pobj right_lane_1_2) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj right_lane_2_2) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj left_lane_1_2) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj left_lane_2_2) (percept_pname isa) (percept_pval lane))
;; 3rd exit
(ag_percept (percept_pobj road_3) (percept_pname isa) (percept_pval road))
(ag_percept (percept_pobj right_lane_1_3) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj right_lane_2_3) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj left_lane_1_3) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj left_lane_2_3) (percept_pname isa) (percept_pval lane))
;; 4th exit
(ag_percept (percept_pobj road_4) (percept_pname isa) (percept_pval road))
(ag_percept (percept_pobj right_lane_1_4) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj right_lane_2_4) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj left_lane_1_4) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj left_lane_2_4) (percept_pname isa) (percept_pval lane))
;; roundabout
(ag_percept (percept_pobj roundabout_1) (percept_pname isa) (percept_pval roundabout))
(ag_percept (percept_pobj lane_1) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj lane_2) (percept_pname isa) (percept_pval lane))
(ag_percept (percept_pobj statue_1) (percept_pname isa) (percept_pval statue))
;; signs
(ag_percept (percept_pobj road_sign_1) (percept_pname isa) (percept_pval road_sign))
(ag_percept (percept_pobj road_sign_2) (percept_pname isa) (percept_pval road_sign))
(ag_percept (percept_pobj road_sign_3) (percept_pname isa) (percept_pval road_sign))
(ag_percept (percept_pobj road_sign_4) (percept_pname isa) (percept_pval road_sign))
;; cars
(ag_percept (percept_pobj red_car) (percept_pname isa) (percept_pval car))
(ag_percept (percept_pobj ego) (percept_pname isa) (percept_pval car))



;; PERCEPT TYPE: partof
;; 1st exit
(ag_percept (percept_pobj road_1) (percept_pname partof) (percept_pval roundabout_1))
(ag_percept (percept_pobj right_lane_1_1) (percept_pname partof) (percept_pval road_1))
(ag_percept (percept_pobj right_lane_2_1) (percept_pname partof) (percept_pval road_1))
(ag_percept (percept_pobj left_lane_1_1) (percept_pname partof) (percept_pval road_1))
(ag_percept (percept_pobj left_lane_2_1) (percept_pname partof) (percept_pval road_1))
;; 2nd exit
(ag_percept (percept_pobj road_2) (percept_pname partof) (percept_pval roundabout_1))
(ag_percept (percept_pobj right_lane_1_2) (percept_pname partof) (percept_pval road_2))
(ag_percept (percept_pobj right_lane_2_2) (percept_pname partof) (percept_pval road_2))
(ag_percept (percept_pobj left_lane_1_2) (percept_pname partof) (percept_pval road_2))
(ag_percept (percept_pobj left_lane_2_2) (percept_pname partof) (percept_pval road_2))
;; 3rd exit
(ag_percept (percept_pobj road_3) (percept_pname partof) (percept_pval roundabout_1))
(ag_percept (percept_pobj right_lane_1_3) (percept_pname partof) (percept_pval road_3))
(ag_percept (percept_pobj right_lane_2_3) (percept_pname partof) (percept_pval road_3))
(ag_percept (percept_pobj left_lane_1_3) (percept_pname partof) (percept_pval road_3))
(ag_percept (percept_pobj left_lane_2_3) (percept_pname partof) (percept_pval road_3))
;; 4th exit
(ag_percept (percept_pobj road_4) (percept_pname partof) (percept_pval roundabout_1))
(ag_percept (percept_pobj right_lane_1_4) (percept_pname partof) (percept_pval road_4))
(ag_percept (percept_pobj right_lane_2_4) (percept_pname partof) (percept_pval road_4))
(ag_percept (percept_pobj left_lane_1_4) (percept_pname partof) (percept_pval road_4))
(ag_percept (percept_pobj left_lane_2_4) (percept_pname partof) (percept_pval road_4))
;; roundabout
(ag_percept (percept_pobj roundabout_1) (percept_pname partof) (percept_pval event_1))
(ag_percept (percept_pobj lane_1) (percept_pname partof) (percept_pval roundabout_1))
(ag_percept (percept_pobj lane_2) (percept_pname partof) (percept_pval roundabout_1))
(ag_percept (percept_pobj statue_1) (percept_pname partof) (percept_pval roundabout_1))
;; signs
(ag_percept (percept_pobj road_sign_1) (percept_pname partof) (percept_pval right_lane_1_1))
(ag_percept (percept_pobj road_sign_2) (percept_pname partof) (percept_pval right_lane_1_2))
(ag_percept (percept_pobj road_sign_3) (percept_pname partof) (percept_pval right_lane_1_3))
(ag_percept (percept_pobj road_sign_4) (percept_pname partof) (percept_pval right_lane_1_4))
;; cars
(ag_percept (percept_pobj red_car) (percept_pname partof) (percept_pval right_lane_1_4))
(ag_percept (percept_pobj ego) (percept_pname partof) (percept_pval right_lane_2_4))



;; PERCEPT TYPE: type
;; 1st exit
(ag_percept (percept_pobj right_lane_1_1) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj right_lane_2_1) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj left_lane_1_1) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj left_lane_2_1) (percept_pname type) (percept_pval straight))
;; 2nd exit
(ag_percept (percept_pobj right_lane_1_2) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj right_lane_2_2) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj left_lane_1_2) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj left_lane_2_2) (percept_pname type) (percept_pval straight))
;; 3rd exit
(ag_percept (percept_pobj right_lane_1_3) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj right_lane_2_3) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj left_lane_1_3) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj left_lane_2_3) (percept_pname type) (percept_pval straight))
;; 4th exit
(ag_percept (percept_pobj right_lane_1_4) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj right_lane_2_4) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj left_lane_1_4) (percept_pname type) (percept_pval straight))
(ag_percept (percept_pobj left_lane_2_4) (percept_pname type) (percept_pval straight))
;; roundabout
(ag_percept (percept_pobj lane_1) (percept_pname type) (percept_pval circle))
(ag_percept (percept_pobj lane_2) (percept_pname type) (percept_pval circle))
;; signs
(ag_percept (percept_pobj road_sign_1) (percept_pname type) (percept_pval roundabout_sign))
(ag_percept (percept_pobj road_sign_2) (percept_pname type) (percept_pval roundabout_sign))
(ag_percept (percept_pobj road_sign_3) (percept_pname type) (percept_pval roundabout_sign))
(ag_percept (percept_pobj road_sign_4) (percept_pname type) (percept_pval roundabout_sign))
;; cars
(ag_percept (percept_pobj red_car) (percept_pname type) (percept_pval fiat))
(ag_percept (percept_pobj ego) (percept_pname type) (percept_pval dacia))



;; PERCEPT TYPE: intersects
;; 1st exit
(ag_percept (percept_pobj road_1) (percept_pname intersects) (percept_pval roundabout_1))
;; 2nd exit
(ag_percept (percept_pobj road_2) (percept_pname intersects) (percept_pval roundabout_1))
;; 3rd exit
(ag_percept (percept_pobj road_3) (percept_pname intersects) (percept_pval roundabout_1))
;; 4th exit
(ag_percept (percept_pobj road_4) (percept_pname intersects) (percept_pval roundabout_1))



;; PERCEPT TYPE: angle_with_statue
;; 1st exit
(ag_percept (percept_pobj road_1) (percept_pname angle_with_statue) (percept_pval 0))
;; 2nd exit
(ag_percept (percept_pobj road_2) (percept_pname angle_with_statue) (percept_pval 90))
;; 3rd exit
(ag_percept (percept_pobj road_3) (percept_pname angle_with_statue) (percept_pval 180))
;; 4th exit
(ag_percept (percept_pobj road_4) (percept_pname angle_with_statue) (percept_pval 270))



;; PERCEPT TYPE: flash
;; cars
(ag_percept (percept_pobj red_car) (percept_pname flash) (percept_pval left))
(ag_percept (percept_pobj ego) (percept_pname flash) (percept_pval right))



;; PERCEPT TYPE: direction
;; cars
(ag_percept (percept_pobj red_car) (percept_pname direction) (percept_pval ahead))
(ag_percept (percept_pobj ego) (percept_pname direction) (percept_pval ahead))



;; PERCEPT TYPE: distance_to_roundabout
;; cars
(ag_percept (percept_pobj red_car) (percept_pname distance_to_roundabout) (percept_pval 20))
(ag_percept (percept_pobj ego) (percept_pname distance_to_roundabout) (percept_pval 20))