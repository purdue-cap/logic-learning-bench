(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/94) — gt=or(<0>,concat(<num1-9>,concat(repeatrange(<num>,0,2),or(repeatatleast(repeat(<num>,3),1),repeatatleast(concat(<,>,repeat(<num>,3)),1)))))")
(set-info :description "I'm trying to write a regular expression to validate a number that is either just a 0 OR at least 1000 and that also allows a comma for a thousand separator.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00006 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00193 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00301 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00269 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00361 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00545 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00033 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00175 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00132 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00337 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00496 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
