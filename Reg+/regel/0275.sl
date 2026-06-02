(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/79) — gt=not(contain(concat(<<>,notcc(< >))))")
(set-info :description "I'm trying to use regular expressions to match a string that does not contain the sequence of characters of a less than symbol '<' followed by a non space.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00686 0 (size (Pos w00686)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00697 0 (size (Pos w00697)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00680 0 (size (Pos w00680)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00693 0 (size (Pos w00693))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00593 0 (size (Pos w00593))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00059 0 (size (Pos w00059))))))

(check-synth)
