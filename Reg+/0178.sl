(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/185) — gt=contain(or(or(<m0>,<m1>),<num>))")
(set-info :description "lines containing the string '!' , '@' , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00073 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00069 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00432 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00512 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00021 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
