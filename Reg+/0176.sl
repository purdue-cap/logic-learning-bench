(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/183) — gt=concat(<cap>,contain(or(or(<m0>,<num>),<m1>)))")
(set-info :description "lines with a capital letter either the string '!' , a number , or the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00162 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00179 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00190 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00442 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00460 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01036 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00436 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00172 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
