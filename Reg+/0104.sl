(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/108) — gt=contain(and(<vow>,<any>))")
(set-info :description "lines that have a vowel and a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00487 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00553 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00925 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01347 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01158 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00316 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00051 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00090 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00030 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01311 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
