(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/1) — gt=concat(<cap>,contain(or(or(<any>,<low>),<m0>)))")
(set-info :description "items with an upper case letter preceding either '!' , a small letter , or a character .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00162 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00172 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00164 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00176 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00187 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00177 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00202 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00017 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
