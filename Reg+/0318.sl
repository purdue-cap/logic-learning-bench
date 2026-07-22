(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/122) — gt=startwith(<vow>)")
(set-info :description "Given a string, write a Python program to check whether the given string is starting with Vowel or Not.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00319 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00312 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00451 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
