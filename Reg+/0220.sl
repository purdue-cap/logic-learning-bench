(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/20) — gt=concat(<0>,optional(concat(<.>,repeatrange(<num>,1,2))))")
(set-info :description "How can i write valid regular expression for Oracle's Number(2,2), Also digits after decimal should be either, '1' or '2' but not more than '2', also it can be optional. The number should never start with [1-9] but can start with '0'.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (with-model w0220_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0220_02 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0220_03 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0220_04 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0220_05 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0220_06 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0220_07 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0220_08 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0220_09 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
