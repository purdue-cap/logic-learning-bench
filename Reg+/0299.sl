(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/103) — gt=and(not(repeatatleast(<0>,1)),repeatrange(<alphanum>,3,20))")
(set-info :description "I am trying to implement regex validation for passport number. My requirement is bulletpoint Length should be minimum 3 characters to a maximum of 20 characters. bulletpoint Should not be only '0'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00456 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00412 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00268 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00266 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00033 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
