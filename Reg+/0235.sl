(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/37) — gt=and(contain(<alphanum>),and(repeatatleast(or(<alphanum>,or(<@>,<#>)),1),repeatrange(<any>,1,8)))")
(set-info :description "Must contain at least one alphanumeric character [A-Za-z0-9]. Can contain allowed special character like [''@'' ''#'']. This is optional.Text length should be less than 8")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00014 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00063 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00061 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00220 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00218 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00013 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00060 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00232 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00137 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
