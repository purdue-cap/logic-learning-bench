;; Reg+_0043: lines with a character before a letter and lower-case letter
;; source: REGEL (deepregex/43) — gt=concat(<any>,contain(and(<let>,<low>)))
;; examples: 13, constraints: 13, max_len: 2

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x21) ($x27) ($x28) ($x2A) ($x31) ($x3B) ($x40) ($x41) ($x4D) ($x4E) ($x50) ($x5A) ($x5B) ($x61) ($x6B) ($x6D) ($x70) ($x7A)
            ($question R)
            ($plus R)
            ($or R R)
            ($concat R R)
            ($inter R R)
            ($star R)
        )
    )
)

(define-funs-rec
    (
        (Start.Sem ((t Start) (len Int) (s_0 Int) (s_1 Int) (result Bool)) Bool)
        (R.Sem ((t R) (len Int) (s_0 Int) (s_1 Int) (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_2_2 Bool)) Bool)
    )
    (
        (! (match t (
            (($eval t1)
                (or (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_2_2 Bool))
                    (and (= len 0) (R.Sem t1 len s_0 s_1 X_0_0 X_0_1 X_0_2 X_1_1 X_1_2 X_2_2) (= result X_0_0))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_2_2 Bool))
                    (and (= len 1) (R.Sem t1 len s_0 s_1 X_0_0 X_0_1 X_0_2 X_1_1 X_1_2 X_2_2) (= result X_0_1))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_2_2 Bool))
                    (and (= len 2) (R.Sem t1 len s_0 s_1 X_0_0 X_0_1 X_0_2 X_1_1 X_1_2 X_2_2) (= result X_0_2))
                ))
            )
        )) :input (len s_0 s_1) :output (result))
        (! (match t (
            ($any
                (and (= X_0_0 false) (= X_0_1 (< 0 len)) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (< 1 len)) (= X_2_2 false))
            )
            ($x21
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 33))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 33))) (= X_2_2 false))
            )
            ($x27
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 39))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 39))) (= X_2_2 false))
            )
            ($x28
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 40))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 40))) (= X_2_2 false))
            )
            ($x2A
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 42))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 42))) (= X_2_2 false))
            )
            ($x31
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 49))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 49))) (= X_2_2 false))
            )
            ($x3B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 59))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 59))) (= X_2_2 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 64))) (= X_2_2 false))
            )
            ($x41
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 65))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 65))) (= X_2_2 false))
            )
            ($x4D
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 77))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 77))) (= X_2_2 false))
            )
            ($x4E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 78))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 78))) (= X_2_2 false))
            )
            ($x50
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 80))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 80))) (= X_2_2 false))
            )
            ($x5A
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 90))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 90))) (= X_2_2 false))
            )
            ($x5B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 91))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 91))) (= X_2_2 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 97))) (= X_2_2 false))
            )
            ($x6B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 107))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 107))) (= X_2_2 false))
            )
            ($x6D
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 109))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 109))) (= X_2_2 false))
            )
            ($x70
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 112))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 112))) (= X_2_2 false))
            )
            ($x7A
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 122))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 122))) (= X_2_2 false))
            )
            (($or t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_2_2 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_2_2 Bool))
                    (and (R.Sem t1 len s_0 s_1 A_0_0 A_0_1 A_0_2 A_1_1 A_1_2 A_2_2) (R.Sem t2 len s_0 s_1 B_0_0 B_0_1 B_0_2 B_1_1 B_1_2 B_2_2) (and (= X_0_0 (or A_0_0 B_0_0)) (= X_0_1 (or A_0_1 B_0_1)) (= X_0_2 (or A_0_2 B_0_2)) (= X_1_1 (or A_1_1 B_1_1)) (= X_1_2 (or A_1_2 B_1_2)) (= X_2_2 (or A_2_2 B_2_2))))
                )
            )
            (($concat t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_2_2 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_2_2 Bool))
                    (and (R.Sem t1 len s_0 s_1 A_0_0 A_0_1 A_0_2 A_1_1 A_1_2 A_2_2) (R.Sem t2 len s_0 s_1 B_0_0 B_0_1 B_0_2 B_1_1 B_1_2 B_2_2) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (or (and A_0_0 B_0_1) (and A_0_1 B_1_1))) (= X_0_2 (or (and A_0_0 B_0_2) (and A_0_1 B_1_2) (and A_0_2 B_2_2))) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (or (and A_1_1 B_1_2) (and A_1_2 B_2_2))) (= X_2_2 (and A_2_2 B_2_2))))
                )
            )
            (($inter t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_2_2 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_2_2 Bool))
                    (and (R.Sem t1 len s_0 s_1 A_0_0 A_0_1 A_0_2 A_1_1 A_1_2 A_2_2) (R.Sem t2 len s_0 s_1 B_0_0 B_0_1 B_0_2 B_1_1 B_1_2 B_2_2) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (and A_0_1 B_0_1)) (= X_0_2 (and A_0_2 B_0_2)) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (and A_1_2 B_1_2)) (= X_2_2 (and A_2_2 B_2_2))))
                )
            )
            (($question t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_2_2 Bool))
                    (and (R.Sem t1 len s_0 s_1 A_0_0 A_0_1 A_0_2 A_1_1 A_1_2 A_2_2) (and (= X_0_0 true) (= X_0_1 A_0_1) (= X_0_2 A_0_2) (= X_1_1 true) (= X_1_2 A_1_2) (= X_2_2 true)))
                )
            )
            (($plus t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_2_2 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_2_2 Bool))
                    (and (R.Sem t1 len s_0 s_1 A_0_0 A_0_1 A_0_2 A_1_1 A_1_2 A_2_2) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_2_2 true)) (and (= X_0_0 false) (= X_0_1 (and A_0_1 S_1_1)) (= X_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= X_1_1 false) (= X_1_2 (and A_1_2 S_2_2)) (= X_2_2 false)))
                )
            )
            (($star t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_2_2 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_2_2 Bool))
                    (and (R.Sem t1 len s_0 s_1 A_0_0 A_0_1 A_0_2 A_1_1 A_1_2 A_2_2) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_2_2 true)) (and (= X_0_0 S_0_0) (= X_0_1 S_0_1) (= X_0_2 S_0_2) (= X_1_1 S_1_1) (= X_1_2 S_1_2) (= X_2_2 S_2_2)))
                )
            )
        )) :input (len s_0 s_1) :output (X_0_0 X_0_1 X_0_2 X_1_1 X_1_2 X_2_2))
    )
)

(synth-fun match_regex() Start)

(constraint (Start.Sem match_regex 2 59 97 true))
(constraint (Start.Sem match_regex 2 49 97 true))
(constraint (Start.Sem match_regex 2 64 107 true))
(constraint (Start.Sem match_regex 2 42 109 true))
(constraint (Start.Sem match_regex 2 40 112 true))
(constraint (Start.Sem match_regex 2 39 122 true))
(constraint (Start.Sem match_regex 2 91 109 true))
(constraint (Start.Sem match_regex 2 59 65 false))
(constraint (Start.Sem match_regex 2 109 77 false))
(constraint (Start.Sem match_regex 2 107 77 false))
(constraint (Start.Sem match_regex 2 78 80 false))
(constraint (Start.Sem match_regex 2 33 80 false))
(constraint (Start.Sem match_regex 1 90 0 false))
(check-synth)
