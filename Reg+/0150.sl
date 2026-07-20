(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/157) — gt=concat(<m0>,contain(or(<any>,<cap>)))")
(set-info :description "lines with words with string '!' before character or capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00069 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00074 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00075 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00067 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00839 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
