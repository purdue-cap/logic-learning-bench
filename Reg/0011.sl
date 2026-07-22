(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no11_0_followed_by_atleast_one_1")
(set-info :description "each 0 in w is followed by at least one 1")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w0 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w000 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w10 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w010 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w100 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w1010 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w10010 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w1 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w110 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0101 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w10101 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w100101 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
