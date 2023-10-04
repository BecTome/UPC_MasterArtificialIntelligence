;Header and description

(define (domain p8)

    ;remove requirements that are not needed
    (:requirements :strips :equality)
    ; un-comment following line if constants are needed
    ;(:constants )

    (:predicates ;todo: define predicates here
        (tiles ?t)
        (position ?p)
        (inc ?p1 ?p2)
        (dec ?p1 ?p2)
        (blank ?p1 ?p2)
        (at ?t ?p1 ?p2)
    )

    (:action move-up
        :parameters (?t ?x ?y ?y1)
        :precondition (and (tiles ?t) (position ?x) (position ?y) (at ?t ?x ?y) 
                            (inc ?y ?y1) (position ?y1)  (blank ?x ?y1))
        :effect (and (at ?t ?x ?y1) (blank ?x ?y) (not (at ?t ?x ?y)) (not (blank ?x ?y1)))
    )
    (:action move-down
        :parameters (?t ?x ?y ?y1)
        :precondition (and (tiles ?t) (position ?x) (position ?y) (at ?t ?x ?y) 
                            (dec ?y ?y1) (position ?y1)  (blank ?x ?y1))
        :effect (and (at ?t ?x ?y1) (blank ?x ?y) (not (at ?t ?x ?y)) (not (blank ?x ?y1)))
    )
    (:action move-right
        :parameters (?t ?x ?y ?x1)
        :precondition (and (tiles ?t) (position ?x) (position ?y) (at ?t ?x ?y) 
                            (inc ?x ?x1) (position ?x1)  (blank ?x1 ?y))
        :effect (and (at ?t ?x1 ?y) (blank ?x ?y) (not (at ?t ?x ?y)) (not (blank ?x1 ?y)))
    )
    (:action move-left
        :parameters (?t ?x ?y ?x1)
        :precondition (and (tiles ?t) (position ?x) (position ?y) (at ?t ?x ?y) 
                            (dec ?x ?x1) (position ?x1)  (blank ?x1 ?y))
        :effect (and (at ?t ?x1 ?y) (blank ?x ?y) (not (at ?t ?x ?y)) (not (blank ?x1 ?y)))
    )

    ;define actions here

)