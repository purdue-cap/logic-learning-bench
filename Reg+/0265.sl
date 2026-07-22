(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/69) — gt=concat(repeatrange(<num>,1,5),optional(concat(or(<.>,<,>),repeatrange(<num>,1,2))))")
(set-info :description "I would like to validate a string format that should only contain only numbers with also following conditions both satisfied:  If it is a integer number, the maximum number of digits is 5. If it is a number with decimal (or decimal fraction), the maximum digits after decimal mark is two. NOTE: value use comma or dot (''.'') as decimal point. Please bear in mind that both of the two conditions have to be satisfied'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00285 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00277 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00353 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00342 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00500 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00296 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
