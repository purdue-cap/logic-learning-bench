(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/95) — gt=startwith(contain(<low>))")
(set-info :description "lines with words and a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00752 0 (size (Pos w00752)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00306 0 (size (Pos w00306)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01083 0 (size (Pos w01083)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01082 0 (size (Pos w01082)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00375 0 (size (Pos w00375)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00488 0 (size (Pos w00488)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00169 0 (size (Pos w00169))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00184 0 (size (Pos w00184))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01193 0 (size (Pos w01193))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01451 0 (size (Pos w01451))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01443 0 (size (Pos w01443))))))

(check-synth)
