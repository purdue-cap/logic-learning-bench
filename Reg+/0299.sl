(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/103) — gt=and(not(repeatatleast(<0>,1)),repeatrange(<alphanum>,3,20))")
(set-info :description "I am trying to implement regex validation for passport number. My requirement is bulletpoint Length should be minimum 3 characters to a maximum of 20 characters. bulletpoint Should not be only '0'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00456 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00412 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00268 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00266 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00033 head tail))))

(check-synth)
