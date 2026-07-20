(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/19) — gt=or(<m0>,<vow>)")
(set-info :description "lines with words with string '!' or vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00020 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00023 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00041 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00044 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00048 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00232 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
