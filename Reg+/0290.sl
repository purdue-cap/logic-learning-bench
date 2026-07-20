(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/94) — gt=or(<0>,concat(<num1-9>,concat(repeatrange(<num>,0,2),or(repeatatleast(repeat(<num>,3),1),repeatatleast(concat(<,>,repeat(<num>,3)),1)))))")
(set-info :description "I'm trying to write a regular expression to validate a number that is either just a 0 OR at least 1000 and that also allows a comma for a thousand separator.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00006 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00193 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00301 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00269 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00361 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00545 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00033 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00175 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00132 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00337 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00496 head tail))))

(check-synth)
