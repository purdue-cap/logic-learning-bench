(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/1) — gt=concat(<cap>,contain(or(or(<any>,<low>),<m0>)))")
(set-info :description "items with an upper case letter preceding either '!' , a small letter , or a character .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00162 0 (size (Pos w00162)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00172 0 (size (Pos w00172)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00164 0 (size (Pos w00164)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00176 0 (size (Pos w00176)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00187 0 (size (Pos w00187)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00177 0 (size (Pos w00177)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00202 0 (size (Pos w00202)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00017 0 (size (Pos w00017))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
