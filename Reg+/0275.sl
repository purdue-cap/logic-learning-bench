(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/79) — gt=not(contain(concat(<<>,notcc(< >))))")
(set-info :description "I'm trying to use regular expressions to match a string that does not contain the sequence of characters of a less than symbol '<' followed by a non space.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00686 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00697 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00680 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00693 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00593 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00059 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
