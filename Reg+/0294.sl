(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/98) — gt=concat(and(not(startwith(<0>)),repeatrange(<num>,1,6)),concat(<->,and(not(startwith(<0>)),repeatrange(<num>,1,6))))")
(set-info :description "R1: It cannot start with ''0''. It can be 1 digit to 6 digits in length.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (with-model w0294_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0294_02 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0294_03 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0294_04 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0294_05 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0294_06 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0294_07 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0294_08 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
