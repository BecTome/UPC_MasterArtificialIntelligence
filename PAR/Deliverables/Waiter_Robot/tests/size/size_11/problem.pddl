(define (problem waiter-robot) (:domain waiter-robot)
(:objects
    PUA AUA PMA AMA PLA E1 E2 E3 E4 - room ; Rooms in restaurant
    BTA  ALA - kitchen ; Kitchen
    t1 t2 t3 - tray    ; Boxes
    r1 r2 - robot   ; Robot
    c1 c2 c3 c4 - customer   ; Clients
    )
(:init

 ; Adjacency conditions
 (adj PUA AUA) (adj AUA PUA)
 (adj AMA ALA) (adj ALA AMA)
 (adj ALA PLA) (adj PLA ALA)
 (adj PLA PMA) (adj PMA PLA)

 (adj AUA BTA) (adj BTA AUA)

 ; Extra
  (adj PUA E1) (adj E1 PUA)
  (adj AUA E2) (adj E2 AUA)

  (adj E1 E3) (adj E3 E1)
  (adj E2 E4) (adj E4 E2)

  (adj PMA E3) (adj E3 PMA)
  (adj AMA E4) (adj E4 AMA)

 ; Robot initial locations map
             (at r1 BTA) 
 (empty PUA) (empty AUA) 
 (empty E1) (empty E2) 
  (empty E3) (empty E4) 
 (empty PMA) (at r2 AMA) 
 (empty PLA) (empty ALA)

 ; Clients initial locations map
    (at c1 PUA)
    (at c2 AUA)
    (at c3 PLA)
    (at c4 PMA)

 ; Trays assignments
    (belong r1 t1)
    (belong r1 t2)
    (belong r2 t3)
    
)

(:goal (and

; Serve all clients
    (served c1)
    (served c2)
    (served c3)
    (served c4)

; Define final locations
             (at r2 BTA) 
 (empty PUA) (at r1 AUA) 
 (empty E1) (empty E2) 
  (empty E3) (empty E4) 
 (empty PMA) (empty AMA) 
 (empty PLA) (empty ALA)
 
)
)
)

