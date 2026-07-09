(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/86) — gt=concat(<low>,contain(and(<vow>,<any>)))")
(set-info :description "lines with a lower-case letter before vowel and character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00524 0 (size (Pos w00524)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00514 0 (size (Pos w00514)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00513 0 (size (Pos w00513)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00760 0 (size (Pos w00760)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00794 0 (size (Pos w00794)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00581 0 (size (Pos w00581)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00797 0 (size (Pos w00797)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00172 0 (size (Pos w00172))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00450 0 (size (Pos w00450))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00186 0 (size (Pos w00186))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00206 0 (size (Pos w00206))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00207 0 (size (Pos w00207))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00213 0 (size (Pos w00213))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
