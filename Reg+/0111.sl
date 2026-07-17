(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/116) — gt=contain(or(or(<low>,<let>),<any>))")
(set-info :description "lines containing either lower-case letter , a letter , or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00046 0 (size (Pos w00046)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00028 0 (size (Pos w00028)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01233 0 (size (Pos w01233)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01057 0 (size (Pos w01057)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00134 0 (size (Pos w00134)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00347 0 (size (Pos w00347)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00090 0 (size (Pos w00090)))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
