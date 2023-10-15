(define (problem clean-robot) (:domain clean-robot)
(:objects
    p1 p2 p3
)

(:init

(position p1)
(position p2)
(position p3)
 (inc p1 p2)
 (inc p2 p3)

 (dirty p1 p3)
 (dirty p2 p3)

 (at p1 p1)

 (box-at p1 p1)
 (box-at p2 p2)
 (box-at p3 p3)

)

(:goal (and
    (at p1 p2)
    (not (dirty p1 p3))
    (not (dirty p2 p3))
    (box-at p2 p1)
    (box-at p3 p1)
    (box-at p1 p3)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
