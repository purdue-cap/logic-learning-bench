(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/112) — gt=concat(<let>,repeatatleast(or(< >,<alphanum>),1))")
(set-info :description "Starting with alphabet word and then followed by any alphabet or number")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00698 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00592 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00415 head tail))))

(check-synth)
