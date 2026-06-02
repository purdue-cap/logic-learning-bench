(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/165) — gt=startwith(endwith(<m0>))")
(set-info :description "lines starting with words ending with the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00505 0 (size (Pos w00505)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00525 0 (size (Pos w00525)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01357 0 (size (Pos w01357)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00560 0 (size (Pos w00560)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01097 0 (size (Pos w01097)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01044 0 (size (Pos w01044)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00260 0 (size (Pos w00260))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00435 0 (size (Pos w00435))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00659 0 (size (Pos w00659))))))

(check-synth)
