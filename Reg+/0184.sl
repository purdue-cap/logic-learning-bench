(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/192) — gt=repeatatleast(or(startwith(<low>),<m0>),4)")
(set-info :description "lines starting with a lower-case letter or string '!' , 4 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00741 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00762 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00609 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00825 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00950 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00934 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01214 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00317 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00530 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
