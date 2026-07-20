(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/79) — gt=concat(<m0>,contain(<let>))")
(set-info :description "lines containing words wherein the string '!' precedes a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00080 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00319 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00635 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00987 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00359 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01514 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01127 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00067 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00576 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
