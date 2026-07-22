(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/147) — gt=endwith(or(repeatatleast(<any>,1),<num>))")
(set-info :description "lines ending with a character or a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00052 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00588 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00567 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00256 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00584 (RegLan.Sem r (RegLan.Asp head tail))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
