(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/208) — gt=repeatatleast(or(<vow>,<any>),6)")
(set-info :description "lines with vowel or character , 6 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01074 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01081 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01042 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01004 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01080 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01075 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01358 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00667 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
