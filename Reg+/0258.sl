(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/61) — gt=and(startwith(<alphanum>),repeatatleast(or(<alphanum>,or(<.>,or(<->,or(<#>,or(<&>,<@>))))),1))")
(set-info :description "write a regular expression for validating a organisation name which allows alphanumeric as the starting characters and only special characters like ''.'', ''-'', ''#'' and ''&''.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00652 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00651 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00587 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00487 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00549 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00454 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00438 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
