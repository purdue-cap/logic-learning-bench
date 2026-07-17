(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/113) — gt=contain(or(<any>,<cap>))")
(set-info :description "lines containing character or a capital")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01179 0 (size (Pos w01179)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00076 0 (size (Pos w00076)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00377 0 (size (Pos w00377)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01406 0 (size (Pos w01406)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01446 0 (size (Pos w01446)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00629 0 (size (Pos w00629)))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
