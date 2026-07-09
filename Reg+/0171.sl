(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/178) — gt=and(<let>,<any>)")
(set-info :description "lines with words with letter and containing only a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00041 0 (size (Pos w00041)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00049 0 (size (Pos w00049)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00047 0 (size (Pos w00047)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00053 0 (size (Pos w00053)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00452 0 (size (Pos w00452))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
