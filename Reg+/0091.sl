(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/94) — gt=startwith(or(<num>,<let>))")
(set-info :description "lines starting in words with a number or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01135 0 (size (Pos w01135)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00143 0 (size (Pos w00143)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00395 0 (size (Pos w00395)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00748 0 (size (Pos w00748)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00425 0 (size (Pos w00425)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00417 0 (size (Pos w00417)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00661 0 (size (Pos w00661))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00008 0 (size (Pos w00008))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00004 0 (size (Pos w00004))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00005 0 (size (Pos w00005))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
