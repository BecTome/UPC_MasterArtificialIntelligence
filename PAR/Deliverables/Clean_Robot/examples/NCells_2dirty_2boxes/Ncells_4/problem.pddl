(define (problem NCELL4) (:domain clean-robot)
(:objects
    o1 o2 o3 o4 - office ; Offices
    A B - box ; Boxes
)

(:init

 ; Adjacency conditions
 (adj o1 o2) (adj o2 o1)
 (adj o1 o3) (adj o3 o1)

 (adj o2 o4) (adj o4 o2)

 (adj o3 o4) (adj o4 o3)
 
 ; Robot initial location
 (at R o3)

 ; Box initial location
 (at A o1) (empty o2)
 (empty o3) (at B o4)

 ; Dirty offices
 (dirty o2)
 (dirty o3)

)

(:goal (and
    ; Robot final location
    (at R o4)

    ; Clean offices
    (not (dirty o2))

    ; Box final location
    (at A o2) (at B o1)
))
)
