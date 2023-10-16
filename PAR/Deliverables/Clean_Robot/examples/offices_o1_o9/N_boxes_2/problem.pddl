(define (problem NBOX2) (:domain clean-robot)
(:objects
    o1 o2 o3 o4 o5 o6 o7 o8 o9 - office ; Offices
    A B - box    ; Boxes
)

(:init

 ; Adjacency conditions
 (adj o1 o2) (adj o2 o1)
 (adj o1 o4) (adj o4 o1)

 (adj o2 o5) (adj o5 o2)
 (adj o2 o3) (adj o3 o2)

 (adj o3 o6) (adj o6 o3)
 (adj o4 o5) (adj o5 o4)

 (adj o4 o7) (adj o7 o4)
 (adj o5 o6) (adj o6 o5)

 (adj o5 o8) (adj o8 o5)
 (adj o6 o9) (adj o9 o6)

 (adj o7 o8) (adj o8 o7)
 (adj o8 o9) (adj o9 o8)
 
 ; Robot initial location
 (at R o7)

 ; Box initial locations map
 (at A o1) (empty o2) (empty o3) 
 (empty o4) (empty o5) (at B o6) 
 (empty o7) (empty o8) (empty o9)

 ; Dirty offices
 (dirty o3)
 (dirty o4)

)

(:goal (and
    ; Robot final location
    (at R o4)

    ; Clean offices
    (not (dirty o3))
    (not (dirty o4))

    ; Boxes final locations
    (at A o2) (at B o3)

))
)
