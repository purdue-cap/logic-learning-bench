(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/103) — gt=and(not(repeatatleast(<0>,1)),repeatrange(<alphanum>,3,20))")
(set-info :description "I am trying to implement regex validation for passport number. My requirement is bulletpoint Length should be minimum 3 characters to a maximum of 20 characters. bulletpoint Should not be only '0'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00456 0 (size (Pos w00456)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00412 0 (size (Pos w00412)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00268 0 (size (Pos w00268)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00266 0 (size (Pos w00266)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00033 0 (size (Pos w00033))))))

(check-synth)
