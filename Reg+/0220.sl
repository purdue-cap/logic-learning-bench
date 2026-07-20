(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/20) — gt=concat(<0>,optional(concat(<.>,repeatrange(<num>,1,2))))")
(set-info :description "How can i write valid regular expression for Oracle's Number(2,2), Also digits after decimal should be either, '1' or '2' but not more than '2', also it can be optional. The number should never start with [1-9] but can start with '0'.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0220_01 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0220_02 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0220_03 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0220_04 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0220_05 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0220_06 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0220_07 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0220_08 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0220_09 head tail))))

(check-synth)
