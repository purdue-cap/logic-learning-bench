(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/205) — gt=concat(or(or(<cap>,<vow>),<num>),contain(<m0>))")
(set-info :description "items with either a vowel , a numeral , or an upper case letter preceding '!' .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00664 0 (size (Pos w00664)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00110 0 (size (Pos w00110)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00162 0 (size (Pos w00162)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00176 0 (size (Pos w00176)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00125 0 (size (Pos w00125)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00209 0 (size (Pos w00209)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00238 0 (size (Pos w00238))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00059 0 (size (Pos w00059))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00058 0 (size (Pos w00058))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230))))))

(check-synth)
