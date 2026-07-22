(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/81) — gt=concat(repeatatleast(<let>,1),optional(concat(< >,repeatatleast(<let>,1))))")
(set-info :description "It should allow only one space between words. That is, total number of spaces between words or characters should only be one.It should ignore leading and trailing spaces.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00477 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00617 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00519 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
