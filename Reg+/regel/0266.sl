(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/70) — gt=concat(or(<1>,or(<2>,or(<3>,or(<4>,<5>)))),concat(or(<A>,or(<B>,<C>)),optional(or(<X>,or(<Y>,<Z>)))))")
(set-info :description "I need a regular expression to validate single digit within range of [1-5] followed by alphabet [A-C] and followed by optional alphabet [X-Z]")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00048 0 (size (Pos w00048)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00056 0 (size (Pos w00056))))))

(check-synth)
