(defrule main-backbone
(initial-fact)
=>
(printout t"Does your animal have a backbone ?(yes/no) ")
(assert(why))
(assert(backbone(read))))

;;;======================================================
(defrule non-backbone
(backbone no)
=>
(printout t"Does your animal live primarily in soil ?(yes/no) ")
(assert(live-in-soil(read))))

;;;======================================================
(defrule soil-yes
(live-in-soil yes)
=>
(printout t "Does your animal have a flat body? (yes/no) ")
(assert(flat-body(read))))
;;;====================================================== the flat-body is a crucial param, once you get to this point, the animal is identified
(defrule flat-body-yes
(flat-body yes)
=>
(printout t"Your animal is a flat-worm" crlf)
(bind $?animal flat-worm)
(assert(animal-is $?animal)))
;;;====================================================== the flat-body is a crucial param, once you get to this point, the animal is identified
(defrule flat-body-no
(flat-body no)
=>
(printout t"Your animal is a worm/leach" crlf)
(bind $?animal worm leach)
(assert(animal-is $?animal)))
;;;======================================================
(defrule soil-no
(live-in-soil no)
=>
(printout t "Is the animals body in segments? (yes/no)")
(assert(body-in-segments(read))))
;;;======================================================
(defrule body-segments-yes
(body-in-segments yes)
=>
(printout t"Does your animal have a shell? (yes/no)")
(assert(animal-have-shell(read))))
;;;======================================================
(defrule shell-yes
(animal-have-shell yes)
=>
(printout t"Does you animal have a tail? (yes/no)")
(assert(animal-have-tail(read))))
;;;====================================================== the have-tail is a crucial param, once you get to this point, the animal is identified
(defrule tail-yes
(animal-have-tail yes)
=>
(printout t"Your animal is a lobster"crlf)
(bind $?animal lobster)
(assert(animal-is $?animal)))
;;;====================================================== the have-tail is a crucial param, once you get to this point, the animal is identified
(defrule tail-no
(animal-have-tail no)
=>
(printout t"Your animal is a crab" crlf)
(bind $?animal crab)
(assert(animal-is $?animal)))
;;;======================================================
(defrule shell-no
(animal-have-shell no)
=>
(printout t"Your animal is a cehtiped/millipede/insect " crlf)
(bind $?animal cehtiped millipede insect)
(assert(animal-is $?animal)))
;;;======================================================
(defrule body-segments-no
(body-in-segments no)
=>
(printout t"Does your animal use many cells to digest its food insted of a stomach?(yes/no)")
(assert(many-cells(read))))
;;;======================================================
(defrule many-cells-to-digest-yes
(many-cells yes)
=>
(printout t"Is your animal attached permanently to an object? (yes/no)")
(assert(animal-attached-to-object(read))))
;;;======================================================
(defrule no-attached-to-object
(animal-attached-to-object no)
=>
(printout t"Your animal is a jellyfish " crlf)
(bind $?animal jellyfish)
(assert(animal-is $?animal)))
;;;======================================================
(defrule yes-attachment-to-object
(animal-attached-to-object yes)
=>
(printout t"Does your animal normally have spikes radiating fromits body? (yes/no) ")
(assert(have-spike(read))))
;;;======================================================
(defrule spike-yes
(have-spike yes)
=>
(printout t "Your animal is Sea-anemone " crlf)
(bind $?animal Sea-anemone)
(assert(animal-is $?animal)))
;;;======================================================
(defrule spike-no
(have-spike no)
=>
(printout t "Your animal is coral/sponge " crlf)
(bind $?animal coral sponge)
(assert(animal-is $?animal)))
;;;======================================================
(defrule many-cells-to-digest-no
(many-cells no)
=>
(printout t"Is your animal made up of arethan one cell? (yes/no) ")
(assert(one-cell(read))))
;;;======================================================
(defrule one-cell-no
(one-cell no)
=>
(printout t "Your animal is Protozoa " crlf)
(bind $?animal Protozoa)
(assert(animal-is $?animal)))
;;;======================================================
(defrule one-cell-yes
(one-cell yes)
=>
(printout t "Does your animal have a shaped-shell? (yes/no) " crlf)
(assert(spiral-shaped-shell(read))))
;;;======================================================
(defrule spiral-shaped-shell-yes
(spiral-shaped-shell yes)
=>
(printout t "Your animal is a snail " crlf)
(bind $?animal snail)
(assert(animal-is $?animal)))
;;;======================================================
(defrule spiral-shaped-shell-no
(spiral-shaped-shell no)
=>
(printout t "Is your animal protected by two half-shells? (yes/no) " crlf)
(assert(two-half-shells(read))))
;;;======================================================
(defrule two-shell-yes
(two-half-shells yes)
=>
(printout t "Your animal is a clam/oyster " crlf)
(bind $?animal clam oyster)
(assert(animal-is $?animal)))

