(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/120) — gt=not(contain(concat(concat(<h>,<e>),concat(<d>,<e>))))")
(set-info :description "Is it possible to match lines that do not contain a specific word, e.g. ''hede'', using regular expression?")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (with-model w0316_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0316_02 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0316_03 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0316_04 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
