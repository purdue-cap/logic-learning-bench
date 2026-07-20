(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/172) — gt=concat(star(<m0>),contain(contain(<vow>)))")
(set-info :description "lines with zero or more of the string '!' before a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00320 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00074 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00633 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00638 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00996 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00830 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00012 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00080 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
