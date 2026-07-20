(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/84) — gt=endwith(repeatatleast(<vow>,2))")
(set-info :description "items terminating withe a vowel at least twice .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00229 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01439 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01509 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00658 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01497 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00807 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00598 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00813 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01533 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00802 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01124 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00969 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
