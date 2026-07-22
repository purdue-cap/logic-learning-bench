(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/41) — gt=or(concat(optional(<+>),repeatrange(<num>,10,15)),repeatrange(<num>,11,16))")
(set-info :description "regular expression which validates only number and min length should be 11 and maximum 16")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00570 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00562 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00597 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00641 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00252 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00598 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
