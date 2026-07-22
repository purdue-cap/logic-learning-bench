(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/112) — gt=concat(<let>,repeatatleast(or(< >,<alphanum>),1))")
(set-info :description "Starting with alphabet word and then followed by any alphabet or number")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00698 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00592 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00415 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
