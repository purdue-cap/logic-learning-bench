(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/60) — gt=and(not(endwith(<spec>)),repeatrange(<any>,3,25))")
(set-info :description "I want to write a regular expression using jQuery to validate input fields which will not allow special char at end and the string length should be in between 3 - 25")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00446 0 (size (Pos w00446)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00380 0 (size (Pos w00380)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00705 0 (size (Pos w00705)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00448 0 (size (Pos w00448))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00072 0 (size (Pos w00072))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00201 0 (size (Pos w00201))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00708 0 (size (Pos w00708))))))

(check-synth)
