(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/197) — gt=repeatatleast(startwith(or(<m0>,<let>)),4)")
(set-info :description "lines starting in 4 or more of the string '!' or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00609 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00741 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00762 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00825 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00950 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01148 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01202 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00317 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00530 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
