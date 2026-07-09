(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/120) — gt=not(contain(concat(concat(<h>,<e>),concat(<d>,<e>))))")
(set-info :description "Is it possible to match lines that do not contain a specific word, e.g. ''hede'', using regular expression?")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0316_01 0 (size (Pos w0316_01)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0316_02 0 (size (Pos w0316_02)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0316_03 0 (size (Pos w0316_03)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0316_04 0 (size (Pos w0316_04))))))

(check-synth)
