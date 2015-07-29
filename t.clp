(defrule flat-body-yes
	(live-in-soil yes)
	(flat-body yes)
	=>
	(printout t"Your animal is a flat-worm" crlf)
	(bind $?animal flat-worm)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule flat-body-no
	(live-in-soil yes)
	(flat-body no)
	=>
	(printout t"Your animal is a worm-leach" crlf)
	(bind $?animal worm-leach)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule tail-yes
	(live-in-soil no)
	(body-in-segments yes)
	(animal-have-shell yes)
	(animal-have-tail yes)
	=>
	(printout t"Your animal is a lobster"crlf)
	(bind $?animal lobster)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule tail-no
	(live-in-soil no)
	(body-in-segments yes)
	(animal-have-shell yes)
	(animal-have-tail no)
	=>
	(printout t"Your animal is a crab" crlf)
	(bind $?animal crab)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule shell-no
	(live-in-soil no)
	(body-in-segments yes)
	(animal-have-shell no)
	=>
	(printout t"Your animal is a cehtiped-millipede-insect" crlf)
	(bind $?animal cehtiped-millipede-insect)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule no-attached-to-object
	(live-in-soil no)
	(body-in-segments no)
	(many-cells yes)
	(animal-attached-to-object no)
	=>
	(printout t"Your animal is a jellyfish" crlf)
	(bind $?animal jellyfish)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule spike-yes
	(live-in-soil no)
	(body-in-segments no)
	(many-cells yes)
	(animal-attached-to-object yes)
	(have-spike yes)
	=>
	(printout t "Your animal is Sea-anemone" crlf)
	(bind $?animal sea-anemone)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule spike-no
	(live-in-soil no)
	(body-in-segments no)
	(many-cells yes)
	(animal-attached-to-object yes)
	(have-spike no)
	=>
	(printout t "Your animal is coral-sponge" crlf)
	(bind $?animal coral-sponge)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule one-cell-no
	(live-in-soil no)
	(body-in-segments no)
	(many-cells no)
	(one-cell no)
	=>
	(printout t "Your animal is Protozoa" crlf)
	(bind $?animal protozoa)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule spiral-shaped-shell-yes
	(live-in-soil no)
	(body-in-segments no)
	(many-cells no)
	(one-cell yes)
	(spiral-shaped-shell yes)
	=>
	(printout t "Your animal is a snail" crlf)
	(bind $?animal snail)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule two-shell-yes
	(live-in-soil no)
	(body-in-segments no)
	(many-cells no)
	(one-cell yes)
	(spiral-shaped-shell no)
	(two-half-shells yes)
	=>
	(printout t "Your animal is a clam-oyster" crlf)
	(bind $?animal clam-oyster)
	(assert(animal-is $?animal))
)
;;;======================================================
(defrule two-shell-no
	(live-in-soil no)
	(body-in-segments no)
	(many-cells no)
	(one-cell yes)
	(spiral-shaped-shell no)
	(two-half-shells no)
	=>
	(printout t "Your animal is a squid-octopus" crlf)
	(bind $?animal squid-octopus)
	(assert(animal-is $?animal))
)
;;;======================================================



(defrule explanation
	(why)
	=>
	(printout t "==============================" crlf)
	(retract 0)
	(retract 1)
	(facts)
	(printout t "==============================" crlf)
)