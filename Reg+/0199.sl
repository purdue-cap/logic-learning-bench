(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/207) — gt=concat(repeatatleast(<cap>,5),contain(<vow>))")
(set-info :description "lines with a capital letter , 5 or more times before a vowel in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01034 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01048 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01178 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01281 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01276 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01277 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00169 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00441 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
