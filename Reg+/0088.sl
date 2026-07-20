(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/90) — gt=or(endwith(<num>),<low>)")
(set-info :description "lines with words and ending in a number or lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00016 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00045 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00039 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00040 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00944 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00891 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00963 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00967 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00800 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00782 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00963 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01253 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
