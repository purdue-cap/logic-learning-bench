(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/84) — gt=endwith(repeatatleast(<vow>,2))")
(set-info :description "items terminating withe a vowel at least twice .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01439 0 (size (Pos w01439)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01509 0 (size (Pos w01509)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00658 0 (size (Pos w00658)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01497 0 (size (Pos w01497)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00807 0 (size (Pos w00807)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00598 0 (size (Pos w00598)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00813 0 (size (Pos w00813))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01533 0 (size (Pos w01533))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 0 (size (Pos w00382))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00802 0 (size (Pos w00802))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01124 0 (size (Pos w01124))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00969 0 (size (Pos w00969))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
