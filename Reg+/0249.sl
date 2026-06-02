(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/51) — gt=concat(<num>,optional(concat(</>,<num>)))")
(set-info :description "I need to match only strings that include one character '/' between numbers or integer numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00107 0 (size (Pos w00107)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00518 0 (size (Pos w00518))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00529 0 (size (Pos w00529))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00292 0 (size (Pos w00292))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00089 0 (size (Pos w00089))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00190 0 (size (Pos w00190))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00273 0 (size (Pos w00273))))))

(check-synth)
