(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/111) — gt=and(repeatatleast(<any>,2),concat(repeatatleast(<let>,1),or(endwith(<.>),concat(optional(or(< >,<->)),repeatatleast(<let>,1)))))")
(set-info :description "I am trying to create a regular expression in javascript with the following rules: At least 2 characters. Should have at least 1 letter as a prefix and end with a ''.'' or have '' '' or ''-'' and then have more letters.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00071 0 (size (Pos w00071)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00317 0 (size (Pos w00317)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00070 0 (size (Pos w00070)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00144 0 (size (Pos w00144)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00143 0 (size (Pos w00143)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00383 0 (size (Pos w00383))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00147 0 (size (Pos w00147))))))

(check-synth)
