(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/70) — gt=concat(or(<1>,or(<2>,or(<3>,or(<4>,<5>)))),concat(or(<A>,or(<B>,<C>)),optional(or(<X>,or(<Y>,<Z>)))))")
(set-info :description "I need a regular expression to validate single digit within range of [1-5] followed by alphabet [A-C] and followed by optional alphabet [X-Z]")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0266_01 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0266_02 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0266_03 head tail))))

(check-synth)
