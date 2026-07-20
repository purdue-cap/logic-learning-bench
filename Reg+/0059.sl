(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/59) — gt=endwith(or(<m0>,<num>))")
(set-info :description "lines that end with '!' or have just have a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01211 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01346 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01390 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01341 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01270 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00555 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00679 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01099 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01339 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00022 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
