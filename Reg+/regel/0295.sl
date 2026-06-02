(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/99) — gt=and(repeatrange(<any>,1,15),concat(star(or(<cap>,or(<num>,<.>))),concat(<*>,star(or(<cap>,or(<num>,<.>))))))")
(set-info :description "I need a regular expression that has the following constraints. contains only [A-Z0-9.*]. 1 - 15 characters in length. Must contain a ''*''but only once")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00472 0 (size (Pos w00472)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00453 0 (size (Pos w00453)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00471 0 (size (Pos w00471)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00439 0 (size (Pos w00439))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00488 0 (size (Pos w00488))))))

(check-synth)
