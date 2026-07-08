;; Reg+_0038: lines that have a letter and then a lower-case letter
;; source: REGEL (deepregex/38) — gt=concat(<low>,contain(contain(<let>)))
;; examples: 13, constraints: 13, max_len: 2

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x21) ($x3B) ($x41) ($x43) ($x44) ($x45) ($x61) ($x62) ($x63) ($x64) ($x65) ($x66) ($x67) ($x7A)
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
            ($x3B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 59))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 59))) (= X_2_2 false))
            )
            ($x41
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 65))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 65))) (= X_2_2 false))
            )
            ($x43
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 67))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 67))) (= X_2_2 false))
            )
            ($x44
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 68))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 68))) (= X_2_2 false))
            )
            ($x45
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 69))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 69))) (= X_2_2 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 97))) (= X_2_2 false))
            )
            ($x62
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 98))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 98))) (= X_2_2 false))
            )
            ($x63
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 99))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 99))) (= X_2_2 false))
            )
            ($x64
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 100))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 100))) (= X_2_2 false))
            )
            ($x65
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 101))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 101))) (= X_2_2 false))
            )
            ($x66
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 102))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 102))) (= X_2_2 false))
            )
            ($x67
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 103))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 103))) (= X_2_2 false))
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

(constraint (Start.Sem match_regex 2 97 97 true))
(constraint (Start.Sem match_regex 2 98 98 true))
(constraint (Start.Sem match_regex 2 99 99 true))
(constraint (Start.Sem match_regex 2 100 101 true))
(constraint (Start.Sem match_regex 2 101 102 true))
(constraint (Start.Sem match_regex 2 103 101 true))
(constraint (Start.Sem match_regex 2 122 101 true))
(constraint (Start.Sem match_regex 2 65 97 false))
(constraint (Start.Sem match_regex 2 65 65 false))
(constraint (Start.Sem match_regex 2 67 67 false))
(constraint (Start.Sem match_regex 2 68 68 false))
(constraint (Start.Sem match_regex 2 69 59 false))
(constraint (Start.Sem match_regex 2 33 59 false))
(check-synth)
