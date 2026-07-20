(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/60) — gt=and(not(endwith(<spec>)),repeatrange(<any>,3,25))")
(set-info :description "I want to write a regular expression using jQuery to validate input fields which will not allow special char at end and the string length should be in between 3 - 25")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00446 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00380 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00705 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00448 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00072 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00201 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00708 head tail))))

(check-synth)
