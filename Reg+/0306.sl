(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/110) — gt=startwith(<{>)")
(set-info :description "I want to find all strings starting with ''{'' but NOT with '''\\{''. I have only five words as input.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00326 0 (size (Pos w00326)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00325 0 (size (Pos w00325)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00398 0 (size (Pos w00398)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00553 0 (size (Pos w00553))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00377 0 (size (Pos w00377))))))

(check-synth)
