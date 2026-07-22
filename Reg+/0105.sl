(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/109) — gt=startwith(or(<vow>,<m0>))")
(set-info :description "lines starting with a vowel or string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01511 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01254 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01435 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00607 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00580 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01159 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01375 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01456 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00698 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