(defrule two-shell-no
(two-half-shells no)
=>
(printout t "Your animal is a squid/octopus " crlf)
(bind $?animal squid octopus)
(assert(animal-is $?animal)))

;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************
;;;======================================================
(defrule yes-backbone
(backbone yes)
=>
(printout t"Is the animal warm blooded ?(yes/no) ")
(assert(warm-blooded(read))))
;;;======================================================
(defrule warm-blooded-no
(warm-blooded no)
=>
(printout t"IS your animal always in water? (yes/no) ")
(assert(animal-in-water(read))))

(defrule animal-always-in-water-yes
(animal-in-water yes)
=>
(printout t "Does your animal have a boney skeketon? (yes/no) ")
(assert(boney-skeketon(read))))

(defrule boney-skeketon-yes
(boney-skeketon yes)
=>
(printout t "Your animal is a fish " crlf)
(bind $?animal fish)
(assert(animal-is $?animal)))

(defrule boney-skeketon-no
(boney-skeketon no)
=>
(printout t "Your animal is a shark/ray " crlf)
(bind $?animal shark ray)
(assert(animal-is $?animal)))

(defrule animal-always-in-water-no
(animal-in-water no)
=>
(printout t "Is your animal covered with scaled skin? (yes/no) ")
(assert(scaled-skin(read))))

(defrule scaled-skin-no
(scaled-skin no)
=>
(printout t"Does your animal jump? (yes/no) ")
(assert(animal-jump(read))))

(defrule jump-yes
(animal-jump yes)
=>
(printout t "Your animal is a frog " crlf)
(bind $?animal frog)
(assert(animal-is $?animal)))

(defrule jump-no
(animal-jump no)
=>
(printout t "Your animal is a salamander " crlf)
(bind $?animal salamander)
(assert(animal-is $?animal)))

(defrule scaled-skin-yes
(scaled-skin yes)
=>
(printout t"Does the animal have a rounded shell? (yes/no) ")
(assert(rounded-shell(read))))

(defrule rounded-shell-yes
(rounded-shell yes)
=>
(printout t "Your animal is a trurtle " crlf)
(bind $?animal trurtle)
(assert(animal-is $?animal)))

(defrule rounded-shell-no
(rounded-shell no)
=>
(printout t "Does your animal have limbs? (yes/no) " crlf)
(assert(have-limbs(read))))

(defrule limbs-yes
(have-limbs yes)
=>
(printout t "Your animal is a crocodile/alligator " crlf)
(bind $?animal crocodile alligator)
(assert(animal-is $?animal)))

(defrule limbs-no
(have-limbs no)
=>
(printout t "Your animal is a snake " crlf)
(bind $?animal snake)
(assert(animal-is $?animal)))

(defrule warm-blooded-yes
(warm-blooded yes)
=>
(printout t"Does the female of your animal nurse its young with milk? (yes/no) ")
(assert(drink-milk(read))))

(defrule bird
(drink-milk no)
=>
(printout t "Your animal is a bird/penguin " crlf)
(bind $?animal bird penguin)
(assert(animal-is $?animal)))

