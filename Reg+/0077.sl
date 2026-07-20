(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/78) — gt=endwith(concat(<num>,contain(<any>)))")
(set-info :description "lines that end with a number then after has a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00135 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00126 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00507 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00933 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01437 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01134 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01119 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00219 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00012 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00741 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00102 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00599 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
