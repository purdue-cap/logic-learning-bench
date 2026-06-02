(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/81) — gt=concat(repeatatleast(<let>,1),optional(concat(< >,repeatatleast(<let>,1))))")
(set-info :description "It should allow only one space between words. That is, total number of spaces between words or characters should only be one.It should ignore leading and trailing spaces.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00477 0 (size (Pos w00477)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00617 0 (size (Pos w00617))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00519 0 (size (Pos w00519))))))

(check-synth)
