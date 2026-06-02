(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/112) — gt=concat(<let>,repeatatleast(or(< >,<alphanum>),1))")
(set-info :description "Starting with alphabet word and then followed by any alphabet or number")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00698 0 (size (Pos w00698)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00592 0 (size (Pos w00592)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00415 0 (size (Pos w00415))))))

(check-synth)
