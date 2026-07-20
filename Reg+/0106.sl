(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/110) — gt=concat(<any>,contain(<m0>))")
(set-info :description "lines with a character followed by '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00485 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01163 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01350 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01391 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01235 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01516 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01238 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00983 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00212 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01143 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
