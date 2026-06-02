(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/169) — gt=concat(<cap>,contain(endwith(<vow>)))")
(set-info :description "lines with a capital before ending with vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00899 0 (size (Pos w00899)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00175 0 (size (Pos w00175)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00185 0 (size (Pos w00185)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01046 0 (size (Pos w01046)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01177 0 (size (Pos w01177)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01058 0 (size (Pos w01058)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01060 0 (size (Pos w01060)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00171 0 (size (Pos w00171))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00439 0 (size (Pos w00439))))))

(check-synth)
