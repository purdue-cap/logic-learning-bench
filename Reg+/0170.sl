(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/177) — gt=concat(or(or(<num>,<low>),<m0>),contain(<any>))")
(set-info :description "lines that contain a number , a lower-case letter , or the string '!' followed by a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00680 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00870 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00771 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00620 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00167 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
