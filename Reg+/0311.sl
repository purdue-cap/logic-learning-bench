(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/115) — gt=concat(concat(<a>,concat(<b>,<c>)),concat(<.>,repeatatleast(<let>,1)))")
(set-info :description "I only want the first one, which contains only one ''.'' and starts with ''abc''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00447 0 (size (Pos w00447)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00589 0 (size (Pos w00589))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00653 0 (size (Pos w00653))))))

(check-synth)
