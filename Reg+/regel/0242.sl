(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/44) — gt=concat(repeatrange(<num>,1,11),optional(concat(<.>,repeatrange(<num>,1,3))))")
(set-info :description "I need a regular expression that satisfy these rules: The maximum number of decimal point is 3 but a number with no decimal point (e.g 12) should be accepted too. the value must be at least 0. the value must be less or equal to 99999999999.999. the radix point is DOT (e.g 2.5, not 2,5)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)


(check-synth)
