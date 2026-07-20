(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/106) — gt=concat(repeatrange(or(<A>,or(<C>,or(<G>,or(<T>,<N>)))),1,64),<num>)")
(set-info :description "R1: The string alphabet is limited to ''A'', ''T'', ''C'',''G'', ''N'' and its length must be at least 1 and at most 64 long")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00679 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00706 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00585 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00440 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00474 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00720 head tail))))

(check-synth)
