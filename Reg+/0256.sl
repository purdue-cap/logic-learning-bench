(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/59) — gt=star(or(or(<let>,or(<num>,<_>)),or(concat(<%>,concat(<s>,concat(<a>,concat(<m>,concat(<p>,concat(<l>,concat(<e>,concat(<1>,<%>)))))))),concat(<%>,concat(<s>,concat(<a>,concat(<m>,concat(<p>,concat(<l>,concat(<e>,concat(<2>,<%>)))))))))))")
(set-info :description "We like to validate following with Regex: bulletpoint string may contain 0 or more alphabets, digits, underscore OR bulletpoint string may contain literals '%sample1%' or '%sample2%' (0 or more times in any order)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00689 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00681 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00289 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00715 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00561 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
