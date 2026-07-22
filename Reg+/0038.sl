(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/38) — gt=concat(<low>,contain(contain(<let>)))")
(set-info :description "lines that have a letter and then a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00247 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00254 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00259 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00268 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00274 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00310 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00172 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00169 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00191 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00194 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00199 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00072 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
