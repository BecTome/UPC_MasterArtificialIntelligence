;Header and description

(define (domain waiter-robot)

    ;import needed requirements
    (:requirements :strips :negative-preconditions :typing)

    ;define types just for simplicity
    (:types
        robot - physic
        customer - physic
        kitchen - loc
        room - loc
    )

    (:constants
        R - robot; The robot
        C - customer ; The customer
        )

    (:predicates
        (at ?m - physic ?o - loc) ; The object m is at location o
        (adj ?o1 ?o2 - loc) ; The locations o1 and o2 are adjacent
        (served) ; The customer c has been served
        (hasfood); The robot r has food
    )

    (:action pick-up
        :parameters (?o - loc)
        :precondition (and (at R ?o) ; The robot is at kitchen
            (not (hasfood)) ; The robot has no food
        )
        :effect (and (hasfood)) ; The robot has food
    )

    (:action pick-up-move
        :parameters (?o1 - kitchen ?o2 - room)
        :precondition (and (at R ?o1) ; The robot is at kitchen
            (not (hasfood)) ; The robot has no food
            (adj ?o1 ?o2) ; The locations o1 and o2 are adjacent
        )
        :effect (and (hasfood) ; The robot has food
            (not (at R ?o1)) ; The robot is not at kitchen anymore
            (at R ?o2) ; The robot is now at room o2
        )
    )

    (:action move
        :parameters (?o1 ?o2 - loc)
        :precondition (and (adj ?o1 ?o2) ; Both rooms are adjacent
            (at R ?o1) ; The robot is at room o1
        )
        :effect (and (not (at R ?o1)) ; The robot is not at room o1 anymore
            (at R ?o2) ; The robot is now at room o2
        )
    )

    (:action serve
        :parameters (?o - loc)
        :precondition (and (at R ?o) ; The robot is at room o
            (at C ?o) ; The customer is at room o
            (not (served)) ; The customer has not been served yet
            (hasfood) ; The robot has food
        )
        :effect (and (not (hasfood)) ; The robot does not have a plate in its tray t anymore
            (served) ; The customer has been served
        )
    )

    (:action serve-move
        :parameters (?o1 ?o2 - loc)
        :precondition (and
            (hasfood) ; The robot has food
            (not (served)) ; The customer has not been served yet

            (adj ?o1 ?o2) ; Both rooms are adjacent
            (at R ?o1) ; The robot is at room o1
            (at C ?o1) ; The customer is at room o1
        )
        :effect (and (served) ; The customer is served
            (not (hasfood)) ; The robot does not have food anymore

            (not (at R ?o1)) ; The robot is not at room o1 anymore
            (at R ?o2) ; The robot is now at room o2
        )

    )
)