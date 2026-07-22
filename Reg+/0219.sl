(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/19) — gt=concat(or(repeat(<num>,5),repeat(<num>,9)),concat(repeatatleast(or(repeat(<num>,5),repeat(<num>,9)),1),optional(<,>)))")
(set-info :description "I am trying to write a regular expression which validates a text box to have only digits with length 5 or 9.”Can any one please help me in modifying or writing a new regular expression which supports below pattern: - valid (ending with comma) -valid (not ending with comma) -Invalid (should not support if 1st digit is length 5 and 2nd less than 9) -valid (must support only digit length 5 or 9)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00600 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00569 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00659 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00624 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
