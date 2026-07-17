(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/63) — gt=concat(not(<cap>),contain(<m0>))")
(set-info :description "lines without a capital letter before string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00059 0 (size (Pos w00059)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01370 0 (size (Pos w01370)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00995 0 (size (Pos w00995)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01432 0 (size (Pos w01432)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01322 0 (size (Pos w01322)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01275 0 (size (Pos w01275)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01263 0 (size (Pos w01263))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00962 0 (size (Pos w00962))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01010 0 (size (Pos w01010))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01110 0 (size (Pos w01110))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00139 0 (size (Pos w00139))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
