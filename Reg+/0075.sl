(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/76) — gt=concat(repeatatleast(<let>,3),contain(<any>))")
(set-info :description "lines with a letter 3 times before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00742 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00745 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00737 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00751 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00818 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00746 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00795 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00732 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00429 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00524 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00793 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00810 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00312 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
