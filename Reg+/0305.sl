(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/109) — gt=or(startwith(concat(<a>,<a>)),endwith(concat(<b>,<b>)))")
(set-info :description "Here are the conditions for my regular expression: must start with ''09''. total length is 9.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00148 0 (size (Pos w00148)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00149 0 (size (Pos w00149)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00235 0 (size (Pos w00235)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00021 0 (size (Pos w00021))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00072 0 (size (Pos w00072))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00236 0 (size (Pos w00236))))))

(check-synth)
