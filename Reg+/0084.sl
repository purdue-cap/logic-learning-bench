(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/86) — gt=concat(<low>,contain(and(<vow>,<any>)))")
(set-info :description "lines with a lower-case letter before vowel and character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00524 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00514 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00513 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00760 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00794 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00581 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00797 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00172 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00450 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00186 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00206 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00207 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00213 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
