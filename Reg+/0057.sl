(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/57) — gt=concat(repeatatleast(<let>,2),contain(<vow>))")
(set-info :description "lines that contain a letter , 2 times or more before a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00524 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00543 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01550 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01540 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00761 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01532 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01369 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00267 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00255 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00376 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00321 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00569 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
