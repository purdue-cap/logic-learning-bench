(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/110) — gt=startwith(<{>)")
(set-info :description "I want to find all strings starting with ''{'' but NOT with '''\\{''. I have only five words as input.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00326 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00325 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00398 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00553 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00377 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
