(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/111) — gt=and(repeatatleast(<any>,2),concat(repeatatleast(<let>,1),or(endwith(<.>),concat(optional(or(< >,<->)),repeatatleast(<let>,1)))))")
(set-info :description "I am trying to create a regular expression in javascript with the following rules: At least 2 characters. Should have at least 1 letter as a prefix and end with a ''.'' or have '' '' or ''-'' and then have more letters.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00071 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00317 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00070 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00144 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00143 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00383 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00147 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
