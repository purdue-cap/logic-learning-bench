(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/188) — gt=repeatatleast(or(<vow>,<m0>),7)")
(set-info :description "lines with at least 7 of  the string '!' or a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01146 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01255 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01302 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01199 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01300 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01208 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01278 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00984 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01081 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01041 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
