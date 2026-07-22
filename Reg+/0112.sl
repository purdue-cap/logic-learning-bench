(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/117) — gt=contain(or(or(<vow>,<any>),<num>))")
(set-info :description "lines having either a vowel , character , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00041 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00570 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01210 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00964 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00564 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01229 (RegLan.Sem r (RegLan.Asp head tail))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
