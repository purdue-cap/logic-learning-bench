(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/60) — gt=repeatatleast(startwith(<cap>),1)")
(set-info :description "lines starting with a capital letter at least 1 time")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00020 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00481 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00480 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01194 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00169 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00711 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01051 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00401 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00733 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00853 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01223 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01345 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00872 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
