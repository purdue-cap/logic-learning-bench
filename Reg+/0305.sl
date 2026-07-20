(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/109) — gt=or(startwith(concat(<a>,<a>)),endwith(concat(<b>,<b>)))")
(set-info :description "Here are the conditions for my regular expression: must start with ''09''. total length is 9.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0305_01 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0305_02 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0305_03 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0305_04 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0305_05 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0305_06 head tail))))

(check-synth)
