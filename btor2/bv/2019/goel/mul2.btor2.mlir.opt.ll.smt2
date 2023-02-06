(declare-fun main@%_304_0 () (_ BitVec 64))
(declare-fun main@%_305_0 () Bool)
(declare-fun main@%_306_0 () (_ BitVec 64))
(declare-fun main@%_307_0 () Bool)
(declare-fun main@%_316_0 () Bool)
(declare-fun main@%_287_0 () Bool)
(declare-fun main@%_290_0 () (_ BitVec 64))
(declare-fun main@%_291_0 () Bool)
(declare-fun main@%_299_0 () Bool)
(declare-fun main@%_268_0 () (_ BitVec 64))
(declare-fun main@%_269_0 () Bool)
(declare-fun main@%_272_0 () (_ BitVec 64))
(declare-fun main@%_273_0 () Bool)
(declare-fun main@%_281_0 () Bool)
(declare-fun main@%_250_0 () (_ BitVec 64))
(declare-fun main@%_251_0 () Bool)
(declare-fun main@%_254_0 () (_ BitVec 64))
(declare-fun main@%_255_0 () Bool)
(declare-fun main@%_263_0 () Bool)
(declare-fun main@%_232_0 () (_ BitVec 64))
(declare-fun main@%_233_0 () Bool)
(declare-fun main@%_236_0 () (_ BitVec 64))
(declare-fun main@%_237_0 () Bool)
(declare-fun main@%_245_0 () Bool)
(declare-fun main@%_214_0 () (_ BitVec 64))
(declare-fun main@%_215_0 () Bool)
(declare-fun main@%_218_0 () (_ BitVec 64))
(declare-fun main@%_219_0 () Bool)
(declare-fun main@%_227_0 () Bool)
(declare-fun main@%_196_0 () (_ BitVec 64))
(declare-fun main@%_197_0 () Bool)
(declare-fun main@%_200_0 () (_ BitVec 64))
(declare-fun main@%_101_0 () Bool)
(declare-fun main@%_74_0 () (_ BitVec 64))
(declare-fun main@%_83_0 () Bool)
(declare-fun main@%_52_0 () (_ BitVec 64))
(declare-fun main@%_53_0 () Bool)
(declare-fun main@%_201_0 () Bool)
(declare-fun main@%_56_0 () (_ BitVec 64))
(declare-fun main@%_209_0 () Bool)
(declare-fun main@%_57_0 () Bool)
(declare-fun main@%_65_0 () Bool)
(declare-fun main@%_35_0 () Bool)
(declare-fun main@%_183_0 () Bool)
(declare-fun main@%_38_0 () (_ BitVec 64))
(declare-fun main@%_191_0 () Bool)
(declare-fun main@%_39_0 () Bool)
(declare-fun main@%_34_0 () (_ BitVec 64))
(declare-fun main@%_182_0 () (_ BitVec 64))
(declare-fun main@%_286_0 () (_ BitVec 64))
(declare-fun sea.sp0_0 () (_ BitVec 64))
(declare-fun main@%_22_0 () Bool)
(declare-fun main@%_178_0 () (_ BitVec 64))
(declare-fun main@%_12_0 () Bool)
(declare-fun main@%_0_0 () Bool)
(declare-fun main@%_147_0 () Bool)
(declare-fun main@%_6_0 () Bool)
(declare-fun main@%_160_0 () (_ BitVec 64))
(declare-fun main@%_75_0 () Bool)
(declare-fun main@%_5_0 () (_ BitVec 64))
(declare-fun main@%_155_0 () Bool)
(declare-fun main@%_71_0 () Bool)
(declare-fun main@%_2_0 () Bool)
(declare-fun main@%_146_0 () (_ BitVec 64))
(declare-fun main@%_29_0 () Bool)
(declare-fun main@%_70_0 () (_ BitVec 64))
(declare-fun main@%_1_0 () (_ BitVec 64))
(declare-fun main@%_93_0 () Bool)
(declare-fun main@%_21_0 () (_ BitVec 64))
(declare-fun main@%_173_0 () Bool)
(declare-fun main@%_18_0 () Bool)
(declare-fun main@%_165_0 () Bool)
(declare-fun main@%_17_0 () (_ BitVec 64))
(declare-fun main@%_164_0 () (_ BitVec 64))
(declare-fun main@%_47_0 () Bool)
(declare-fun main@%_92_0 () (_ BitVec 64))
(declare-fun main@%_89_0 () Bool)
(declare-fun main@%_88_0 () (_ BitVec 64))
(declare-fun main@%_119_0 () Bool)
(declare-fun main@%_111_0 () Bool)
(declare-fun main@%_110_0 () (_ BitVec 64))
(declare-fun main@%_107_0 () Bool)
(declare-fun main@%_106_0 () (_ BitVec 64))
(declare-fun main@%_137_0 () Bool)
(declare-fun main@%_129_0 () Bool)
(declare-fun main@%_128_0 () (_ BitVec 64))
(declare-fun main@%_125_0 () Bool)
(declare-fun main@%_124_0 () (_ BitVec 64))
(declare-fun main@%_143_0 () Bool)
(declare-fun main@%_142_0 () (_ BitVec 64))
(declare-fun main@%_161_0 () Bool)
(declare-fun main@%_179_0 () Bool)

