(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/88) — gt=concat(<num>,contain(concat(<low>,contain(<let>))))")
(set-info :description "lines in which a number comes prior to a lower-case letter , and followed by a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00403 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00404 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00414 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00418 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01012 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00681 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00668 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00399 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00764 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00447 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01106 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
