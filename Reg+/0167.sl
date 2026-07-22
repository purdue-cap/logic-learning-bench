(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/174) — gt=contain(or(or(<m0>,<let>),<num>))")
(set-info :description "lines with the string '!' , a letter , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00116 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00327 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00430 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00435 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00378 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00656 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00090 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
