(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/27) — gt=endwith(concat(<low>,contain(<num>)))")
(set-info :description "lines ending with a lower-case letter followed by a number in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00217 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00355 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00729 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00947 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01069 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00526 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00527 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00010 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00391 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00132 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00136 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
