(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/69) — gt=concat(repeatrange(<num>,1,5),optional(concat(or(<.>,<,>),repeatrange(<num>,1,2))))")
(set-info :description "I would like to validate a string format that should only contain only numbers with also following conditions both satisfied:  If it is a integer number, the maximum number of digits is 5. If it is a number with decimal (or decimal fraction), the maximum digits after decimal mark is two. NOTE: value use comma or dot (''.'') as decimal point. Please bear in mind that both of the two conditions have to be satisfied'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00285 0 (size (Pos w00285)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00277 0 (size (Pos w00277)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00353 0 (size (Pos w00353))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00342 0 (size (Pos w00342))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00500 0 (size (Pos w00500))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00296 0 (size (Pos w00296))))))

(check-synth)
