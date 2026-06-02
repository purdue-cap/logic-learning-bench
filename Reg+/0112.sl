(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/117) — gt=contain(or(or(<vow>,<any>),<num>))")
(set-info :description "lines having either a vowel , character , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00041 0 (size (Pos w00041)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00570 0 (size (Pos w00570)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01210 0 (size (Pos w01210)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01011 0 (size (Pos w01011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00964 0 (size (Pos w00964)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00564 0 (size (Pos w00564)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01229 0 (size (Pos w01229)))))

(check-synth)
