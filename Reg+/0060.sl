(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/60) — gt=repeatatleast(startwith(<cap>),1)")
(set-info :description "lines starting with a capital letter at least 1 time")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00481 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00480 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01194 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00169 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00711 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01051 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00401 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00733 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00853 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01223 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01345 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00872 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
