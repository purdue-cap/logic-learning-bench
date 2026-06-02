(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/96) — gt=or(or(<A>,<B>),or(<a>,<b>))")
(set-info :description "I want a regular expression that validates a string of length 1 which has either the characters 'A' or 'B' (case insensitive) at the Begin")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00014 0 (size (Pos w00014)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00015 0 (size (Pos w00015)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00441 0 (size (Pos w00441))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00067 0 (size (Pos w00067))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00379 0 (size (Pos w00379))))))

(check-synth)
