(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/20) — gt=concat(<0>,optional(concat(<.>,repeatrange(<num>,1,2))))")
(set-info :description "How can i write valid regular expression for Oracle's Number(2,2), Also digits after decimal should be either, '1' or '2' but not more than '2', also it can be optional. The number should never start with [1-9] but can start with '0'.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00006 0 (size (Pos w00006)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00168 0 (size (Pos w00168)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00170 0 (size (Pos w00170)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00171 0 (size (Pos w00171)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00032 0 (size (Pos w00032))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00183 0 (size (Pos w00183))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00213 0 (size (Pos w00213))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00261 0 (size (Pos w00261))))))

(check-synth)
