(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/172) — gt=concat(star(<m0>),contain(contain(<vow>)))")
(set-info :description "lines with zero or more of the string '!' before a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00320 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00074 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00633 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00638 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00996 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00830 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00012 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00080 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
