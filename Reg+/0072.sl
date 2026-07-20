(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/73) — gt=repeatatleast(endwith(<any>),7)")
(set-info :description "lines with words with ending with character , 7 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01247 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01472 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01298 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01368 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01381 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01521 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01392 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00728 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01064 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00866 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00172 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00459 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00834 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
