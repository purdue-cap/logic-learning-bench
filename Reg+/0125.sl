(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/131) — gt=or(or(<m0>,<low>),<let>)")
(set-info :description "lines with words that include a letter , the string '!' , or a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00041 0 (size (Pos w00041)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00024 0 (size (Pos w00024)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00056 0 (size (Pos w00056)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00050 0 (size (Pos w00050)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00172 0 (size (Pos w00172))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00258 0 (size (Pos w00258))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00013 0 (size (Pos w00013))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
