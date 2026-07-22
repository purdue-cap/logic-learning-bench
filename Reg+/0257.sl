(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/60) — gt=and(not(endwith(<spec>)),repeatrange(<any>,3,25))")
(set-info :description "I want to write a regular expression using jQuery to validate input fields which will not allow special char at end and the string length should be in between 3 - 25")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00446 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00380 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00705 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00448 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00072 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00201 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00708 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
