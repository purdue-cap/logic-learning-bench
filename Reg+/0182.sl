(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/190) — gt=concat(endwith(<m0>),contain(contain(<cap>)))")
(set-info :description "lines ending with string '!' before containing a capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00074 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00357 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00643 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00493 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00389 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00343 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00827 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00069 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