(assert (let ((a!1 (bvmul ((_ zero_extend 64)
                    (ite main@%_0_0
                         #x0000000000000000
                         (ite main@%_6_0 main@%_5_0 #x0000000000000000)))
                  ((_ zero_extend 64)
                    (ite main@%_0_0
                         #x0000000000000000
                         (ite main@%_2_0 main@%_1_0 #x0000000000000000)))))
      (a!3 (ite main@%_12_0
                #x0000000000000000
                (ite main@%_22_0
                     main@%_21_0
                     (ite main@%_0_0
                          #x0000000000000000
                          (ite main@%_6_0 main@%_5_0 #x0000000000000000)))))
      (a!4 (ite main@%_12_0
                #x0000000000000000
                (ite main@%_18_0
                     main@%_17_0
                     (ite main@%_0_0
                          #x0000000000000000
                          (ite main@%_2_0 main@%_1_0 #x0000000000000000))))))
(let ((a!2 (ite main@%_12_0
                #x00000000000000000000000000000000
                (ite (ite main@%_0_0 true (or main@%_2_0 main@%_6_0))
                     a!1
                     #x00000000000000000000000000000000)))
      (a!7 (bvmul ((_ zero_extend 64)
                    (ite main@%_29_0
                         #x0000000000000000
                         (ite main@%_39_0 main@%_38_0 a!3)))
                  ((_ zero_extend 64)
                    (ite main@%_29_0
                         #x0000000000000000
                         (ite main@%_35_0 main@%_34_0 a!4)))))
      (a!9 (ite main@%_47_0
                #x0000000000000000
                (ite main@%_57_0
                     main@%_56_0
                     (ite main@%_29_0
                          #x0000000000000000
                          (ite main@%_39_0 main@%_38_0 a!3)))))
      (a!10 (ite main@%_47_0
                 #x0000000000000000
                 (ite main@%_53_0
                      main@%_52_0
                      (ite main@%_29_0
                           #x0000000000000000
                           (ite main@%_35_0 main@%_34_0 a!4))))))
(let ((a!5 (ite main@%_29_0
                #x00000000000000000000000000000000
                (ite (ite main@%_12_0 true (or main@%_18_0 main@%_22_0))
                     (bvmul ((_ zero_extend 64) a!3) ((_ zero_extend 64) a!4))
                     a!2)))
      (a!13 (bvmul ((_ zero_extend 64)
                     (ite main@%_65_0
                          #x0000000000000000
                          (ite main@%_75_0 main@%_74_0 a!9)))
                   ((_ zero_extend 64)
                     (ite main@%_65_0
                          #x0000000000000000
                          (ite main@%_71_0 main@%_70_0 a!10)))))
      (a!15 (ite main@%_83_0
                 #x0000000000000000
                 (ite main@%_93_0
                      main@%_92_0
                      (ite main@%_65_0
                           #x0000000000000000
                           (ite main@%_75_0 main@%_74_0 a!9)))))
      (a!16 (ite main@%_83_0
                 #x0000000000000000
                 (ite main@%_89_0
                      main@%_88_0
                      (ite main@%_65_0
                           #x0000000000000000
                           (ite main@%_71_0 main@%_70_0 a!10))))))
(let ((a!6 (= (ite main@%_29_0
                   #x00000000000000000000000000000000
                   (bvmul ((_ zero_extend 64) a!3) ((_ zero_extend 64) a!4)))
              a!5))
      (a!8 (ite main@%_47_0
                #x00000000000000000000000000000000
                (ite (ite main@%_29_0 true (or main@%_35_0 main@%_39_0))
                     a!7
                     a!5)))
      (a!19 (bvmul ((_ zero_extend 64)
                     (ite main@%_101_0
                          #x0000000000000000
                          (ite main@%_111_0 main@%_110_0 a!15)))
                   ((_ zero_extend 64)
                     (ite main@%_101_0
                          #x0000000000000000
                          (ite main@%_107_0 main@%_106_0 a!16)))))
      (a!21 (ite main@%_119_0
                 #x0000000000000000
                 (ite main@%_129_0
                      main@%_128_0
                      (ite main@%_101_0
                           #x0000000000000000
                           (ite main@%_111_0 main@%_110_0 a!15)))))
      (a!22 (ite main@%_119_0
                 #x0000000000000000
                 (ite main@%_125_0
                      main@%_124_0
                      (ite main@%_101_0
                           #x0000000000000000
                           (ite main@%_107_0 main@%_106_0 a!16))))))
(let ((a!11 (ite main@%_65_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_47_0 true (or main@%_53_0 main@%_57_0))
                      (bvmul ((_ zero_extend 64) a!9) ((_ zero_extend 64) a!10))
                      a!8)))
      (a!25 (bvmul ((_ zero_extend 64)
                     (ite main@%_137_0
                          #x0000000000000000
                          (ite main@%_147_0 main@%_146_0 a!21)))
                   ((_ zero_extend 64)
                     (ite main@%_137_0
                          #x0000000000000000
                          (ite main@%_143_0 main@%_142_0 a!22)))))
      (a!27 (ite main@%_155_0
                 #x0000000000000000
                 (ite main@%_165_0
                      main@%_164_0
                      (ite main@%_137_0
                           #x0000000000000000
                           (ite main@%_147_0 main@%_146_0 a!21)))))
      (a!28 (ite main@%_155_0
                 #x0000000000000000
                 (ite main@%_161_0
                      main@%_160_0
                      (ite main@%_137_0
                           #x0000000000000000
                           (ite main@%_143_0 main@%_142_0 a!22))))))
(let ((a!12 (= (ite main@%_65_0
                    #x00000000000000000000000000000000
                    (bvmul ((_ zero_extend 64) a!9) ((_ zero_extend 64) a!10)))
               a!11))
      (a!14 (ite main@%_83_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_65_0 true (or main@%_71_0 main@%_75_0))
                      a!13
                      a!11)))
      (a!31 (bvmul ((_ zero_extend 64)
                     (ite main@%_173_0
                          #x0000000000000000
                          (ite main@%_183_0 main@%_182_0 a!27)))
                   ((_ zero_extend 64)
                     (ite main@%_173_0
                          #x0000000000000000
                          (ite main@%_179_0 main@%_178_0 a!28)))))
      (a!33 (ite main@%_191_0
                 #x0000000000000000
                 (ite main@%_201_0
                      main@%_200_0
                      (ite main@%_173_0
                           #x0000000000000000
                           (ite main@%_183_0 main@%_182_0 a!27)))))
      (a!34 (ite main@%_191_0
                 #x0000000000000000
                 (ite main@%_197_0
                      main@%_196_0
                      (ite main@%_173_0
                           #x0000000000000000
                           (ite main@%_179_0 main@%_178_0 a!28))))))
(let ((a!17 (ite main@%_101_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_83_0 true (or main@%_89_0 main@%_93_0))
                      (bvmul ((_ zero_extend 64) a!15)
                             ((_ zero_extend 64) a!16))
                      a!14)))
      (a!37 (bvmul ((_ zero_extend 64)
                     (ite main@%_209_0
                          #x0000000000000000
                          (ite main@%_219_0 main@%_218_0 a!33)))
                   ((_ zero_extend 64)
                     (ite main@%_209_0
                          #x0000000000000000
                          (ite main@%_215_0 main@%_214_0 a!34)))))
      (a!39 (ite main@%_227_0
                 #x0000000000000000
                 (ite main@%_237_0
                      main@%_236_0
                      (ite main@%_209_0
                           #x0000000000000000
                           (ite main@%_219_0 main@%_218_0 a!33)))))
      (a!40 (ite main@%_227_0
                 #x0000000000000000
                 (ite main@%_233_0
                      main@%_232_0
                      (ite main@%_209_0
                           #x0000000000000000
                           (ite main@%_215_0 main@%_214_0 a!34))))))
(let ((a!18 (= (ite main@%_101_0
                    #x00000000000000000000000000000000
                    (bvmul ((_ zero_extend 64) a!15) ((_ zero_extend 64) a!16)))
               a!17))
      (a!20 (ite main@%_119_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_101_0 true (or main@%_107_0 main@%_111_0))
                      a!19
                      a!17)))
      (a!43 (bvmul ((_ zero_extend 64)
                     (ite main@%_245_0
                          #x0000000000000000
                          (ite main@%_255_0 main@%_254_0 a!39)))
                   ((_ zero_extend 64)
                     (ite main@%_245_0
                          #x0000000000000000
                          (ite main@%_251_0 main@%_250_0 a!40)))))
      (a!45 (ite main@%_263_0
                 #x0000000000000000
                 (ite main@%_273_0
                      main@%_272_0
                      (ite main@%_245_0
                           #x0000000000000000
                           (ite main@%_255_0 main@%_254_0 a!39)))))
      (a!46 (ite main@%_263_0
                 #x0000000000000000
                 (ite main@%_269_0
                      main@%_268_0
                      (ite main@%_245_0
                           #x0000000000000000
                           (ite main@%_251_0 main@%_250_0 a!40))))))
(let ((a!23 (ite main@%_137_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_119_0 true (or main@%_125_0 main@%_129_0))
                      (bvmul ((_ zero_extend 64) a!21)
                             ((_ zero_extend 64) a!22))
                      a!20)))
      (a!49 (bvmul ((_ zero_extend 64)
                     (ite main@%_281_0
                          #x0000000000000000
                          (ite main@%_291_0 main@%_290_0 a!45)))
                   ((_ zero_extend 64)
                     (ite main@%_281_0
                          #x0000000000000000
                          (ite main@%_287_0 main@%_286_0 a!46)))))
      (a!51 ((_ zero_extend 64)
              (ite main@%_307_0
                   main@%_306_0
                   (ite main@%_281_0
                        #x0000000000000000
                        (ite main@%_291_0 main@%_290_0 a!45)))))
      (a!52 ((_ zero_extend 64)
              (ite main@%_305_0
                   main@%_304_0
                   (ite main@%_281_0
                        #x0000000000000000
                        (ite main@%_287_0 main@%_286_0 a!46))))))
(let ((a!24 (= (ite main@%_137_0
                    #x00000000000000000000000000000000
                    (bvmul ((_ zero_extend 64) a!21) ((_ zero_extend 64) a!22)))
               a!23))
      (a!26 (ite main@%_155_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_137_0 true (or main@%_143_0 main@%_147_0))
                      a!25
                      a!23))))
(let ((a!29 (ite main@%_173_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_155_0 true (or main@%_161_0 main@%_165_0))
                      (bvmul ((_ zero_extend 64) a!27)
                             ((_ zero_extend 64) a!28))
                      a!26))))
(let ((a!30 (= (ite main@%_173_0
                    #x00000000000000000000000000000000
                    (bvmul ((_ zero_extend 64) a!27) ((_ zero_extend 64) a!28)))
               a!29))
      (a!32 (ite main@%_191_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_173_0 true (or main@%_179_0 main@%_183_0))
                      a!31
                      a!29))))
(let ((a!35 (ite main@%_209_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_191_0 true (or main@%_197_0 main@%_201_0))
                      (bvmul ((_ zero_extend 64) a!33)
                             ((_ zero_extend 64) a!34))
                      a!32))))
(let ((a!36 (= (ite main@%_209_0
                    #x00000000000000000000000000000000
                    (bvmul ((_ zero_extend 64) a!33) ((_ zero_extend 64) a!34)))
               a!35))
      (a!38 (ite main@%_227_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_209_0 true (or main@%_215_0 main@%_219_0))
                      a!37
                      a!35))))
(let ((a!41 (ite main@%_245_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_227_0 true (or main@%_233_0 main@%_237_0))
                      (bvmul ((_ zero_extend 64) a!39)
                             ((_ zero_extend 64) a!40))
                      a!38))))
(let ((a!42 (= (ite main@%_245_0
                    #x00000000000000000000000000000000
                    (bvmul ((_ zero_extend 64) a!39) ((_ zero_extend 64) a!40)))
               a!41))
      (a!44 (ite main@%_263_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_245_0 true (or main@%_251_0 main@%_255_0))
                      a!43
                      a!41))))
(let ((a!47 (ite main@%_281_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_263_0 true (or main@%_269_0 main@%_273_0))
                      (bvmul ((_ zero_extend 64) a!45)
                             ((_ zero_extend 64) a!46))
                      a!44))))
(let ((a!48 (= (ite main@%_281_0
                    #x00000000000000000000000000000000
                    (bvmul ((_ zero_extend 64) a!45) ((_ zero_extend 64) a!46)))
               a!47))
      (a!50 (ite main@%_299_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_281_0 true (or main@%_287_0 main@%_291_0))
                      a!49
                      a!47))))
(let ((a!53 (ite main@%_316_0
                 #x00000000000000000000000000000000
                 (ite (ite main@%_299_0 true (or main@%_305_0 main@%_307_0))
                      (ite main@%_299_0
                           #x00000000000000000000000000000000
                           (bvmul a!51 a!52))
                      a!50))))
(let ((a!54 (= (ite main@%_316_0
                    #x00000000000000000000000000000000
                    (ite main@%_299_0
                         #x00000000000000000000000000000000
                         (bvmul a!51 a!52)))
               a!53)))
(let ((a!55 (ite a!48
                 (ite (= (ite main@%_299_0
                              #x00000000000000000000000000000000
                              a!49)
                         a!50)
                      (and true (xor a!54 true))
                      true)
                 true)))
(let ((a!56 (ite a!42
                 (ite (= (ite main@%_263_0
                              #x00000000000000000000000000000000
                              a!43)
                         a!44)
                      a!55
                      true)
                 true)))
(let ((a!57 (ite a!36
                 (ite (= (ite main@%_227_0
                              #x00000000000000000000000000000000
                              a!37)
                         a!38)
                      a!56
                      true)
                 true)))
(let ((a!58 (ite a!30
                 (ite (= (ite main@%_191_0
                              #x00000000000000000000000000000000
                              a!31)
                         a!32)
                      a!57
                      true)
                 true)))
(let ((a!59 (ite a!24
                 (ite (= (ite main@%_155_0
                              #x00000000000000000000000000000000
                              a!25)
                         a!26)
                      a!58
                      true)
                 true)))
(let ((a!60 (ite a!18
                 (ite (= (ite main@%_119_0
                              #x00000000000000000000000000000000
                              a!19)
                         a!20)
                      a!59
                      true)
                 true)))
(let ((a!61 (ite a!12
                 (ite (= (ite main@%_83_0
                              #x00000000000000000000000000000000
                              a!13)
                         a!14)
                      a!60
                      true)
                 true)))
(let ((a!62 (ite a!6
                 (ite (= (ite main@%_47_0
                              #x00000000000000000000000000000000
                              a!7)
                         a!8)
                      a!61
                      true)
                 true)))
  (and (= #b000 ((_ extract 2 0) sea.sp0_0))
       (bvule sea.sp0_0 #x00000000c0000000)
       (bvuge sea.sp0_0 #x00000000bf700000)
       (ite (= (ite main@%_12_0 #x00000000000000000000000000000000 a!1) a!2)
            a!62
            true)))))))))))))))))))))))))))))))
(check-sat)
