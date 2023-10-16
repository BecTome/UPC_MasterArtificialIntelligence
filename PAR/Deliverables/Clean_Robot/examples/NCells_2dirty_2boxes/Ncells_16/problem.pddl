(define (problem NCELL16) (:domain clean-robot)
(:objects
    o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 - office ; Offices
    A B - box    ; Boxes
)

(:init

 ; Adjacency conditions
 (adj o1 o2) (adj o2 o1)
 (adj o1 o5) (adj o5 o1)

 (adj o2 o6) (adj o6 o2)
 (adj o2 o3) (adj o3 o2)

 (adj o3 o7) (adj o7 o3)
 (adj o3 o4) (adj o4 o3)

 (adj o4 o8) (adj o8 o4)

 (adj o5 o6) (adj o6 o5)
 (adj o5 o9) (adj o9 o5)

 (adj o9 o10) (adj o10 o9)
 (adj o9 o13) (adj o13 o9)

 (adj o10 o11) (adj o11 o10)
 (adj o10 o14) (adj o14 o10)
 
 (adj o11 o12) (adj o12 o11)
 (adj o11 o15) (adj o15 o11)

 (adj o12 o16) (adj o16 o12)

 (adj o13 o14) (adj o14 o13)
 (adj o14 o15) (adj o15 o14)

 (adj o15 o16) (adj o16 o15)

 ; Robot initial location
 (at R o13)

 ; Box initial locations map
 (at A o1)  (empty o2)  (empty o3)  (empty o4)
 (empty o5)  (empty o6)  (empty o7)  (empty o8)
 (empty o9)  (empty o10) (empty o11)  (empty o12)
 (empty o13) (empty o14) (empty o15) (at B o16)

 ; Dirty offices
 (dirty o3)
 (dirty o9)

)

(:goal (and
    ; Robot final location
    (at R o4)

    ; Clean offices
    (not (dirty o3))
    (not (dirty o9))


    ; Boxes final locations
    (at A o2) (at B o14)

))
)
