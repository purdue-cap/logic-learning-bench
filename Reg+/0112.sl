(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/117) — gt=contain(or(or(<vow>,<any>),<num>))")
(set-info :description "lines having either a vowel , character , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00041 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00570 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01210 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00964 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00564 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01229 head tail)))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
