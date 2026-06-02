(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/61) — gt=concat(<let>,contain(contain(<cap>)))")
(set-info :description "lines containing a capital after a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00226 0 (size (Pos w00226)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01140 0 (size (Pos w01140)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01413 0 (size (Pos w01413)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01090 0 (size (Pos w01090)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01240 0 (size (Pos w01240)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00297 0 (size (Pos w00297)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00972 0 (size (Pos w00972)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 0 (size (Pos w00530))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01149 0 (size (Pos w01149))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01301 0 (size (Pos w01301))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01225 0 (size (Pos w01225))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00037 0 (size (Pos w00037))))))

(check-synth)
