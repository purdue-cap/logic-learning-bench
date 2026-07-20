(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/3) — gt=endwith(or(<any>,<vow>))")
(set-info :description "lines that end with a character or a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00119 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00120 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00039 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00894 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00103 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00152 head tail)))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
