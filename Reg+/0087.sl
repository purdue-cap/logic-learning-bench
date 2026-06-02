(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/89) — gt=contain(concat(<vow>,contain(<num>)))")
(set-info :description "lines with a vowel before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00221 0 (size (Pos w00221)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00563 0 (size (Pos w00563)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00366 0 (size (Pos w00366)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00286 0 (size (Pos w00286)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00303 0 (size (Pos w00303)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00596 0 (size (Pos w00596)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00573 0 (size (Pos w00573)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01109 0 (size (Pos w01109))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01377 0 (size (Pos w01377))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01231 0 (size (Pos w01231))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00788 0 (size (Pos w00788))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01234 0 (size (Pos w01234))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01317 0 (size (Pos w01317))))))

(check-synth)
