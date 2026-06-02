(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/120) — gt=not(contain(concat(concat(<h>,<e>),concat(<d>,<e>))))")
(set-info :description "Is it possible to match lines that do not contain a specific word, e.g. ''hede'', using regular expression?")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00244 0 (size (Pos w00244)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00243 0 (size (Pos w00243)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00241 0 (size (Pos w00241)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00242 0 (size (Pos w00242))))))

(check-synth)
