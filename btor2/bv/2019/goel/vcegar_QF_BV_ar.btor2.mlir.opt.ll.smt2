;; Produced with Z3_solver_to_string()
(declare-fun sea.sp0_0 () (_ BitVec 64))
(assert (= #b000 ((_ extract 2 0) sea.sp0_0)))
(assert (bvule sea.sp0_0 #x00000000c0000000))
(assert (bvuge sea.sp0_0 #x00000000bf700000))
(assert (and true false))

(check-sat)
