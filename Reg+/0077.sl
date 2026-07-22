(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/78) — gt=endwith(concat(<num>,contain(<any>)))")
(set-info :description "lines that end with a number then after has a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00135 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00126 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00507 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00933 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01437 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01134 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01119 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00219 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00012 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00741 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00009 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00102 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00599 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
