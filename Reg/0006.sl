(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no6_len_is_3_mul")
(set-info :description "strings whose length is a multiple of 3")

(require "./global/theories.alpharegex.sl")
(require "./global/models.alpharegex.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w___ 0 (size (Pos w___)))))
(constraint (RegLan.Sem r (RegLan.Asp w______ 0 (size (Pos w______)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w? 0 (size (Pos w?))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?? 0 (size (Pos w??))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w???? 0 (size (Pos w????))))))

(check-synth)
