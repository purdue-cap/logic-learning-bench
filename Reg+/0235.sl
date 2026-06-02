(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/37) — gt=and(contain(<alphanum>),and(repeatatleast(or(<alphanum>,or(<@>,<#>)),1),repeatrange(<any>,1,8)))")
(set-info :description "Must contain at least one alphanumeric character [A-Za-z0-9]. Can contain allowed special character like [''@'' ''#'']. This is optional.Text length should be less than 8")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00014 0 (size (Pos w00014)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00063 0 (size (Pos w00063)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00061 0 (size (Pos w00061)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00220 0 (size (Pos w00220)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00218 0 (size (Pos w00218)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00013 0 (size (Pos w00013))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00060 0 (size (Pos w00060))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00232 0 (size (Pos w00232))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00137 0 (size (Pos w00137))))))

(check-synth)
