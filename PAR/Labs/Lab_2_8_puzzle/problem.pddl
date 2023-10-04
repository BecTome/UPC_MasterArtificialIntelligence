(define (problem prob1) 

(:domain p8)

(:objects 
t1 t2 t3 t4 t5 t6 t7 t8 p1 p2 p3
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (position p1)
    (position p2)
    (position p3)

    (tiles t1)
    (tiles t2)
    (tiles t3)
    (tiles t4)
    (tiles t5)
    (tiles t6)
    (tiles t7)
    (tiles t8)

    (blank p2 p2)
    (at t1 p3 p1)
    (at t2 p2 p3)
    (at t3 p2 p1)
    (at t4 p3 p3)
    (at t5 p1 p2)
    (at t6 p3 p2)
    (at t7 p1 p3)
    (at t8 p1 p1)

    (inc p1 p2)
    (dec p2 p1)
    
    (inc p2 p3)
    (dec p3 p2)
)

(:goal (and
    
    (blank p1 p3)
    (at t1 p2 p3)
    (at t2 p3 p3)
    (at t3 p1 p2)
    (at t4 p2 p2)
    (at t5 p3 p2)
    (at t6 p1 p1)
    (at t7 p2 p1)
    (at t8 p3 p1)
    ;todo: put the goal condition here
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
