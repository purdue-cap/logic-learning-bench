(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/187) — gt=or(concat(<vow>,contain(<m0>)),startwith(<m1>))")
(set-info :description "lines with vowel before string '!' or starting with string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00151 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00154 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00562 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00561 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00896 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00219 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
