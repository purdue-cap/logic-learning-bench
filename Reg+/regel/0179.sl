(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/187) — gt=or(concat(<vow>,contain(<m0>)),startwith(<m1>))")
(set-info :description "lines with vowel before string '!' or starting with string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00151 0 (size (Pos w00151)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00154 0 (size (Pos w00154)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00562 0 (size (Pos w00562)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00561 0 (size (Pos w00561)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00896 0 (size (Pos w00896)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00219 0 (size (Pos w00219))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230))))))

(check-synth)
