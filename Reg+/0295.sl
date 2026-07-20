(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/99) — gt=and(repeatrange(<any>,1,15),concat(star(or(<cap>,or(<num>,<.>))),concat(<*>,star(or(<cap>,or(<num>,<.>))))))")
(set-info :description "I need a regular expression that has the following constraints. contains only [A-Z0-9.*]. 1 - 15 characters in length. Must contain a ''*''but only once")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00472 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00453 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00471 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00439 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00488 head tail))))

(check-synth)