(defrule drink-milk-yes
(drink-milk yes)
=>
(printout t "Does your animal eat red meat? (yes/no) ")
(assert(eat-red-meat(read))))

(defrule eat-red-meat-yes
(eat-red-meat yes)
=>
(printout t "Can your animal fly? (yes/no)")
(assert(animal-fly(read))))

(defrule fly-yes
(animal-fly yes)
=>
(printout t "Your animal is a bat " crlf)
(bind $?animal bat)
(assert(animal-is $?animal)))

(defrule fly-no
(animal-fly no)
=>
(printout t "Does Your animal have an opposing thumb? (yes/no) " )
(assert(oppesing-thumb(read))))

(defrule oppesing-thumb-yes
(oppesing-thumb yes)
=>
(printout t "Does your animal have a prehensile tail? (yes/no)" )
(assert(prehensile-tail(read))))

(defrule prehensile-tail-yes
(prehensile-tail yes)
=>
(printout t "Your animal is monkey" crlf)
(bind $?animal monkey)
(assert(animal-is $?animal)))

(defrule prehensile-tail-no
(prehensile-tail no)
=>
(printout t "Is Your animal nearly hairless? (yes/no) " )
(assert(hairless(read))))

(defrule hairless-yes
(hairless yes)
=>
(printout t "Your animal is man" crlf)
(bind $?animal man)
(assert(animal-is $?animal)))

(defrule hairless-no
(hairless no)
=>
(printout t "Does your animal have long powerfull arms? (yes/no) " )
(assert(have-long-arms(read))))

(defrule arms-yes
(have-long-arms yes)
=>
(printout t "Your animal is orangutan/gorilla/chimpanzie " crlf)
(bind $?animal orangutan gorilla chimpanzie)
(assert(animal-is $?animal)))

(defrule arms-no
(have-long-arms no)
=>
(printout t "Your animal is babon " crlf)
(bind $?animal babon)
(assert(animal-is $?animal)))

(defrule oppesing-thumb-no
(oppesing-thumb no)
=>
(printout t "Does an adult normally weight over 400 pounds? (yes/no)" )
(assert(weight-over400(read))))

(defrule weight-over400-yes
(weight-over400 yes)
=>
(printout t "Is your animal land based? (yes/no) ")
(assert(land-based(read))))

(defrule land-based-yes
(land-based yes)
=>
(printout t "Your animal is a bear/tiger/lion" crlf)
(bind $?animal bear tiger lion)
(assert(animal-is $?animal)))

(defrule land-based-no
(land-based no)
=>
(printout t "Your animal is a walrus" crlf)
(bind $?animal walrus)
(assert(animal-is $?animal)))

(defrule weight-over400-no
(weight-over400 no)
=>
(printout t "Does your animal have a thin tail? (yes/no) ")
(assert(thin-tail(read))))

(defrule thin-tail-yes
(thin-tail yes)
=>
(printout t "Your animal is a Cat " crlf)
(bind $?animal Cat)
(assert(animal-is $?animal)))

(defrule thin-tail-no
(thin-tail no)
=>
(printout t "Your animal is a cayote/wolf/fox/dog " crlf)
(bind $?animal cayote wolf fox dog)
(assert(animal-is $?animal)))

(defrule eat-red-meat-no
(eat-red-meat no)
=>
(printout t "Does your animal have hooves? (yes/no)")
(assert(have-hooves(read))))

(defrule have-hooves-yes
(have-hooves yes)
=>
(printout t "Does your animal stand on two toes/hoves per foot? (yes/no) ")
(assert(two-toes(read))))

(defrule two-toes-no
(two-toes no)
=>
(printout t "Is your animal covered with a protective plating? (yes/no) ")
(assert(protective-plating(read))))

(defrule protective-plating-yes
(protective-plating yes)
=>
(printout t "Your animal is a rhinoceros " crlf)
(bind $?animal rhinoceros)
(assert(animal-is $?animal)))

(defrule protective-plating-no
(protective-plating no)
=>
(printout t "Your animal is a horse/zebra " crlf)
(bind $?animal horse zebra)
(assert(animal-is $?animal)))

