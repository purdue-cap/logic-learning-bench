(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/122) — gt=startwith(<vow>)")
(set-info :description "Given a string, write a Python program to check whether the given string is starting with Vowel or Not.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00319 0 (size (Pos w00319)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00312 0 (size (Pos w00312))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00451 0 (size (Pos w00451))))))

(check-synth)
