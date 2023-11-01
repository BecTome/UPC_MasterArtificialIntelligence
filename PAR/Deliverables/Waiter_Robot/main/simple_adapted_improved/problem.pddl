(define (problem waiter-robot) (:domain waiter-robot)
(:objects
    PUA AUA PMA AMA PLA ALA - room ; Rooms in restaurant
    BTA - kitchen ; Kitchen
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
 (at R BTA) 
 
 (not (hasfood))
 (not (served))
 ; Clients initial locations map
 (at C PMA)
)

(:goal (and

; Serve all clients
    (served)

; Define final locations
    (at R BTA)

 
)
)
)

