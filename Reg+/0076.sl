(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/77) — gt=endwith(or(<m0>,<m1>))")
(set-info :description "lines with words ending in string '!' or '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00811 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00812 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01490 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01491 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00335 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00431 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01492 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00639 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00697 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01541 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01441 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00631 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
