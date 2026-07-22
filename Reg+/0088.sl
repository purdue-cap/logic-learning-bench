(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/90) — gt=or(endwith(<num>),<low>)")
(set-info :description "lines with words and ending in a number or lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00016 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00045 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00040 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00944 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00891 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00963 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00967 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00800 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00782 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00963 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01253 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
