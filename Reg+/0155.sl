(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/162) — gt=not(repeatatleast(<let>,1))")
(set-info :description "lines that don't only contain a letter , once or more")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00012 0 (size (Pos w00012)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00665 0 (size (Pos w00665)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00021 0 (size (Pos w00021))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00170 0 (size (Pos w00170))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00021 0 (size (Pos w00021))))))

(check-synth)
