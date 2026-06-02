(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/76) — gt=concat(repeatatleast(<let>,3),contain(<any>))")
(set-info :description "lines with a letter 3 times before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00742 0 (size (Pos w00742)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00745 0 (size (Pos w00745)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00737 0 (size (Pos w00737)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00751 0 (size (Pos w00751)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00818 0 (size (Pos w00818)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00746 0 (size (Pos w00746)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00795 0 (size (Pos w00795)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00732 0 (size (Pos w00732))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00429 0 (size (Pos w00429))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00524 0 (size (Pos w00524))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00793 0 (size (Pos w00793))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00810 0 (size (Pos w00810))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00312 0 (size (Pos w00312))))))

(check-synth)
