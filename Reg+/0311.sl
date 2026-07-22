(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/115) — gt=concat(concat(<a>,concat(<b>,<c>)),concat(<.>,repeatatleast(<let>,1)))")
(set-info :description "I only want the first one, which contains only one ''.'' and starts with ''abc''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00447 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00589 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00653 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
