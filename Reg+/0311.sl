(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/115) — gt=concat(concat(<a>,concat(<b>,<c>)),concat(<.>,repeatatleast(<let>,1)))")
(set-info :description "I only want the first one, which contains only one ''.'' and starts with ''abc''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00447 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00589 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00653 head tail))))

(check-synth)
