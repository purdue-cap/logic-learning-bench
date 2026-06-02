(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/38) — gt=concat(optional(<+>),repeatatleast(<num>,1))")
(set-info :description "I need a regular expression that will test the input bulletpoint Should start with only one '+' symbol or optional ( + should not come in between ) bulletpoint should not contain alphabets and any other special character bulletpoint Should not contain consecutive '+' symbols")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00085 0 (size (Pos w00085)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00058 0 (size (Pos w00058)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00159 0 (size (Pos w00159))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00161 0 (size (Pos w00161))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00131 0 (size (Pos w00131))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00331 0 (size (Pos w00331))))))

(check-synth)
