(define (problem prob)
    (:domain blocksworld)
    (:objects
        a b c d e f g h
    )
    (:init
        (clear a)
        (on-table b)
        (arm-empty)
        (on a h)
        (on h g)
        (on g f)
        (on f e)
        (on e d)
        (on d c)
        (on c b)
      
    )
    (:goal
        (and  (on-table a) (on h g) (on g f)
            (on f e) (on e d) (on d c)
            (on c b) (on b a) )
    )
)