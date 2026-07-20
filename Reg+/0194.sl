(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/202) — gt=concat(<any>,contain(contain(<low>)))")
(set-info :description "a character appears before containing a lower-case letter in the lines")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00119 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00229 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00736 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00731 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00080 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00993 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00062 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00224 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
