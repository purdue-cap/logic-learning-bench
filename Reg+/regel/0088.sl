(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/90) — gt=or(endwith(<num>),<low>)")
(set-info :description "lines with words and ending in a number or lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00016 0 (size (Pos w00016)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00045 0 (size (Pos w00045)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00040 0 (size (Pos w00040)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00944 0 (size (Pos w00944)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00891 0 (size (Pos w00891)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00963 0 (size (Pos w00963))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00967 0 (size (Pos w00967))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00800 0 (size (Pos w00800))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00782 0 (size (Pos w00782))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00963 0 (size (Pos w00963))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01253 0 (size (Pos w01253))))))

(check-synth)
