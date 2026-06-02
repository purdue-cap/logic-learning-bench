(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/88) — gt=concat(<num>,contain(concat(<low>,contain(<let>))))")
(set-info :description "lines in which a number comes prior to a lower-case letter , and followed by a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00403 0 (size (Pos w00403)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00404 0 (size (Pos w00404)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00414 0 (size (Pos w00414)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00418 0 (size (Pos w00418)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01012 0 (size (Pos w01012)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00681 0 (size (Pos w00681)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00668 0 (size (Pos w00668)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00399 0 (size (Pos w00399))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00764 0 (size (Pos w00764))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00447 0 (size (Pos w00447))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 0 (size (Pos w00382))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01106 0 (size (Pos w01106))))))

(check-synth)
