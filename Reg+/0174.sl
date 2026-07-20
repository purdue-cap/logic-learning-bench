(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/181) — gt=concat(repeatatleast(<let>,5),contain(<m0>))")
(set-info :description "lines with 5 or more of a letter before string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01076 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01205 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01204 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01201 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01206 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01438 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01460 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00939 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01400 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
