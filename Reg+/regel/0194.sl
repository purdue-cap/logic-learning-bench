(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/202) — gt=concat(<any>,contain(contain(<low>)))")
(set-info :description "a character appears before containing a lower-case letter in the lines")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00736 0 (size (Pos w00736)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00731 0 (size (Pos w00731)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00080 0 (size (Pos w00080)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00993 0 (size (Pos w00993)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00062 0 (size (Pos w00062)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00224 0 (size (Pos w00224))))))

(check-synth)
