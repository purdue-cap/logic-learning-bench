(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/26) — gt=concat(<cap>,contain(<num>))")
(set-info :description "lines containing a capital letter followed by a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00165 0 (size (Pos w00165)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00438 0 (size (Pos w00438)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00166 0 (size (Pos w00166)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00440 0 (size (Pos w00440)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01030 0 (size (Pos w01030)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01031 0 (size (Pos w01031)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00901 0 (size (Pos w00901)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00010 0 (size (Pos w00010))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00217 0 (size (Pos w00217))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00521 0 (size (Pos w00521))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00739 0 (size (Pos w00739))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01070 0 (size (Pos w01070))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
