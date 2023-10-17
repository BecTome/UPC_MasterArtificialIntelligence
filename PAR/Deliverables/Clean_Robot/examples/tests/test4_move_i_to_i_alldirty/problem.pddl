(define (problem MOVEITOIAD) (:domain clean-robot)
(:objects
    o1 o2 o3 o4 o5 o6 o7 o8 o9 - office ; Offices
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
 (at R o1)

 (dirty o1) (dirty o2) (dirty o3) 
 (dirty o4) (dirty o5) (dirty o6) 
 (dirty o7) (dirty o8) (dirty o9)
)

(:goal (and
    ; Robot final location
    (at R o1)

    ; Clean offices
    (not (dirty o1)) (not (dirty o2)) (not (dirty o3))
    (not (dirty o4)) (not (dirty o5)) (not (dirty o6))
    (not (dirty o7)) (not (dirty o8)) (not (dirty o9))
))
)
