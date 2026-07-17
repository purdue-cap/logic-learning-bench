(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/22) — gt=contain(or(or(<low>,<vow>),<num>))")
(set-info :description "lines that contain words with a lower-case letter , a vowel , or a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00041 0 (size (Pos w00041)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00048 0 (size (Pos w00048)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00054 0 (size (Pos w00054)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01282 0 (size (Pos w01282)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00021 0 (size (Pos w00021))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 0 (size (Pos w00009))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00006 0 (size (Pos w00006))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
