;; Reg+_0033: lines which are starting with a lower-case letter or a capital letter
;; source: REGEL (deepregex/33) — gt=startwith(or(<low>,<cap>))
;; examples: 14, constraints: 14, max_len: 2

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x21) ($x30) ($x40) ($x41) ($x61)
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
            ($x30
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 48))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 48))) (= X_2_2 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 64))) (= X_2_2 false))
            )
            ($x41
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 65))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 65))) (= X_2_2 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 97))) (= X_2_2 false))
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

(constraint (Start.Sem match_regex 1 97 0 true))
(constraint (Start.Sem match_regex 1 65 0 true))
(constraint (Start.Sem match_regex 2 97 97 true))
(constraint (Start.Sem match_regex 2 65 65 true))
(constraint (Start.Sem match_regex 2 97 65 true))
(constraint (Start.Sem match_regex 2 65 97 true))
(constraint (Start.Sem match_regex 2 97 48 true))
(constraint (Start.Sem match_regex 1 48 0 false))
(constraint (Start.Sem match_regex 2 48 48 false))
(constraint (Start.Sem match_regex 2 48 97 false))
(constraint (Start.Sem match_regex 2 48 33 false))
(constraint (Start.Sem match_regex 1 33 0 false))
(constraint (Start.Sem match_regex 2 33 48 false))
(constraint (Start.Sem match_regex 1 64 0 false))
(check-synth)
