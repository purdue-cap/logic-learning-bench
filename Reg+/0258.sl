(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/61) — gt=and(startwith(<alphanum>),repeatatleast(or(<alphanum>,or(<.>,or(<->,or(<#>,or(<&>,<@>))))),1))")
(set-info :description "write a regular expression for validating a organisation name which allows alphanumeric as the starting characters and only special characters like ''.'', ''-'', ''#'' and ''&''.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00652 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00651 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00587 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00487 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00549 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00454 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00438 head tail))))

(check-synth)
