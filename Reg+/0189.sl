(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/197) — gt=repeatatleast(startwith(or(<m0>,<let>)),4)")
(set-info :description "lines starting in 4 or more of the string '!' or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00609 0 (size (Pos w00609)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00741 0 (size (Pos w00741)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00762 0 (size (Pos w00762)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00825 0 (size (Pos w00825)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00950 0 (size (Pos w00950)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01148 0 (size (Pos w01148)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01202 0 (size (Pos w01202)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00317 0 (size (Pos w00317))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 0 (size (Pos w00530))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
