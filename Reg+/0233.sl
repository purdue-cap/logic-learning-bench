(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/35) — gt=concat(optional(<*>),concat(repeatatleast(<let>,2),optional(<*>)))")
(set-info :description "R1: ''*'' or nothing")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00142 0 (size (Pos w00142)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00084 0 (size (Pos w00084)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00158 0 (size (Pos w00158)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00083 0 (size (Pos w00083))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00157 0 (size (Pos w00157))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00251 0 (size (Pos w00251))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00245 0 (size (Pos w00245))))))

(check-synth)
