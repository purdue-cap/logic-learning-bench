(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no11_0_followed_by_atleast_one_1")
(set-info :description "each 0 in w is followed by at least one 1")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w0 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w000 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w10 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w010 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w100 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w1010 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w10010 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w1 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w110 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0101 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w10101 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w100101 head tail))))

(check-synth)
