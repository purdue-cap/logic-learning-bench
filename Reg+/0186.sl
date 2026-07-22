(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/194) — gt=concat(or(or(<m0>,<num>),<m1>),contain(<vow>))")
(set-info :description "lines with the string '!' or '@' or a number before a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00157 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00122 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00074 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00846 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00877 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00434 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
