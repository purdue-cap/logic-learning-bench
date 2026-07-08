;; Reg+_0125: lines with words that include a letter , the string '!' , or a lower-case letter
;; source: REGEL (deepregex/131) — gt=or(or(<m0>,<low>),<let>)
;; examples: 13, constraints: 13, max_len: 2

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x21) ($x31) ($x32) ($x33) ($x41) ($x47) ($x53) ($x61) ($x64) ($x65) ($x71) ($x79)
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
            ($x31
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 49))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 49))) (= X_2_2 false))
            )
            ($x32
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 50))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 50))) (= X_2_2 false))
            )
            ($x33
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 51))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 51))) (= X_2_2 false))
            )
            ($x41
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 65))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 65))) (= X_2_2 false))
            )
            ($x47
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 71))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 71))) (= X_2_2 false))
            )
            ($x53
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 83))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 83))) (= X_2_2 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 97))) (= X_2_2 false))
            )
            ($x64
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 100))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 100))) (= X_2_2 false))
            )
            ($x65
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 101))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 101))) (= X_2_2 false))
            )
            ($x71
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 113))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 113))) (= X_2_2 false))
            )
            ($x79
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 121))) (= X_0_2 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 121))) (= X_2_2 false))
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
(constraint (Start.Sem match_regex 1 33 0 true))
(constraint (Start.Sem match_regex 1 101 0 true))
(constraint (Start.Sem match_regex 1 71 0 true))
(constraint (Start.Sem match_regex 1 121 0 true))
(constraint (Start.Sem match_regex 1 113 0 true))
(constraint (Start.Sem match_regex 2 33 33 false))
(constraint (Start.Sem match_regex 2 97 97 false))
(constraint (Start.Sem match_regex 2 65 97 false))
(constraint (Start.Sem match_regex 2 100 83 false))
(constraint (Start.Sem match_regex 2 49 50 false))
(constraint (Start.Sem match_regex 1 51 0 false))
(check-synth)
