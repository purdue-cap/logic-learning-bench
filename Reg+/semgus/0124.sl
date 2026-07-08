;; Reg+_0124: lines that have words with a character or a capital letter
;; source: REGEL (deepregex/130) — gt=or(<cap>,<any>)
;; examples: 13, constraints: 13, max_len: 3

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x23) ($x31) ($x32) ($x34) ($x40) ($x43) ($x44) ($x4F) ($x50) ($x51) ($x61) ($x63) ($x64)
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
            ($x23
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 35))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 35))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 35))) (= X_3_3 false))
            )
            ($x31
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 49))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 49))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 49))) (= X_3_3 false))
            )
            ($x32
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 50))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 50))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 50))) (= X_3_3 false))
            )
            ($x34
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 52))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 52))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 52))) (= X_3_3 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 64))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 64))) (= X_3_3 false))
            )
            ($x43
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 67))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 67))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 67))) (= X_3_3 false))
            )
            ($x44
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 68))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 68))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 68))) (= X_3_3 false))
            )
            ($x4F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 79))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 79))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 79))) (= X_3_3 false))
            )
            ($x50
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 80))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 80))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 80))) (= X_3_3 false))
            )
            ($x51
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 81))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 81))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 81))) (= X_3_3 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 97))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 97))) (= X_3_3 false))
            )
            ($x63
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 99))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 99))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 99))) (= X_3_3 false))
            )
            ($x64
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 100))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 100))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 100))) (= X_3_3 false))
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
(constraint (Start.Sem match_regex 1 67 0 0 true))
(constraint (Start.Sem match_regex 1 81 0 0 true))
(constraint (Start.Sem match_regex 1 49 0 0 true))
(constraint (Start.Sem match_regex 1 64 0 0 true))
(constraint (Start.Sem match_regex 1 79 0 0 true))
(constraint (Start.Sem match_regex 1 80 0 0 true))
(constraint (Start.Sem match_regex 2 49 50 0 false))
(constraint (Start.Sem match_regex 2 97 99 0 false))
(constraint (Start.Sem match_regex 2 67 68 0 false))
(constraint (Start.Sem match_regex 2 52 68 0 false))
(constraint (Start.Sem match_regex 2 64 35 0 false))
(constraint (Start.Sem match_regex 3 100 49 68 false))
(check-synth)
