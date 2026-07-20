(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/103) — gt=startwith(repeatatleast(<low>,4))")
(set-info :description "lines with words starting with 4 or more lower-case letters")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00750 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00937 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00934 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01074 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01199 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01302 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01454 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00269 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00524 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00147 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00148 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00892 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
