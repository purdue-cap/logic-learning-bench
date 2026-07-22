(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/96) — gt=or(or(<A>,<B>),or(<a>,<b>))")
(set-info :description "I want a regular expression that validates a string of length 1 which has either the characters 'A' or 'B' (case insensitive) at the Begin")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00014 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00015 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00441 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00067 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00379 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
