(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/148) — gt=concat(<any>,contain(concat(<num>,contain(<vow>))))")
(set-info :description "lines with character before number followed by vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00936 0 (size (Pos w00936)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00784 0 (size (Pos w00784)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00669 0 (size (Pos w00669)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00889 0 (size (Pos w00889)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01313 0 (size (Pos w01313)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00997 0 (size (Pos w00997)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00509 0 (size (Pos w00509)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00133 0 (size (Pos w00133))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00508 0 (size (Pos w00508))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00232 0 (size (Pos w00232))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00790 0 (size (Pos w00790))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00014 0 (size (Pos w00014))))))

(check-synth)
