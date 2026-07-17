(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/199) — gt=repeatatleast(or(<m0>,<m1>),4)")
(set-info :description "lines with words with string '!' or string '@' , 4 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00609 0 (size (Pos w00609)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00694 0 (size (Pos w00694)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00630 0 (size (Pos w00630)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00615 0 (size (Pos w00615)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00825 0 (size (Pos w00825)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00895 0 (size (Pos w00895)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01029 0 (size (Pos w01029)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00335 0 (size (Pos w00335))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
