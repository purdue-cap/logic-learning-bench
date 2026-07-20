(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/76) — gt=concat(repeatatleast(<let>,3),contain(<any>))")
(set-info :description "lines with a letter 3 times before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00742 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00745 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00737 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00751 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00818 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00746 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00795 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00732 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00429 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00524 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00793 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00810 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00312 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
