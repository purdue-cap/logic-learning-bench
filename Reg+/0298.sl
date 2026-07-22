(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/102) — gt=concat(or(<A>,or(<B>,or(<C>,<Z>))),repeatrange(or(<let>,<num>),1,2))")
(set-info :description "I have one field that is meant to allow a 1 - 3 character string. The first character has got to be 'A', 'B', 'C' or 'Z' and may optionally be followed by up to 2 characters.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00015 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00066 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00064 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00068 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00134 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00133 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00130 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
