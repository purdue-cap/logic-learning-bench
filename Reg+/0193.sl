(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/201) — gt=concat(repeatatleast(<let>,5),contain(<any>))")
(set-info :description "lines with 5 letters before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01077 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01078 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01080 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01076 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01032 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01047 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00741 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00934 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
