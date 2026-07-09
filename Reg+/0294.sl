(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/98) — gt=concat(and(not(startwith(<0>)),repeatrange(<num>,1,6)),concat(<->,and(not(startwith(<0>)),repeatrange(<num>,1,6))))")
(set-info :description "R1: It cannot start with ''0''. It can be 1 digit to 6 digits in length.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0294_01 0 (size (Pos w0294_01)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0294_02 0 (size (Pos w0294_02)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0294_03 0 (size (Pos w0294_03)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0294_04 0 (size (Pos w0294_04))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0294_05 0 (size (Pos w0294_05))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0294_06 0 (size (Pos w0294_06))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0294_07 0 (size (Pos w0294_07))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0294_08 0 (size (Pos w0294_08))))))

(check-synth)
