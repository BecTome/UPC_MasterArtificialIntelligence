;Header and description

(define (domain clean-robot)

;remove requirements that are not needed
(:requirements :strips :negative-preconditions)

; un-comment following line if constants are needed
;(:constants )

(:predicates
 (at ?o)
 (box-at ?o)
 (adj ?o1 ?o2)
 (dirty ?o)
)

(:action clean
    :parameters (?o)
    :precondition (and (at ?o) (dirty ?o))
    :effect (and (not (dirty ?o)))
)

(:action move
    :parameters (?o1 ?o2)
    :precondition (and (adj ?o1 ?o2) (at ?o1))
    :effect (and (not (at ?o1)) (at ?o2))
)

(:action push
    :parameters (?o1 ?o2)
    :precondition (and (not (box-at ?o2)) (box-at ?o1) 
                       (adj ?o1 ?o2) (at ?o1))
    :effect (and (box-at ?o2) (not (box-at ?o1)) 
                 (at ?o2) (not (at ?o1)))
)



;define actions here

)