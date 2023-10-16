(define (problem clean-robot-onebox) (:domain clean-robot-onebox)
(:objects
    o1 o2 o3 o4 o5 o6 o7 o8 o9
)

(:init
 (adj o1 o2)
 (adj o2 o1)
 (adj o2 o3)
 (adj o3 o2)
 (adj o3 o4)
 (adj o4 o3)
 (adj o1 o4)
 (adj o4 o1)
 (adj o4 o1)
 (adj o4 o1)
 (adj o4 o1)
 (adj o4 o1)
 (dirty o3)
 (at o1)
 (contains-box o4)
)

(:goal (and
    (not (dirty o3))
    (contains-box o2)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)