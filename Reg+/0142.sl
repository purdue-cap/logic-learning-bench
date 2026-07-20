(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/148) — gt=concat(<any>,contain(concat(<num>,contain(<vow>))))")
(set-info :description "lines with character before number followed by vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00936 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00784 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00669 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00889 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01313 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00997 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00509 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00133 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00508 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00232 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00790 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00014 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
