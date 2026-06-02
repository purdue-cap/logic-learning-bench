(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no4_begin_1_end_0")
(set-info :description "w begins with a 1 and ends with a 0")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w01 0 (size (Pos w01)))))
(constraint (RegLan.Sem r (RegLan.Asp w0_1 0 (size (Pos w0_1)))))
(constraint (RegLan.Sem r (RegLan.Asp w0__1 0 (size (Pos w0__1)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1 0 (size (Pos w1))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0 0 (size (Pos w0))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00 0 (size (Pos w00))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0?0 0 (size (Pos w0?0))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1?1 0 (size (Pos w1?1))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1?0 0 (size (Pos w1?0))))))

(check-synth)
