(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/38) — gt=concat(optional(<+>),repeatatleast(<num>,1))")
(set-info :description "I need a regular expression that will test the input bulletpoint Should start with only one '+' symbol or optional ( + should not come in between ) bulletpoint should not contain alphabets and any other special character bulletpoint Should not contain consecutive '+' symbols")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00085 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00058 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00159 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00161 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00131 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00331 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
