(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/17) — gt=or(or(<let>,<low>),<cap>)")
(set-info :description "lines with a lower-case or capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00020 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00021 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00039 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00113 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00170 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00173 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
