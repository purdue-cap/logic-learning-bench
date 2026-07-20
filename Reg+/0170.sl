(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/177) — gt=concat(or(or(<num>,<low>),<m0>),contain(<any>))")
(set-info :description "lines that contain a number , a lower-case letter , or the string '!' followed by a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00119 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00229 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00680 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00870 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00771 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00620 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00167 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
