(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/108) — gt=contain(and(<vow>,<any>))")
(set-info :description "lines that have a vowel and a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00487 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00553 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00925 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01347 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01158 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00316 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00051 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00090 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00030 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01311 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
