(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no11_0_followed_by_atleast_one_1")
(set-info :description "each 0 in w is followed by at least one 1")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w0 0 (size (Pos w0)))))
(constraint (RegLan.Sem r (RegLan.Asp w000 0 (size (Pos w000)))))
(constraint (RegLan.Sem r (RegLan.Asp w10 0 (size (Pos w10)))))
(constraint (RegLan.Sem r (RegLan.Asp w010 0 (size (Pos w010)))))
(constraint (RegLan.Sem r (RegLan.Asp w100 0 (size (Pos w100)))))
(constraint (RegLan.Sem r (RegLan.Asp w1010 0 (size (Pos w1010)))))
(constraint (RegLan.Sem r (RegLan.Asp w10010 0 (size (Pos w10010)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1 0 (size (Pos w1))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w110 0 (size (Pos w110))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01 0 (size (Pos w01))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0101 0 (size (Pos w0101))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w10101 0 (size (Pos w10101))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w100101 0 (size (Pos w100101))))))

(check-synth)
