(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/19) — gt=or(<m0>,<vow>)")
(set-info :description "lines with words with string '!' or vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00023 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00041 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00044 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00048 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00009 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00232 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
