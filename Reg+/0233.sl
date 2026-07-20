(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/35) — gt=concat(optional(<*>),concat(repeatatleast(<let>,2),optional(<*>)))")
(set-info :description "R1: ''*'' or nothing")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00142 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00084 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00158 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00083 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00157 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00251 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00245 head tail))))

(check-synth)
