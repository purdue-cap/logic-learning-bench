(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/31) — gt=repeatatleast(or(<num>,<vow>),6)")
(set-info :description "lines with at least 6 numbers or vowels")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01000 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01160 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01074 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01199 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01067 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01196 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01162 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00010 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00106 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00385 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00524 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
