(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/96) — gt=or(or(<A>,<B>),or(<a>,<b>))")
(set-info :description "I want a regular expression that validates a string of length 1 which has either the characters 'A' or 'B' (case insensitive) at the Begin")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00014 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00015 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00020 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00441 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00067 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00379 head tail))))

(check-synth)
