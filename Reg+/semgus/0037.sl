;; Reg+_0037: a letter or a numbre appears at the end of the lines
;; source: REGEL (deepregex/37) — gt=contain(endwith(or(<let>,<num>)))
;; examples: 14, constraints: 14, max_len: 3

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x21) ($x23) ($x30) ($x36) ($x40) ($x61)
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
        (Start.Sem ((t Start) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (result Bool)) Bool)
        (R.Sem ((t R) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_3_3 Bool)) Bool)
    )
    (
        (! (match t (
            (($eval t1)
                (or (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_3_3 Bool))
                    (and (= len 0) (R.Sem t1 len s_0 s_1 s_2 X_0_0 X_0_1 X_0_2 X_0_3 X_1_1 X_1_2 X_1_3 X_2_2 X_2_3 X_3_3) (= result X_0_0))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_3_3 Bool))
                    (and (= len 1) (R.Sem t1 len s_0 s_1 s_2 X_0_0 X_0_1 X_0_2 X_0_3 X_1_1 X_1_2 X_1_3 X_2_2 X_2_3 X_3_3) (= result X_0_1))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_3_3 Bool))
                    (and (= len 2) (R.Sem t1 len s_0 s_1 s_2 X_0_0 X_0_1 X_0_2 X_0_3 X_1_1 X_1_2 X_1_3 X_2_2 X_2_3 X_3_3) (= result X_0_2))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_3_3 Bool))
                    (and (= len 3) (R.Sem t1 len s_0 s_1 s_2 X_0_0 X_0_1 X_0_2 X_0_3 X_1_1 X_1_2 X_1_3 X_2_2 X_2_3 X_3_3) (= result X_0_3))
                ))
            )
        )) :input (len s_0 s_1 s_2) :output (result))
        (! (match t (
            ($any
                (and (= X_0_0 false) (= X_0_1 (< 0 len)) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (< 1 len)) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (< 2 len)) (= X_3_3 false))
            )
            ($x21
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 33))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 33))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 33))) (= X_3_3 false))
            )
            ($x23
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 35))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 35))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 35))) (= X_3_3 false))
            )
            ($x30
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 48))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 48))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 48))) (= X_3_3 false))
            )
            ($x36
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 54))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 54))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 54))) (= X_3_3 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 64))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 64))) (= X_3_3 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 97))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 97))) (= X_3_3 false))
            )
            (($or t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (R.Sem t2 len s_0 s_1 s_2 B_0_0 B_0_1 B_0_2 B_0_3 B_1_1 B_1_2 B_1_3 B_2_2 B_2_3 B_3_3) (and (= X_0_0 (or A_0_0 B_0_0)) (= X_0_1 (or A_0_1 B_0_1)) (= X_0_2 (or A_0_2 B_0_2)) (= X_0_3 (or A_0_3 B_0_3)) (= X_1_1 (or A_1_1 B_1_1)) (= X_1_2 (or A_1_2 B_1_2)) (= X_1_3 (or A_1_3 B_1_3)) (= X_2_2 (or A_2_2 B_2_2)) (= X_2_3 (or A_2_3 B_2_3)) (= X_3_3 (or A_3_3 B_3_3))))
                )
            )
            (($concat t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (R.Sem t2 len s_0 s_1 s_2 B_0_0 B_0_1 B_0_2 B_0_3 B_1_1 B_1_2 B_1_3 B_2_2 B_2_3 B_3_3) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (or (and A_0_0 B_0_1) (and A_0_1 B_1_1))) (= X_0_2 (or (and A_0_0 B_0_2) (and A_0_1 B_1_2) (and A_0_2 B_2_2))) (= X_0_3 (or (and A_0_0 B_0_3) (and A_0_1 B_1_3) (and A_0_2 B_2_3) (and A_0_3 B_3_3))) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (or (and A_1_1 B_1_2) (and A_1_2 B_2_2))) (= X_1_3 (or (and A_1_1 B_1_3) (and A_1_2 B_2_3) (and A_1_3 B_3_3))) (= X_2_2 (and A_2_2 B_2_2)) (= X_2_3 (or (and A_2_2 B_2_3) (and A_2_3 B_3_3))) (= X_3_3 (and A_3_3 B_3_3))))
                )
            )
            (($inter t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (R.Sem t2 len s_0 s_1 s_2 B_0_0 B_0_1 B_0_2 B_0_3 B_1_1 B_1_2 B_1_3 B_2_2 B_2_3 B_3_3) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (and A_0_1 B_0_1)) (= X_0_2 (and A_0_2 B_0_2)) (= X_0_3 (and A_0_3 B_0_3)) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (and A_1_2 B_1_2)) (= X_1_3 (and A_1_3 B_1_3)) (= X_2_2 (and A_2_2 B_2_2)) (= X_2_3 (and A_2_3 B_2_3)) (= X_3_3 (and A_3_3 B_3_3))))
                )
            )
            (($question t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (and (= X_0_0 true) (= X_0_1 A_0_1) (= X_0_2 A_0_2) (= X_0_3 A_0_3) (= X_1_1 true) (= X_1_2 A_1_2) (= X_1_3 A_1_3) (= X_2_2 true) (= X_2_3 A_2_3) (= X_3_3 true)))
                )
            )
            (($plus t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_0_3 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_1_3 Bool) (S_2_2 Bool) (S_2_3 Bool) (S_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= S_2_2 true) (= S_2_3 (and A_2_3 S_3_3)) (= S_3_3 true)) (and (= X_0_0 false) (= X_0_1 (and A_0_1 S_1_1)) (= X_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= X_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= X_1_1 false) (= X_1_2 (and A_1_2 S_2_2)) (= X_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= X_2_2 false) (= X_2_3 (and A_2_3 S_3_3)) (= X_3_3 false)))
                )
            )
            (($star t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_3_3 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_0_3 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_1_3 Bool) (S_2_2 Bool) (S_2_3 Bool) (S_3_3 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 A_0_0 A_0_1 A_0_2 A_0_3 A_1_1 A_1_2 A_1_3 A_2_2 A_2_3 A_3_3) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= S_2_2 true) (= S_2_3 (and A_2_3 S_3_3)) (= S_3_3 true)) (and (= X_0_0 S_0_0) (= X_0_1 S_0_1) (= X_0_2 S_0_2) (= X_0_3 S_0_3) (= X_1_1 S_1_1) (= X_1_2 S_1_2) (= X_1_3 S_1_3) (= X_2_2 S_2_2) (= X_2_3 S_2_3) (= X_3_3 S_3_3)))
                )
            )
        )) :input (len s_0 s_1 s_2) :output (X_0_0 X_0_1 X_0_2 X_0_3 X_1_1 X_1_2 X_1_3 X_2_2 X_2_3 X_3_3))
    )
)

(synth-fun match_regex() Start)

(constraint (Start.Sem match_regex 1 97 0 0 true))
(constraint (Start.Sem match_regex 1 48 0 0 true))
(constraint (Start.Sem match_regex 3 33 97 48 true))
(constraint (Start.Sem match_regex 3 97 97 64 true))
(constraint (Start.Sem match_regex 2 48 97 0 true))
(constraint (Start.Sem match_regex 2 48 48 0 true))
(constraint (Start.Sem match_regex 3 54 54 54 true))
(constraint (Start.Sem match_regex 1 64 0 0 false))
(constraint (Start.Sem match_regex 1 33 0 0 false))
(constraint (Start.Sem match_regex 1 35 0 0 false))
(constraint (Start.Sem match_regex 2 64 64 0 false))
(constraint (Start.Sem match_regex 2 33 33 0 false))
(constraint (Start.Sem match_regex 3 33 33 33 false))
(constraint (Start.Sem match_regex 0 0 0 0 false))
(check-synth)
