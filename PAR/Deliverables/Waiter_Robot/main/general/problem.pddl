(define (problem waiter-robot) (:domain waiter-robot)
(:objects
    PUA AUA PMA AMA PLA - room ; Rooms in restaurant
    BTA  ALA - kitchen ; Kitchen
    t1 t2 t3 - tray    ; Boxes
    r1 r2 - robot   ; Robot
    c1 c2 c3 C4 - customer   ; Clients
    )


(:init

 ; Adjacency conditions
 (adj PUA AUA) (adj AUA PUA)
 (adj AUA AMA) (adj AMA AUA)
 (adj AMA ALA) (adj ALA AMA)
 (adj ALA PLA) (adj PLA ALA)
 (adj PLA PMA) (adj PMA PLA)
 (adj PMA PUA) (adj PUA PMA)
 (adj PMA BTA) (adj BTA PMA)

 ; Robot initial locations map
            (empty BTA) 
 (at r1 PUA) (empty AUA) 
 (empty PMA) (at r2 AMA) 
 (empty PLA) (empty ALA)

 ; Clients

 ; Dirty offices
 (at c1 PUA)
 (at c2 AUA)
 (at c3 PLA)
  (at c4 AMA)

;  (at c3 PLA)

   (belong r1 t1)
    (belong r1 t2)
    (belong r2 t3)


    
)

(:goal (and
    (served c1)
    (served c2)
    (served c3)
    (served c4)
    ; (occupied t1)
    (at r1 AUA)
    (at r2 BTA)
    ; (not (occupied t1))
)
)
)

