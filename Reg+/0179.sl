(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/187) — gt=or(concat(<vow>,contain(<m0>)),startwith(<m1>))")
(set-info :description "lines with vowel before string '!' or starting with string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00019 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00151 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00154 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00562 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00561 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00896 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00219 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
