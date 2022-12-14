(define
    (domain pacman_simple)
    (:requirements :strips :typing :equality :adl)

    (:types
    )

    (:predicates
        (move ?placeFrom ?placeTo)
        (at ?what ?place)
        (connected ?p1 ?p2)
        (eaten ?what ?p1)
    )


    (:action move
        :parameters (?p1 ?p2)
        :precondition (and 
            (at P ?p1)
            (connected ?p1 ?p2)
            (not(at G ?p2)))
        :effect (and 
            (not(at P ?p1))
            (at P ?p2)
            (when (at F ?p2) (and (not (at F ?p2))(eaten F ?p2)))
        )
    )
)
