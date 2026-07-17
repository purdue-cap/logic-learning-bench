(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/177) — gt=concat(or(or(<num>,<low>),<m0>),contain(<any>))")
(set-info :description "lines that contain a number , a lower-case letter , or the string '!' followed by a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00680 0 (size (Pos w00680)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00870 0 (size (Pos w00870)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00771 0 (size (Pos w00771)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00620 0 (size (Pos w00620)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00167 0 (size (Pos w00167))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
