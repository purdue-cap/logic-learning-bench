(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/24) — gt=or(contain(<any>),concat(<m0>,contain(<m1>)))")
(set-info :description "lines with characters or the string '!' followed by the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00073 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00223 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00528 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00393 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00449 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00910 (RegLan.Sem r (RegLan.Asp head tail))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
