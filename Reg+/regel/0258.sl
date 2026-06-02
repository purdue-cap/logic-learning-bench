(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/61) — gt=and(startwith(<alphanum>),repeatatleast(or(<alphanum>,or(<.>,or(<->,or(<#>,or(<&>,<@>))))),1))")
(set-info :description "write a regular expression for validating a organisation name which allows alphanumeric as the starting characters and only special characters like ''.'', ''-'', ''#'' and ''&''.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00652 0 (size (Pos w00652)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00651 0 (size (Pos w00651)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00587 0 (size (Pos w00587)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00487 0 (size (Pos w00487))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00549 0 (size (Pos w00549))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00454 0 (size (Pos w00454))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00438 0 (size (Pos w00438))))))

(check-synth)
