;Header and description

(define (domain clean-robot)

;remove requirements that are not needed
(:requirements :strips :equality)

; un-comment following line if constants are needed
;(:constants )

(:predicates
 (position ?p)
 (at ?x ?y)
 (box-at ?x ?y)
 (inc ?x ?y)
 (dirty ?x ?y)
)

(:action clean
    :parameters (?x ?y)
    :precondition (and (at ?x ?y) (dirty ?x ?y) (position ?x) (position ?y))
    :effect (and (not (dirty ?x ?y)))
)

(:action move-right
    :parameters (?x ?y ?x1)
    :precondition (and (inc ?x ?x1) (at ?x ?y)  (position ?x) (position ?y) (position ?x1))
    :effect (and (not (at ?x ?y)) (at ?x1 ?y))
)

(:action move-left
    :parameters (?x ?y ?x1)
    :precondition (and (inc ?x1 ?x) (at ?x ?y)  (position ?x) (position ?y) (position ?x1))
    :effect (and (not (at ?x ?y)) (at ?x1 ?y))
)

(:action move-up
    :parameters (?x ?y ?y1)
    :precondition (and (inc ?y ?y1) (at ?x ?y) (position ?x) (position ?y) (position ?y1))
    :effect (and (not (at ?x ?y)) (at ?x ?y1))
)

(:action move-down
    :parameters (?x ?y ?y1)
    :precondition (and (inc ?y1 ?y) (at ?x ?y) (position ?x) (position ?y) (position ?y1))
    :effect (and (not (at ?x ?y)) (at ?x ?y1))
)

(:action push-right
    :parameters (?x ?y ?x1)
    :precondition (and (inc ?x ?x1) (box-at ?x ?y)  (position ?x) (position ?y) (position ?x1))
    :effect (and (not (box-at ?x ?y)) (box-at ?x1 ?y))
)

(:action push-left
    :parameters (?x ?y ?x1)
    :precondition (and (inc ?x1 ?x) (box-at ?x ?y)  (position ?x) (position ?y) (position ?x1))
    :effect (and (not (box-at ?x ?y)) (box-at ?x1 ?y))
)

(:action push-up
    :parameters (?x ?y ?y1)
    :precondition (and (inc ?y ?y1) (box-at ?x ?y) (position ?x) (position ?y) (position ?y1))
    :effect (and (not (box-at ?x ?y)) (box-at ?x ?y1))
)

(:action move-down
    :parameters (?x ?y ?y1)
    :precondition (and (inc ?y1 ?y) (box-at ?x ?y) (position ?x) (position ?y) (position ?y1))
    :effect (and (not (box-at ?x ?y)) (box-at ?x ?y1))
)


;define actions here

)