(define (problem NCELL25) (:domain clean-robot)
(:objects
    o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 - office ; Offices
    A B - box    ; Boxes
)

(:init

 ; Adjacency conditions
 (adj o1 o2) (adj o2 o1)
 (adj o1 o6) (adj o6 o1)

 (adj o2 o3) (adj o3 o2)
 (adj o2 o7) (adj o7 o2)

 (adj o3 o4) (adj o4 o3)
 (adj o3 o8) (adj o8 o3)

 (adj o4 o5) (adj o5 o4) 
 (adj o4 o9) (adj o9 o4)

 (adj o5 o10) (adj o10 o5)

 (adj o6 o7) (adj o7 o6)
 (adj o6 o11) (adj o11 o6)

 (adj o7 o8) (adj o8 o7)
 (adj o7 o12) (adj o12 o7)

 (adj o8 o9) (adj o9 o8) 
 (adj o8 o13) (adj o13 o8)

 (adj o9 o10) (adj o10 o9) 
 (adj o9 o14) (adj o14 o9)

 (adj o10 o15) (adj o15 o10)
 
    (adj o11 o12) (adj o12 o11)
    (adj o11 o16) (adj o16 o11)

    (adj o12 o13) (adj o13 o12)
    (adj o12 o17) (adj o17 o12)

    (adj o13 o14) (adj o14 o13)
    (adj o13 o18) (adj o18 o13)

    (adj o14 o15) (adj o15 o14)
    (adj o14 o19) (adj o19 o14)

    (adj o15 o20) (adj o20 o15)

    (adj o16 o17) (adj o17 o16)
    (adj o16 o21) (adj o21 o16)

    (adj o17 o18) (adj o18 o17)
    (adj o17 o22) (adj o22 o17)

    (adj o18 o19) (adj o19 o18)
    (adj o18 o23) (adj o23 o18)

    (adj o19 o20) (adj o20 o19)
    (adj o19 o24) (adj o24 o19)

    (adj o20 o25) (adj o25 o20)

    (adj o21 o22) (adj o22 o21)

    (adj o22 o23) (adj o23 o22)

    (adj o23 o24) (adj o24 o23)

    (adj o24 o25) (adj o25 o24)

 ; Robot initial location
 (at R o21)

 ; Box initial locations map
 (at A o1) (empty o2) (empty o3) (empty o4) (empty o5) 
 (empty o6) (empty o7) (empty o8) (empty o9) (empty o10) 
 (empty o11) (empty o12) (empty o13) (empty o14) (empty o15)
 (empty o16) (empty o17) (empty o18) (empty o19) (empty o20) 
 (empty o21) (empty o22) (empty o23) (empty o24) (at B o25)

 ; Dirty offices
 (dirty o4)
 (dirty o16)

)

(:goal (and
    ; Robot final location
    (at R o5)

    ; Clean offices
    (not (dirty o4))
    (not (dirty o16))

    ; Boxes final locations
    (at A o2) (at B o23)

))
)
