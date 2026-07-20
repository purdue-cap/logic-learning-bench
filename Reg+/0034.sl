(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/34) — gt=or(startwith(<m0>),concat(<any>,contain(<num>)))")
(set-info :description "lines starting with string '!' or character followed by number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00068 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00503 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00676 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00324 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00637 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00832 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00010 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00108 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00105 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00154 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00149 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00152 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
