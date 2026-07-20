(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/109) — gt=startwith(or(<vow>,<m0>))")
(set-info :description "lines starting with a vowel or string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01511 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01254 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01435 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00607 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00580 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01159 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01375 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01456 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00698 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
