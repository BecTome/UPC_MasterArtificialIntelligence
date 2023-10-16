;Header and description

(define (domain clean-robot)

;import needed requirements
(:requirements :strips :negative-preconditions :typing)

;define types box and robot just for simplicity
(:types box - movable robot - movable office)

; There is always only one robot so it can be 
; defined as a constant
(:constants R - robot)

(:predicates
 (at ?B - movable ?o - office) ; The object B is at office o
 (adj ?o1 ?o2 - office) ; The offices o1 and o2 are adjacent
 (dirty ?o - office) ; The office o is dirty
 (empty ?o - office) ; There is no box at office o
)

(:action clean
    :parameters (?o - office)
    :precondition (and (at R ?o) ; The robot is at office o
                       (dirty ?o) ; The office o is dirty
                    )
    :effect (and (not (dirty ?o)) ; The office o is not dirty anymore
            )
)

(:action move
    :parameters (?o1 ?o2 - office)
    :precondition (and (adj ?o1 ?o2) ; Both offices are adjacent
                        (at R ?o1) ; The robot is at office o1
                   )
    :effect (and (not (at R ?o1)) ; The robot is not at office o1 anymore
                 (at R ?o2) ; The robot is now at office o2
            )
)

(:action push
    :parameters (?B - box ?o1 ?o2 - office)
    :precondition (and (at R ?o1) ; The robot is at office o1
                       (adj ?o1 ?o2) ; Both offices are adjacent
                       (at ?B ?o1) (empty ?o2) ; The box B is at o1 and o2 is empty
                   )
    :effect (and (at R ?o2) (not (at R ?o1)) ; Move the robot to o2
                 (at ?B ?o2) (not (at ?B ?o1)) ; Move the box to o2
                 (not (empty ?o2)) (empty ?o1) ; o2 is not empty anymore and o1 is empty
            )
)



;define actions here

)