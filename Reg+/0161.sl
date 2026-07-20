(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/168) — gt=concat(or(or(<vow>,<m0>),<low>),contain(<m1>))")
(set-info :description "lines which are having either a vowel , the string '!' , or a lower-case letter before the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00223 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00265 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00168 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00991 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01212 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00546 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00547 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00181 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00116 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
