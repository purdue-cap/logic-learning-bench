(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/81) — gt=concat(repeatatleast(<let>,1),optional(concat(< >,repeatatleast(<let>,1))))")
(set-info :description "It should allow only one space between words. That is, total number of spaces between words or characters should only be one.It should ignore leading and trailing spaces.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00230 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00477 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00617 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00519 head tail))))

(check-synth)
