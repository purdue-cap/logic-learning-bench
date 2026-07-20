(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/194) — gt=concat(or(or(<m0>,<num>),<m1>),contain(<vow>))")
(set-info :description "lines with the string '!' or '@' or a number before a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00157 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00122 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00074 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00846 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00877 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00434 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
