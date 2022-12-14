(define
    (problem pacman-level-1)
    (:domain pacman_simple)

;; problem map
;;  | 1 | 2 | 3 |
;; -|---|---|---|
;; a| P | G | F | 
;; b| _ | _ | _ | 
;;  |---|---|---| 

  



    (:objects 
    a1 a2 a3 b1 b2 b3 
	P G F
	)
	
	(:init 
	(at P a1)
	(at G a2)
	(at F a3)
	(connected a1 a2)
	(connected a1 b1)
	(connected a2 a1)
	(connected a2 a3)
	(connected a2 b2)
	(connected a3 a2)
	(connected a3 b3)
	(connected b1 a1)
	(connected b1 b2)
	(connected b2 b1)
	(connected b2 b3)
	(connected b2 a2)
	(connected b3 a3)
	(connected b3 b2)
	)

    (:goal
	  (eaten F a3)
	)
)