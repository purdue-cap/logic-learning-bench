(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/6) — gt=not(or(or(<vow>,<any>),<let>))")
(set-info :description "lines that do not contain a character , a vowel , or a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00041 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00044 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00031 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))

(check-synth)
