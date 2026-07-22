(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/126) — gt=contain(concat(<g>,<e>))")
(set-info :description "check if that string contains any ''g'' followed by one or more ''e'' ’s in it, otherwise, print No match")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00667 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00576 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
