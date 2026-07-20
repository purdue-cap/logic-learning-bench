(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/110) — gt=startwith(<{>)")
(set-info :description "I want to find all strings starting with ''{'' but NOT with '''\\{''. I have only five words as input.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00326 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00325 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00398 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00553 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00377 head tail))))

(check-synth)
