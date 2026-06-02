(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/41) — gt=or(concat(optional(<+>),repeatrange(<num>,10,15)),repeatrange(<num>,11,16))")
(set-info :description "regular expression which validates only number and min length should be 11 and maximum 16")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00570 0 (size (Pos w00570)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00562 0 (size (Pos w00562)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00597 0 (size (Pos w00597))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00641 0 (size (Pos w00641))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00252 0 (size (Pos w00252))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00598 0 (size (Pos w00598))))))

(check-synth)
