(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/41) — gt=or(concat(optional(<+>),repeatrange(<num>,10,15)),repeatrange(<num>,11,16))")
(set-info :description "regular expression which validates only number and min length should be 11 and maximum 16")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00570 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00562 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00597 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00641 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00252 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00598 head tail))))

(check-synth)
