(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/99) — gt=and(repeatrange(<any>,1,15),concat(star(or(<cap>,or(<num>,<.>))),concat(<*>,star(or(<cap>,or(<num>,<.>))))))")
(set-info :description "I need a regular expression that has the following constraints. contains only [A-Z0-9.*]. 1 - 15 characters in length. Must contain a ''*''but only once")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00472 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00453 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00471 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00439 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00488 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
