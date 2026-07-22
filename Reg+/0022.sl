(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/22) — gt=contain(or(or(<low>,<vow>),<num>))")
(set-info :description "lines that contain words with a lower-case letter , a vowel , or a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00041 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00048 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00054 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01282 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00021 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00009 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00007 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00006 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
