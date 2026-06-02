(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/147) — gt=endwith(or(repeatatleast(<any>,1),<num>))")
(set-info :description "lines ending with a character or a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00052 0 (size (Pos w00052)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00588 0 (size (Pos w00588)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00567 0 (size (Pos w00567)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00256 0 (size (Pos w00256)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00584 0 (size (Pos w00584)))))

(check-synth)
