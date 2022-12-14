(define
    (domain pacman_mid)
    (:requirements :strips :typing :equality :adl)

    (:types
        
    )

    (:predicates
        (move ?placeFrom ?placeTo)
        (at ?what ?place)
        (connected ?placeFrom ?placeTo)
	    (powered ?what)
	    (eaten ?what ?place)
	    (killed ?what ?place)
    )


    (:action move
        :parameters (?p1 ?p2)
        :precondition (and 
            (at P ?p1)
            (connected ?p1 ?p2)
            (or (not (at G ?p2))
                 (powered P))
            )
        :effect (and 
            (not (at P ?p1))
            (at P ?p2)
            (when (at C ?p2) (and (not(at C ?p2)) (powered P)))
            (when (at G ?p2) (and (not(at G ?p2))(killed G ?p2)))
            (when (at F ?p2) (and (not (at F ?p2))(eaten F ?p2)))
        )
    )
)