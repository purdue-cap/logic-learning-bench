(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/38) — gt=concat(optional(<+>),repeatatleast(<num>,1))")
(set-info :description "I need a regular expression that will test the input bulletpoint Should start with only one '+' symbol or optional ( + should not come in between ) bulletpoint should not contain alphabets and any other special character bulletpoint Should not contain consecutive '+' symbols")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00085 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00058 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00159 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00161 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00131 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00331 head tail))))

(check-synth)