(defrule two-toes-yes
(two-toes yes)
=>
(printout t "Does your animal have horns? (yes/no) ")
(assert(have-horns(read))))

(defrule horns-no
(have-horns no)
=>
(printout t "Does your animal normally live in the desert? (yes/no) ")
(assert(live-in-desert(read))))

(defrule desert-yes
(live-in-desert yes)
=>
(printout t "Your animal is a camel " crlf)
(bind $?animal camel)
(assert(animal-is $?animal)))

(defrule desert-no
(live-in-desert no)
=>
(printout t "Your animal is a giraffe " crlf)
(bind $?animal giraffe)
(assert(animal-is $?animal)))

(defrule horns-yes
(have-horns yes)
=>
(printout t "Does your animal have one horn? (yes/no) ")
(assert(one-in-horn(read))))

(defrule one-horn-yes
(one-in-horn yes)
=>
(printout t "Your animal is a hippopotamus " crlf)
(bind $?animal hippopotamus)
(assert(animal-is $?animal)))

(defrule one-horn-no
(one-in-horn no)
=>
(printout t "Does your animal have fleece? (yes/no) " )
(assert(have-fleece(read))))

(defrule fleece-yes
(have-fleece yes)
=>
(printout t "Your animal is a sheep/goat " crlf)
(bind $?animal sheep goat)
(assert(animal-is $?animal)))

(defrule fleece-no
(have-fleece no)
=>
(printout t "Is your animal domesticated ? (yes/no) ")
(assert(domesticated(read))))

(defrule domesticated-yes
(domesticated yes)
=>
(printout t "Your animal is a cow " crlf)
(bind $?animal cow)
(assert(animal-is $?animal)))

(defrule domesticated-no
(domesticated no)
=>
(printout t "Your animal is a deer/moose/antelope " crlf)
(bind $?animal deer moose antelope)
(assert(animal-is $?animal)))

(defrule have-hooves-no
(have-hooves no)
=>
(printout t "Does your animal live in water? (yes/no) ")
(assert(live-in-water(read))))

(defrule live-in-water-yes
(live-in-water yes)
=>
(printout t "Is your animal unfortunately, commercically hunted ? (yes/no) ")
(assert(commercically-hunted(read))))

(defrule hunted-yes
(commercically-hunted yes)
=>
(printout t "Your animal is a whale " crlf)
(bind $?animal whale)
(assert(animal-is $?animal)))

(defrule hunted-no
(commercically-hunted no)
=>
(printout t "Your animal is a dolphin/porpoise " crlf)
(bind $?animal dolphin porpoise)
(assert(animal-is $?animal)))

(defrule live-in-water-no
(live-in-water no)
=>
(printout t "Does your animal large front teeth ? (yes/no) ")
(assert(large-front-teeth(read))))

(defrule front-teeth-yes
(large-front-teeth yes)
=>
(printout t "Does your animal have large ears? (yes/no) ")
(assert(large-ears(read))))

(defrule large-ears-yes
(large-ears yes)
=>
(printout t "Your animal is a rabbit " crlf)
(bind $?animal rabbit)
(assert(animal-is $?animal)))

(defrule large-ears-no
(large-ears no)
=>
(printout t "Your animal is unknown " crlf))

(defrule front-teeth-no
(large-front-teeth no)
=>
(printout t "Does your animal have a pouch? (yes/no) ")
(assert(have-pouch(read))))

(defrule pouch-yes
(have-pouch yes)
=>
(printout t "Your animal is a kangaroo/koala bear " crlf)
(bind $?animal kangaroo koala-bear)
(assert(animal-is $?animal)))

(defrule pouch-no
(have-pouch no)
=>
(printout t "Your animal is a mole/shrew/elephant " crlf)
(bind $?animal mole shrew elephant)
(assert(animal-is $?animal)))



;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************
;;;======================================================
;;;******************************************************

(defrule explanation
(why)
=>
(printout t "==============================" crlf)
(retract 0)
(facts)
(printout t "==============================" crlf)
)



