(define (problem waiter-robot) (:domain waiter-robot)
(:objects
    PUA AUA PMA AMA PLA ALA - room ; Rooms in restaurant
    BTA - kitchen ; Kitchen
    t1 - tray    ; Boxes
    r1 - robot   ; Robot
    c1 - customer   ; Clients
    )


(:init

 ; Adjacency conditions
 (adj PUA AUA) (adj AUA PUA)
 (adj AUA AMA) (adj AMA AUA)
 (adj AMA ALA) (adj ALA AMA)
 (adj ALA PLA) (adj PLA ALA)
 (adj PLA PMA) (adj PMA PLA)
 (adj PMA PUA) (adj PUA PMA)
 (adj AUA BTA) (adj BTA AUA)
 
 ; Robot initial locations map
             (at r1 BTA) 
 (empty PUA) (empty AUA) 
 (empty PMA) (empty AMA) 
 (empty PLA) (empty ALA)

 ; Clients initial locations map
 (at c1 PMA)

 ; Trays assignments
 (belong r1 t1)
)

(:goal (and

; Serve all clients
    (served c1)

; Define final locations
             (at r1 BTA) 
 (empty PUA) (empty AUA) 
 (empty PMA) (empty AMA) 
 (empty PLA) (empty ALA)
 
)
)
)

