(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/199) — gt=repeatatleast(or(<m0>,<m1>),4)")
(set-info :description "lines with words with string '!' or string '@' , 4 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00609 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00694 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00630 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00615 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00825 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00895 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01029 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00335 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
