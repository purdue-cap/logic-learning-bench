(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/115) — gt=repeatatleast(concat(<num>,contain(<any>)),1)")
(set-info :description "lines with words with a number followed by a character at least once in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00135 0 (size (Pos w00135)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00879 0 (size (Pos w00879)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01466 0 (size (Pos w01466)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01465 0 (size (Pos w01465)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01531 0 (size (Pos w01531)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00883 0 (size (Pos w00883)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01343 0 (size (Pos w01343)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01371 0 (size (Pos w01371))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01287 0 (size (Pos w01287))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01508 0 (size (Pos w01508))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00976 0 (size (Pos w00976))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00374 0 (size (Pos w00374))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01056 0 (size (Pos w01056))))))

(check-synth)
