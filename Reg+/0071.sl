(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/72) — gt=repeatatleast(concat(<low>,contain(<vow>)),1)")
(set-info :description "lines with a lower-case letter followed by a vowel at least once in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00253 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00550 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00763 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00979 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01366 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01227 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01226 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01096 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01310 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00041 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01421 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01091 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01169 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
