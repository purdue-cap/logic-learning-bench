(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/121) — gt=endwith(<alphanum>)")
(set-info :description "Given a string, write a Python program to check whether the given string is ending with only alphanumeric character or Not.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00590 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00634 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00481 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00386 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
