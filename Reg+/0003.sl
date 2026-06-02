(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/3) — gt=endwith(or(<any>,<vow>))")
(set-info :description "lines that end with a character or a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00120 0 (size (Pos w00120)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00894 0 (size (Pos w00894)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00103 0 (size (Pos w00103)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00152 0 (size (Pos w00152)))))

(check-synth)
