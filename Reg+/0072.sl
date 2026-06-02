(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/73) — gt=repeatatleast(endwith(<any>),7)")
(set-info :description "lines with words with ending with character , 7 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01247 0 (size (Pos w01247)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01472 0 (size (Pos w01472)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01298 0 (size (Pos w01298)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01368 0 (size (Pos w01368)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01381 0 (size (Pos w01381)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01521 0 (size (Pos w01521)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01392 0 (size (Pos w01392)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00728 0 (size (Pos w00728))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01064 0 (size (Pos w01064))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00866 0 (size (Pos w00866))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00172 0 (size (Pos w00172))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00459 0 (size (Pos w00459))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00834 0 (size (Pos w00834))))))

(check-synth)
