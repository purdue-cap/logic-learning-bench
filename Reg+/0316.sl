(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/120) — gt=not(contain(concat(concat(<h>,<e>),concat(<d>,<e>))))")
(set-info :description "Is it possible to match lines that do not contain a specific word, e.g. ''hede'', using regular expression?")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0316_01 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0316_02 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0316_03 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0316_04 head tail))))

(check-synth)
