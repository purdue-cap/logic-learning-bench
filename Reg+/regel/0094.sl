(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/97) — gt=contain(concat(<vow>,contain(<num>)))")
(set-info :description "lines that contain a vowel before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00220 0 (size (Pos w00220)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01354 0 (size (Pos w01354)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00303 0 (size (Pos w00303)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00287 0 (size (Pos w00287)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00276 0 (size (Pos w00276)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00808 0 (size (Pos w00808)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00931 0 (size (Pos w00931)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00300 0 (size (Pos w00300))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00015 0 (size (Pos w00015))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00593 0 (size (Pos w00593))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00594 0 (size (Pos w00594))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01471 0 (size (Pos w01471))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01489 0 (size (Pos w01489))))))

(check-synth)
