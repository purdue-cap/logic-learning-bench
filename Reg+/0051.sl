(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/51) — gt=endwith(repeatatleast(concat(<low>,contain(<m0>)),1))")
(set-info :description "lines ending with a lower-case letter followed by the string '!' at least once in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01510 0 (size (Pos w01510)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01524 0 (size (Pos w01524)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01484 0 (size (Pos w01484)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01518 0 (size (Pos w01518)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01296 0 (size (Pos w01296)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01063 0 (size (Pos w01063)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01184 0 (size (Pos w01184))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00091 0 (size (Pos w00091))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00105 0 (size (Pos w00105))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00203 0 (size (Pos w00203))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01468 0 (size (Pos w01468))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
