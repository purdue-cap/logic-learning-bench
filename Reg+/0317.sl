(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/121) — gt=endwith(<alphanum>)")
(set-info :description "Given a string, write a Python program to check whether the given string is ending with only alphanumeric character or Not.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00590 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00634 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00481 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00386 head tail))))

(check-synth)
