(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/82) — gt=and(repeat(or(<.>,<num>),5),and(not(startwith(<.>)),and(not(endwith(<.>)),concat(repeatrange(<num>,1,5),optional(concat(<.>,repeatrange(<num>,1,2)))))))")
(set-info :description "I want to limit mamimum total digit counts are 5. And decimal numbers are 2 positions for maximum, cannot exceed 2 digits, but need to valid total word count is not large than 5.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00285 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00351 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00350 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00170 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00340 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00274 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00345 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
