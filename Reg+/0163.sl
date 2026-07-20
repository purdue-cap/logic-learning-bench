(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/170) — gt=contain(or(or(<vow>,<num>),<let>))")
(set-info :description "lines with a vowel , number , or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00041 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00328 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00153 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00021 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00218 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00144 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00820 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
