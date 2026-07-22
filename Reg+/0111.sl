(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/116) — gt=contain(or(or(<low>,<let>),<any>))")
(set-info :description "lines containing either lower-case letter , a letter , or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00046 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00028 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01233 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01057 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00134 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00347 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00090 (RegLan.Sem r (RegLan.Asp head tail))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
