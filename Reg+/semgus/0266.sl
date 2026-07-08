;; Reg+_0266: I need a regular expression to validate single digit within range of [1-5] followed by alphabet [A-C] and followed by optional alphabet [X-Z]
;; source: REGEL (stackoverflow/70) — gt=concat(or(<1>,or(<2>,or(<3>,or(<4>,<5>)))),concat(or(<A>,or(<B>,<C>)),optional(or(<X>,or(<Y>,<Z>)))))
;; examples: 3, constraints: 3, max_len: 3

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x31) ($x32) ($x37) ($x41) ($x42) ($x5A)
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
            ($x31
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 49))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 49))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 49))) (= X_3_3 false))
            )
            ($x32
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 50))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 50))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 50))) (= X_3_3 false))
            )
            ($x37
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 55))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 55))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 55))) (= X_3_3 false))
            )
            ($x41
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 65))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 65))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 65))) (= X_3_3 false))
            )
            ($x42
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 66))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 66))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 66))) (= X_3_3 false))
            )
            ($x5A
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 90))) (= X_0_2 false) (= X_0_3 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 90))) (= X_1_3 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 90))) (= X_3_3 false))
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

(constraint (Start.Sem match_regex 2 49 65 0 true))
(constraint (Start.Sem match_regex 3 50 66 90 true))
(constraint (Start.Sem match_regex 2 55 66 0 false))
(check-synth)
