(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/109) — gt=or(startwith(concat(<a>,<a>)),endwith(concat(<b>,<b>)))")
(set-info :description "Here are the conditions for my regular expression: must start with ''09''. total length is 9.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0305_01 0 (size (Pos w0305_01)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0305_02 0 (size (Pos w0305_02)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0305_03 0 (size (Pos w0305_03)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0305_04 0 (size (Pos w0305_04))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0305_05 0 (size (Pos w0305_05))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0305_06 0 (size (Pos w0305_06))))))

(check-synth)
