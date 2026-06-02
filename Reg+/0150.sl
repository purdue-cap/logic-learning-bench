(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/157) — gt=concat(<m0>,contain(or(<any>,<cap>)))")
(set-info :description "lines with words with string '!' before character or capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00069 0 (size (Pos w00069)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00074 0 (size (Pos w00074)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00075 0 (size (Pos w00075)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00067 0 (size (Pos w00067)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00839 0 (size (Pos w00839)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))

(check-synth)
