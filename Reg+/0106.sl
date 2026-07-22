(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/110) — gt=concat(<any>,contain(<m0>))")
(set-info :description "lines with a character followed by '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00485 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01163 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01350 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01391 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01235 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01516 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01238 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00983 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00212 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01143 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
