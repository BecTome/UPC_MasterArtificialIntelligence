(define (problem pb2)
    (:domain blocksworld)
    (:objects
        a b c d
    )
    (:init
        (on d c)
        (on-table a)
        (on-table b)
        (on-table c)
        (clear a)
        (clear b)
        (clear d)
        (arm-empty)
    )
    (:goal
        (and (on a b) (on b d) (on-table d) (on-table c))
    )
)