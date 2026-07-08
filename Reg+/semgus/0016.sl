;; Reg+_0016: lines without a character , a vowel , or a capital letter
;; source: REGEL (deepregex/16) — gt=not(or(or(<any>,<vow>),<cap>))
;; examples: 7, constraints: 7, max_len: 1

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x31) ($x40) ($x41) ($x57) ($x61) ($x62) ($x65)
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
        (Start.Sem ((t Start) (len Int) (s_0 Int) (result Bool)) Bool)
        (R.Sem ((t R) (len Int) (s_0 Int) (X_0_0 Bool) (X_0_1 Bool) (X_1_1 Bool)) Bool)
    )
    (
        (! (match t (
            (($eval t1)
                (or (exists ((X_0_0 Bool) (X_0_1 Bool) (X_1_1 Bool))
                    (and (= len 0) (R.Sem t1 len s_0 X_0_0 X_0_1 X_1_1) (= result X_0_0))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_1_1 Bool))
                    (and (= len 1) (R.Sem t1 len s_0 X_0_0 X_0_1 X_1_1) (= result X_0_1))
                ))
            )
        )) :input (len s_0) :output (result))
        (! (match t (
            ($any
                (and (= X_0_0 false) (= X_0_1 (< 0 len)) (= X_1_1 false))
            )
            ($x31
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 49))) (= X_1_1 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_1_1 false))
            )
            ($x41
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 65))) (= X_1_1 false))
            )
            ($x57
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 87))) (= X_1_1 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_1_1 false))
            )
            ($x62
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 98))) (= X_1_1 false))
            )
            ($x65
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 101))) (= X_1_1 false))
            )
            (($or t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (R.Sem t2 len s_0 B_0_0 B_0_1 B_1_1) (and (= X_0_0 (or A_0_0 B_0_0)) (= X_0_1 (or A_0_1 B_0_1)) (= X_1_1 (or A_1_1 B_1_1))))
                )
            )
            (($concat t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (R.Sem t2 len s_0 B_0_0 B_0_1 B_1_1) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (or (and A_0_0 B_0_1) (and A_0_1 B_1_1))) (= X_1_1 (and A_1_1 B_1_1))))
                )
            )
            (($inter t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (R.Sem t2 len s_0 B_0_0 B_0_1 B_1_1) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (and A_0_1 B_0_1)) (= X_1_1 (and A_1_1 B_1_1))))
                )
            )
            (($question t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (and (= X_0_0 true) (= X_0_1 A_0_1) (= X_1_1 true)))
                )
            )
            (($plus t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_1_1 true)) (and (= X_0_0 false) (= X_0_1 (and A_0_1 S_1_1)) (= X_1_1 false)))
                )
            )
            (($star t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_1_1 true)) (and (= X_0_0 S_0_0) (= X_0_1 S_0_1) (= X_1_1 S_1_1)))
                )
            )
        )) :input (len s_0) :output (X_0_0 X_0_1 X_1_1))
    )
)

(synth-fun match_regex() Start)

(constraint (Start.Sem match_regex 1 97 false))
(constraint (Start.Sem match_regex 1 101 false))
(constraint (Start.Sem match_regex 1 98 false))
(constraint (Start.Sem match_regex 1 65 false))
(constraint (Start.Sem match_regex 1 87 false))
(constraint (Start.Sem match_regex 1 49 false))
(constraint (Start.Sem match_regex 1 64 false))
(check-synth)
