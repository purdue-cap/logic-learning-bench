(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/31) — gt=repeatatleast(or(<num>,<vow>),6)")
(set-info :description "lines with at least 6 numbers or vowels")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01000 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01160 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01074 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01199 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01067 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01196 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01162 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00010 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00106 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00385 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00524 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
