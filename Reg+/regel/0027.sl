(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/27) — gt=endwith(concat(<low>,contain(<num>)))")
(set-info :description "lines ending with a lower-case letter followed by a number in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00217 0 (size (Pos w00217)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00355 0 (size (Pos w00355)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00729 0 (size (Pos w00729)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00947 0 (size (Pos w00947)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01069 0 (size (Pos w01069)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00526 0 (size (Pos w00526)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00527 0 (size (Pos w00527)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00010 0 (size (Pos w00010))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00391 0 (size (Pos w00391))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00132 0 (size (Pos w00132))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00136 0 (size (Pos w00136))))))

(check-synth)
