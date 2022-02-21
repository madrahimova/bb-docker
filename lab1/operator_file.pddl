(define (domain PIZZA)
  
  (:requirements :strips)
  
  (:predicates 	(at ?x) 
		(light ?x)
		(switchlight ?x)
		(key ?x)
		(box ?x ?y)	       	
		(have ?x)
		(pizza ?x)
  )
  
  (:constants on off open close key)

  (:action move
	     :parameters (?x ?y)
	     :precondition (at ?x)
	     :effect (and (not (at ?x)) (at ?y))
  )

    (:action turnlight
	     :parameters (?x)
	     :precondition (and (at ?x) (switchlight ?x) (light off))
	     :effect (and (light on) (not(light off)))
  )

  (:action takekey
             :parameters (?x)
             :precondition (and (at ?x) (key ?x) (light on))
             :effect (have key)
  )

  (:action openbox
             :parameters (?x)
             :precondition (and (at ?x) (box ?x close) (have key))
             :effect (and(box open)(not(box close)))
  )

  (:action takepizza
             :parameters (?x)
             :precondition (and (at ?x) (box open) (pizza ?x))
             :effect (have pizza)

)
)