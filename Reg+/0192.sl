(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/200) — gt=repeatatleast(or(<low>,<any>),5)")
(set-info :description "lines with lower-case letter or character , 5 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00934 0 (size (Pos w00934)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00937 0 (size (Pos w00937)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00950 0 (size (Pos w00950)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00860 0 (size (Pos w00860)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00861 0 (size (Pos w00861)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00935 0 (size (Pos w00935)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01005 0 (size (Pos w01005)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00665 0 (size (Pos w00665))))))

(check-synth)
