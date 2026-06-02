(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/65) — gt=endwith(or(<m0>,<vow>))")
(set-info :description "lines end with the string '!' or a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00897 0 (size (Pos w00897)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00710 0 (size (Pos w00710)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01139 0 (size (Pos w01139)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01138 0 (size (Pos w01138)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00867 0 (size (Pos w00867)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00364 0 (size (Pos w00364))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01155 0 (size (Pos w01155))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00868 0 (size (Pos w00868))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01022 0 (size (Pos w01022))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01230 0 (size (Pos w01230))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01192 0 (size (Pos w01192))))))

(check-synth)
