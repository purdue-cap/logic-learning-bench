(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/126) — gt=contain(concat(<g>,<e>))")
(set-info :description "check if that string contains any ''g'' followed by one or more ''e'' ’s in it, otherwise, print No match")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00667 0 (size (Pos w00667)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00576 0 (size (Pos w00576))))))

(check-synth)
