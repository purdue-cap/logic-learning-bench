(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/37) — gt=contain(endwith(or(<let>,<num>)))")
(set-info :description "a letter or a numbre appears at the end of the lines")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00010 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00348 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00522 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00108 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00106 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00423 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00004 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00152 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00317 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
