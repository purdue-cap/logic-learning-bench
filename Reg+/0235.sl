(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/37) — gt=and(contain(<alphanum>),and(repeatatleast(or(<alphanum>,or(<@>,<#>)),1),repeatrange(<any>,1,8)))")
(set-info :description "Must contain at least one alphanumeric character [A-Za-z0-9]. Can contain allowed special character like [''@'' ''#'']. This is optional.Text length should be less than 8")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00014 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00063 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00061 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00220 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00218 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00013 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00060 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00232 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00137 head tail))))

(check-synth)
