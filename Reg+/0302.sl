(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/106) — gt=concat(repeatrange(or(<A>,or(<C>,or(<G>,or(<T>,<N>)))),1,64),<num>)")
(set-info :description "R1: The string alphabet is limited to ''A'', ''T'', ''C'',''G'', ''N'' and its length must be at least 1 and at most 64 long")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00679 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00706 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00585 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00440 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00474 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00720 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
