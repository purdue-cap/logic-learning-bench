(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/82) — gt=and(repeat(or(<.>,<num>),5),and(not(startwith(<.>)),and(not(endwith(<.>)),concat(repeatrange(<num>,1,5),optional(concat(<.>,repeatrange(<num>,1,2)))))))")
(set-info :description "I want to limit mamimum total digit counts are 5. And decimal numbers are 2 positions for maximum, cannot exceed 2 digits, but need to valid total word count is not large than 5.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00285 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00351 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00350 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00170 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00340 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00274 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00345 head tail))))

(check-synth)
