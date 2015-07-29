(deftemplate animal 
	(slot animal-is)(slot live-in-soil)
    (slot body-in-segments)(slot flat-body)
	(slot many-cells)
	(slot animal-have-shell)(slot one-cell)
	(slot animal-attached-to-object)
    (slot animal-have-tail)(slot spiral-shaped-shell)
	(slot have-spike)(slot two-half-shells)
)

(deffacts animals
   (animal (animal-is flat-worm)(live-in-soil yes)(flat-body yes))
   (animal (animal-is worm-leach)(live-in-soil yes)(flat-body no))
   (animal (animal-is cehtiped-millipede-insect)(live-in-soil no)(body-in-segments yes)(animal-have-shell no))
   (animal (animal-is protozoa)(live-in-soil no)(body-in-segments no)(many-cells no)(one-cell no))
   (animal (animal-is jellyfish)(live-in-soil no)(body-in-segments no)(many-cells yes)(animal-attached-to-object no))
   (animal (animal-is lobster)(live-in-soil no)(body-in-segments yes)(animal-have-shell yes)(animal-have-tail yes))
   (animal (animal-is crab)(live-in-soil no)(body-in-segments yes)(animal-have-shell yes)(animal-have-tail no))
   (animal (animal-is snail)(live-in-soil no)(body-in-segments no)(many-cells no)(one-cell yes)(spiral-shaped-shell yes))
   (animal (animal-is coral-sponge)(live-in-soil no)(body-in-segments no)(many-cells yes)(animal-attached-to-object yes)(have-spike no))
   (animal (animal-is sea-anemone)(live-in-soil no)(body-in-segments no)(many-cells yes)(animal-attached-to-object yes)(have-spike yes))
   (animal (animal-is squid-octopus)(live-in-soil no)(body-in-segments no)(many-cells no)(one-cell yes)(spiral-shaped-shell no)(two-half-shells no))
   (animal (animal-is clam-oyster)(live-in-soil no)(body-in-segments no)(many-cells no)(one-cell yes)(spiral-shaped-shell no)(two-half-shells yes))
)


(defrule flat-body-yes
	(animal
		(animal-is ?animal)
		(live-in-soil yes)
		(flat-body yes)
	)
	=>
	(printout t"Your animal is a " ?animal crlf)
)
;;;======================================================
(reset)
(run)
(facts)