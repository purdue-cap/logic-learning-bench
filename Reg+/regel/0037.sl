(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/37) — gt=contain(endwith(or(<let>,<num>)))")
(set-info :description "a letter or a numbre appears at the end of the lines")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00010 0 (size (Pos w00010)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00348 0 (size (Pos w00348)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00522 0 (size (Pos w00522)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00108 0 (size (Pos w00108)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00106 0 (size (Pos w00106)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00423 0 (size (Pos w00423)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00004 0 (size (Pos w00004))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00152 0 (size (Pos w00152))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00317 0 (size (Pos w00317))))))

(check-synth)
