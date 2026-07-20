(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/102) — gt=concat(or(<A>,or(<B>,or(<C>,<Z>))),repeatrange(or(<let>,<num>),1,2))")
(set-info :description "I have one field that is meant to allow a 1 - 3 character string. The first character has got to be 'A', 'B', 'C' or 'Z' and may optionally be followed by up to 2 characters.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00015 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00066 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00064 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00068 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00134 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00133 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00130 head tail))))

(check-synth)
