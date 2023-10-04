(define (problem pb1)
    (:domain blocksworld)
    (:objects
        a b c d
    )
    (:init
        (on-table a)
        (on-table b)
        (on-table c)
        (clear a)
        (clear b)
        (clear d)
        (on d c)
        (arm-empty)
    )
    (:goal
        (and (on-table c) (on-table d) (on a b) (on b d) )
    )
)