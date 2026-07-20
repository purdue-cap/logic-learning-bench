(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/205) — gt=concat(or(or(<cap>,<vow>),<num>),contain(<m0>))")
(set-info :description "items with either a vowel , a numeral , or an upper case letter preceding '!' .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00664 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00110 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00162 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00176 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00125 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00209 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00238 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00059 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00058 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
