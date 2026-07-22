(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/26) — gt=concat(<cap>,contain(<num>))")
(set-info :description "lines containing a capital letter followed by a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00165 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00438 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00166 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00440 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01030 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01031 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00901 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00010 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00217 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00521 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00739 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01070 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
