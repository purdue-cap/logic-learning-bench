(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/35) — gt=concat(optional(<*>),concat(repeatatleast(<let>,2),optional(<*>)))")
(set-info :description "R1: ''*'' or nothing")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00142 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00084 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00158 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00083 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00157 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00251 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00245 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
