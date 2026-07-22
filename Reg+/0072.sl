(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/73) — gt=repeatatleast(endwith(<any>),7)")
(set-info :description "lines with words with ending with character , 7 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01247 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01472 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01298 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01368 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01381 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01521 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01392 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00728 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01064 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00866 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00172 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00459 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00834 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
