(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/102) — gt=concat(or(<A>,or(<B>,or(<C>,<Z>))),repeatrange(or(<let>,<num>),1,2))")
(set-info :description "I have one field that is meant to allow a 1 - 3 character string. The first character has got to be 'A', 'B', 'C' or 'Z' and may optionally be followed by up to 2 characters.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00015 0 (size (Pos w00015)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00066 0 (size (Pos w00066)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00064 0 (size (Pos w00064)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00068 0 (size (Pos w00068))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00134 0 (size (Pos w00134))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00133 0 (size (Pos w00133))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00130 0 (size (Pos w00130))))))

(check-synth)
