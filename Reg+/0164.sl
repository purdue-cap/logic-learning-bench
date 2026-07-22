(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/171) — gt=startwith(or(<let>,<low>))")
(set-info :description "lines starting with a letter or a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00021 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00218 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00180 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00530 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00009 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
