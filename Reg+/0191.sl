(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/199) — gt=repeatatleast(or(<m0>,<m1>),4)")
(set-info :description "lines with words with string '!' or string '@' , 4 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00609 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00694 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00630 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00615 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00825 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00895 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01029 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00335 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
