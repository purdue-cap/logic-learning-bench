(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/14) — gt=repeatatleast(concat(<num>,contain(<cap>)),2)")
(set-info :description "lines with a number preceding a capital letter 2 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00671 0 (size (Pos w00671)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00864 0 (size (Pos w00864)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01009 0 (size (Pos w01009)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01337 0 (size (Pos w01337)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01013 0 (size (Pos w01013)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01385 0 (size (Pos w01385)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01264 0 (size (Pos w01264)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00117 0 (size (Pos w00117))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00218 0 (size (Pos w00218))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00672 0 (size (Pos w00672))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00684 0 (size (Pos w00684))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
