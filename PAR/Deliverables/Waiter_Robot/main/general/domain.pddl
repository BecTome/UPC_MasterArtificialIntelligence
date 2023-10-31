;Header and description

(define (domain waiter-robot)

;import needed requirements
(:requirements :strips :negative-preconditions :typing)

;define types just for simplicity
(:types robot - physic customer - physic kitchen - loc room - loc tray)


(:predicates
 (at ?m - physic ?o - loc)      ; The object B is at room o
 (adj ?o1 ?o2 - loc)            ; The rooms o1 and o2 are adjacent
 (served ?c - customer)          ; The customer c has been served
 (belong ?r - robot ?t - tray)   ; The robot r has a tray t
 (occupied ?t - tray); The robot r has a plate in its tray t
 (empty ?o - loc)             ; The room r is empty of other robots
)

(:action pick-up
    :parameters (?k - kitchen ?r - robot ?t - tray)
    :precondition (and (at ?r ?k)             ; The robot r is at kitchen k
                       (belong ?r ?t)         ; The robot r has a tray t
                       (not (occupied ?t))    ; The robot has space in tray t
                    )
    :effect (and (occupied ?t)) ; The room o is not dirty anymore
            )


(:action move
    :parameters (?r - robot ?o1 ?o2 - loc)
    :precondition (and (adj ?o1 ?o2) ; Both rooms are adjacent
                        ; (empty ?o2)  ; The room o is empty of other robots
                        (at ?r ?o1)  ; The object is at room o1
                   )
    :effect (and (not (at ?r ?o1))  ; The object is not at room o1 anymore
                ;  (empty ?o1)        ; The room o1 is empty of other robots
                 (at ?r ?o2)        ; The object is now at room o2
                ;  (not (empty ?o2))    ; The room o2 is not empty anymore
            )
)

(:action serve
    :parameters (?o - loc ?c - customer ?r - robot ?t - tray)
    :precondition (and (at ?r ?o)       ; The robot is at room o
                       (at ?c ?o)       ; The customer is at room o
                       (not (served ?c)) ; The customer has not been served yet
                       (belong ?r ?t)   ; The robot has a tray t
                       (occupied ?t) ; The robot has a plate in its tray t
                   )
    :effect (and (not (occupied ?t)) ; The robot does not have a plate in its tray t anymore
                 (served ?c)           ; The customer has been served
            )
)
)



;define actions here
