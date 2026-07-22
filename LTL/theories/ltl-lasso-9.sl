(provide Pos LTL LTL.Asp LTL.Sem
next
future
prefix
start
p0
p1
p2
p3
p4
p5
p6
p7
p8
ltl.p0
ltl.p1
ltl.p2
ltl.p3
ltl.p4
ltl.p5
ltl.p6
ltl.p7
ltl.p8
ltl.not
ltl.X
ltl.G
ltl.F
ltl.and
ltl.or
ltl.=>
ltl.U)


(declare-sort Pos 0)
(declare-fun next (Pos) Pos)
(declare-fun future (Pos Pos) Bool)
(declare-fun prefix (Pos Pos Pos) Bool)
(declare-fun start () Pos)
(declare-fun p0 (Pos) Bool)
(declare-fun p1 (Pos) Bool)
(declare-fun p2 (Pos) Bool)
(declare-fun p3 (Pos) Bool)
(declare-fun p4 (Pos) Bool)
(declare-fun p5 (Pos) Bool)
(declare-fun p6 (Pos) Bool)
(declare-fun p7 (Pos) Bool)
(declare-fun p8 (Pos) Bool)

(declare-term-types
 ((LTL 0))
 (((ltl.p0)
   (ltl.p1)
   (ltl.p2)
   (ltl.p3)
   (ltl.p4)
   (ltl.p5)
   (ltl.p6)
   (ltl.p7)
   (ltl.p8)
   (ltl.not LTL)
   (ltl.X LTL)
   (ltl.G LTL)
   (ltl.F LTL)
   (ltl.and LTL LTL)
   (ltl.or LTL LTL)
   (ltl.=> LTL LTL)
   (ltl.U LTL LTL))))

; Canonical Boolean algebraic axioms for pruning.
(declare-axiom (= (ltl.and x y) (ltl.and y x)))
(declare-axiom (= (ltl.and (ltl.and x y) z) (ltl.and x (ltl.and y z))))
(declare-axiom (= (ltl.and x x) x))
(declare-axiom (= (ltl.or x y) (ltl.or y x)))
(declare-axiom (= (ltl.or (ltl.or x y) z) (ltl.or x (ltl.or y z))))
(declare-axiom (= (ltl.or x x) x))


(define-aspects LTL.Asp
  (record (t Pos)))

(define-semantics
  ((LTL.Sem (phi LTL) (asp LTL.Asp)))
  ((match phi
     ((ltl.p0) (p0 (t asp)))
     ((ltl.p1) (p1 (t asp)))
     ((ltl.p2) (p2 (t asp)))
     ((ltl.p3) (p3 (t asp)))
     ((ltl.p4) (p4 (t asp)))
     ((ltl.p5) (p5 (t asp)))
     ((ltl.p6) (p6 (t asp)))
     ((ltl.p7) (p7 (t asp)))
     ((ltl.p8) (p8 (t asp)))
     ((ltl.not x)
      (not (LTL.Sem x asp)))
     ((ltl.X x)
      (LTL.Sem x (LTL.Asp (next (t asp)))))
     ((ltl.G x)
      (forall ((k Pos))
        (or (not (future (t asp) k))
            (LTL.Sem x (LTL.Asp k)))))
     ((ltl.F x)
      (exists ((k Pos))
        (and (future (t asp) k)
             (LTL.Sem x (LTL.Asp k)))))
     ((ltl.and x y)
      (and (LTL.Sem x asp) (LTL.Sem y asp)))
     ((ltl.or x y)
      (or (LTL.Sem x asp) (LTL.Sem y asp)))
     ((ltl.=> x y)
      (or (not (LTL.Sem x asp)) (LTL.Sem y asp)))
     ((ltl.U x y)
      (exists ((k Pos))
        (and
          (future (t asp) k)
          (LTL.Sem y (LTL.Asp k))
          (forall ((j Pos))
            (or (not (prefix (t asp) k j))
                (LTL.Sem x (LTL.Asp j))))))))))
