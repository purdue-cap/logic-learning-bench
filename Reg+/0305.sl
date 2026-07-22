(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/109) — gt=or(startwith(concat(<a>,<a>)),endwith(concat(<b>,<b>)))")
(set-info :description "Here are the conditions for my regular expression: must start with ''09''. total length is 9.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (with-model w0305_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0305_02 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0305_03 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0305_04 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0305_05 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0305_06 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
