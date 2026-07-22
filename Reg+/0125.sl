(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/131) — gt=or(or(<m0>,<low>),<let>)")
(set-info :description "lines with words that include a letter , the string '!' , or a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00041 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00024 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00056 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00050 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00172 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00258 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00013 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
