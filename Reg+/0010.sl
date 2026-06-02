(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/10) — gt=contain(or(<low>,<any>))")
(set-info :description "lines with a lower case letter or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00009 0 (size (Pos w00009)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00506 0 (size (Pos w00506)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00500 0 (size (Pos w00500)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002)))))

(check-synth)
