(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/20) — gt=concat(<0>,optional(concat(<.>,repeatrange(<num>,1,2))))")
(set-info :description "How can i write valid regular expression for Oracle's Number(2,2), Also digits after decimal should be either, '1' or '2' but not more than '2', also it can be optional. The number should never start with [1-9] but can start with '0'.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0220_01 0 (size (Pos w0220_01)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0220_02 0 (size (Pos w0220_02)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0220_03 0 (size (Pos w0220_03)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0220_04 0 (size (Pos w0220_04)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0220_05 0 (size (Pos w0220_05))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0220_06 0 (size (Pos w0220_06))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0220_07 0 (size (Pos w0220_07))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0220_08 0 (size (Pos w0220_08))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0220_09 0 (size (Pos w0220_09))))))

(check-synth)
