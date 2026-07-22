(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/205) — gt=concat(or(or(<cap>,<vow>),<num>),contain(<m0>))")
(set-info :description "items with either a vowel , a numeral , or an upper case letter preceding '!' .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00664 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00110 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00162 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00176 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00125 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00209 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00238 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00059 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00058 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
