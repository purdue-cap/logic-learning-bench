(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/49) — gt=concat(repeatatleast(<vow>,5),contain(<low>))")
(set-info :description "lines with a lower case letter after 5 vowels")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01081 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01098 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01121 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01133 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01131 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01107 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01108 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01557 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00942 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01128 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01101 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01102 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00587 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
