(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/24) — gt=or(contain(<any>),concat(<m0>,contain(<m1>)))")
(set-info :description "lines with characters or the string '!' followed by the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00223 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00528 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00393 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00449 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00910 head tail)))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
