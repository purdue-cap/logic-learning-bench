(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/165) — gt=startwith(endwith(<m0>))")
(set-info :description "lines starting with words ending with the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00505 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00525 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01357 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00560 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01097 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01044 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00260 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00435 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00659 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
