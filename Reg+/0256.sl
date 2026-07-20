(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/59) — gt=star(or(or(<let>,or(<num>,<_>)),or(concat(<%>,concat(<s>,concat(<a>,concat(<m>,concat(<p>,concat(<l>,concat(<e>,concat(<1>,<%>)))))))),concat(<%>,concat(<s>,concat(<a>,concat(<m>,concat(<p>,concat(<l>,concat(<e>,concat(<2>,<%>)))))))))))")
(set-info :description "We like to validate following with Regex: bulletpoint string may contain 0 or more alphabets, digits, underscore OR bulletpoint string may contain literals '%sample1%' or '%sample2%' (0 or more times in any order)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00689 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00681 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00289 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00715 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00561 head tail))))

(check-synth)
