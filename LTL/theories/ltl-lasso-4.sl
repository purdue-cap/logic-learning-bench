(provide Pos LTL LTL.Asp LTL.Sem
next
future
prefix
start
p0
p1
p2
p3
ltl.p0
ltl.p1
ltl.p2
ltl.p3
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

(declare-term-types
 ((LTL 0))
 (((ltl.p0)
   (ltl.p1)
   (ltl.p2)
   (ltl.p3)
   (ltl.not LTL)
   (ltl.X LTL)
   (ltl.G LTL)
   (ltl.F LTL)
   (ltl.and LTL LTL)
   (ltl.or LTL LTL)
   (ltl.=> LTL LTL)
   (ltl.U LTL LTL))))

(define-aspects LTL.Asp
  (record (model Model) (t Pos)))

(define-semantics
  ((LTL.Sem (phi LTL) (asp LTL.Asp)))
  ((match phi
     ((ltl.p0) (p0 (t asp)))
     ((ltl.p1) (p1 (t asp)))
     ((ltl.p2) (p2 (t asp)))
     ((ltl.p3) (p3 (t asp)))
     ((ltl.not x)
      (not (LTL.Sem x asp)))
     ((ltl.X x)
      (LTL.Sem x (LTL.Asp (model asp) (next (t asp)))))
     ((ltl.G x)
      (forall ((k (univ (Pos (model asp)))))
        (or (not (future (t asp) k))
            (LTL.Sem x (LTL.Asp (model asp) k)))))
     ((ltl.F x)
      (exists ((k (univ (Pos (model asp)))))
        (and (future (t asp) k)
             (LTL.Sem x (LTL.Asp (model asp) k)))))
     ((ltl.and x y)
      (and (LTL.Sem x asp) (LTL.Sem y asp)))
     ((ltl.or x y)
      (or (LTL.Sem x asp) (LTL.Sem y asp)))
     ((ltl.=> x y)
      (or (not (LTL.Sem x asp)) (LTL.Sem y asp)))
     ((ltl.U x y)
      (exists ((k (univ (Pos (model asp)))))
        (and
          (future (t asp) k)
          (LTL.Sem y (LTL.Asp (model asp) k))
          (forall ((j (univ (Pos (model asp)))))
            (or (not (prefix (t asp) k j))
                (LTL.Sem x (LTL.Asp (model asp) j))))))))))