(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/94) — gt=or(<0>,concat(<num1-9>,concat(repeatrange(<num>,0,2),or(repeatatleast(repeat(<num>,3),1),repeatatleast(concat(<,>,repeat(<num>,3)),1)))))")
(set-info :description "I'm trying to write a regular expression to validate a number that is either just a 0 OR at least 1000 and that also allows a comma for a thousand separator.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00006 0 (size (Pos w00006)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00193 0 (size (Pos w00193)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00301 0 (size (Pos w00301)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00269 0 (size (Pos w00269)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00361 0 (size (Pos w00361)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00545 0 (size (Pos w00545)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00033 0 (size (Pos w00033))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00175 0 (size (Pos w00175))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00132 0 (size (Pos w00132))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00337 0 (size (Pos w00337))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00496 0 (size (Pos w00496))))))

(check-synth)
