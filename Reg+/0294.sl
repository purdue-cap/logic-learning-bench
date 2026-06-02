(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/98) — gt=concat(and(not(startwith(<0>)),repeatrange(<num>,1,6)),concat(<->,and(not(startwith(<0>)),repeatrange(<num>,1,6))))")
(set-info :description "R1: It cannot start with ''0''. It can be 1 digit to 6 digits in length.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)


(check-synth)
