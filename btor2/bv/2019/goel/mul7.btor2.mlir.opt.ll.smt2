(declare-fun main@%_361_0 () (_ BitVec 128))
(declare-fun main@%_360_0 () (_ BitVec 128))
(declare-fun main@%_342_0 () Bool)
(declare-fun main@%_343_0 () Bool)
(declare-fun main@%_341_0 () (_ BitVec 128))
(declare-fun main@%_340_0 () (_ BitVec 128))
(declare-fun main@%_330_0 () Bool)
(declare-fun main@%_332_0 () Bool)
(declare-fun main@%_322_0 () (_ BitVec 128))
(declare-fun main@%_320_0 () (_ BitVec 128))
(declare-fun main@%_310_0 () Bool)
(declare-fun main@%_312_0 () Bool)
(declare-fun main@%_302_0 () (_ BitVec 128))
(declare-fun main@%_300_0 () (_ BitVec 128))
(declare-fun main@%_290_0 () Bool)
(declare-fun main@%_292_0 () Bool)
(declare-fun main@%_282_0 () (_ BitVec 128))
(declare-fun main@%_132_0 () Bool)
(declare-fun main@%_120_0 () (_ BitVec 128))
(declare-fun main@%_92_0 () Bool)
(declare-fun main@%_80_0 () (_ BitVec 128))
(declare-fun main@%_72_0 () Bool)
(declare-fun main@%_122_0 () (_ BitVec 128))
(declare-fun main@%_60_0 () (_ BitVec 128))
(declare-fun main@%_50_0 () Bool)
(declare-fun main@%_100_0 () (_ BitVec 128))
(declare-fun sea.sp0_0 () (_ BitVec 64))
(declare-fun main@%_112_0 () Bool)
(declare-fun main@%_8_0 () (_ BitVec 128))
(declare-fun main@%_240_0 () (_ BitVec 128))
(declare-fun main@%_102_0 () (_ BitVec 128))
(declare-fun main@%_40_0 () (_ BitVec 128))
(declare-fun main@%_62_0 () (_ BitVec 128))
(declare-fun main@%_6_0 () (_ BitVec 128))
(declare-fun main@%_4_0 () (_ BitVec 10))
(declare-fun main@%_162_0 () (_ BitVec 128))
(declare-fun main@%_70_0 () Bool)
(declare-fun main@%_14_0 () Bool)
(declare-fun main@%_12_0 () Bool)
(declare-fun main@%_252_0 () Bool)
(declare-fun main@%_110_0 () Bool)
(declare-fun main@%_52_0 () Bool)
(declare-fun main@%_82_0 () (_ BitVec 128))
(declare-fun main@%_21_0 () (_ BitVec 128))
(declare-fun main@%_23_0 () (_ BitVec 128))
(declare-fun main@%_260_0 () (_ BitVec 128))
(declare-fun main@%_90_0 () Bool)
(declare-fun main@%_33_0 () Bool)
(declare-fun main@%_31_0 () Bool)
(declare-fun main@%_272_0 () Bool)
(declare-fun main@%_42_0 () (_ BitVec 128))
(declare-fun main@%_280_0 () (_ BitVec 128))
(declare-fun main@%_130_0 () Bool)
(declare-fun main@%_140_0 () (_ BitVec 128))
(declare-fun main@%_142_0 () (_ BitVec 128))
(declare-fun main@%_152_0 () Bool)
(declare-fun main@%_150_0 () Bool)
(declare-fun main@%_160_0 () (_ BitVec 128))
(declare-fun main@%_172_0 () Bool)
(declare-fun main@%_170_0 () Bool)
(declare-fun main@%_180_0 () (_ BitVec 128))
(declare-fun main@%_182_0 () (_ BitVec 128))
(declare-fun main@%_192_0 () Bool)
(declare-fun main@%_190_0 () Bool)
(declare-fun main@%_200_0 () (_ BitVec 128))
(declare-fun main@%_202_0 () (_ BitVec 128))
(declare-fun main@%_212_0 () Bool)
(declare-fun main@%_210_0 () Bool)
(declare-fun main@%_220_0 () (_ BitVec 128))
(declare-fun main@%_222_0 () (_ BitVec 128))
(declare-fun main@%_232_0 () Bool)
(declare-fun main@%_230_0 () Bool)
(declare-fun main@%_242_0 () (_ BitVec 128))
(declare-fun main@%_250_0 () Bool)
(declare-fun main@%_262_0 () (_ BitVec 128))
(declare-fun main@%_270_0 () Bool)

(assert (let ((a!1 (and (= main@%_6_0 #x00000000000000000000000000badb0b)
                (bvugt main@%_4_0 #b1111101000)
                (= main@%_8_0 #xffffffffffffffffffffffffdeadbeef)))
      (a!2 (bvmul ((_ zero_extend 128)
                    (ite main@%_14_0
                         main@%_6_0
                         #x00000000000000000000000000000000))
                  ((_ zero_extend 128)
                    (ite main@%_12_0
                         main@%_8_0
                         #x00000000000000000000000000000000))))
      (a!4 (bvmul ((_ zero_extend 128)
                    (ite main@%_33_0
                         main@%_21_0
                         (ite main@%_14_0
                              main@%_6_0
                              #x00000000000000000000000000000000)))
                  ((_ zero_extend 128)
                    (ite main@%_31_0
                         main@%_23_0
                         (ite main@%_12_0
                              main@%_8_0
                              #x00000000000000000000000000000000)))))
      (a!7 (ite main@%_52_0
                main@%_40_0
                (ite main@%_33_0
                     main@%_21_0
                     (ite main@%_14_0
                          main@%_6_0
                          #x00000000000000000000000000000000))))
      (a!8 (ite main@%_50_0
                main@%_42_0
                (ite main@%_31_0
                     main@%_23_0
                     (ite main@%_12_0
                          main@%_8_0
                          #x00000000000000000000000000000000)))))
(let ((a!3 (bvadd a!2
                  (ite (and (= main@%_21_0 #x00000000000000000000000000badb0b)
                            (bvugt main@%_4_0 #b1111101000)
                            (= main@%_23_0 #xffffffffffffffffffffffffdeadbeef))
                       #x0000000000000000000000000000000000000000000000000000000000000001
                       #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!5 (bvadd a!4
                  (ite (and (= main@%_40_0 #x00000000000000000000000000badb0b)
                            (bvugt main@%_4_0 #b1111101000)
                            (= main@%_42_0 #xffffffffffffffffffffffffdeadbeef))
                       #x0000000000000000000000000000000000000000000000000000000000000001
                       #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!9 (bvadd (bvmul ((_ zero_extend 128) a!7) ((_ zero_extend 128) a!8))
                  (ite (and (= main@%_60_0 #x00000000000000000000000000badb0b)
                            (bvugt main@%_4_0 #b1111101000)
                            (= main@%_62_0 #xffffffffffffffffffffffffdeadbeef))
                       #x0000000000000000000000000000000000000000000000000000000000000001
                       #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!10 (bvmul ((_ zero_extend 128) (ite main@%_72_0 main@%_60_0 a!7))
                   ((_ zero_extend 128) (ite main@%_70_0 main@%_62_0 a!8))))
      (a!13 (bvmul ((_ zero_extend 128)
                     (ite main@%_92_0
                          main@%_80_0
                          (ite main@%_72_0 main@%_60_0 a!7)))
                   ((_ zero_extend 128)
                     (ite main@%_90_0
                          main@%_82_0
                          (ite main@%_70_0 main@%_62_0 a!8)))))
      (a!15 (ite main@%_112_0
                 main@%_100_0
                 (ite main@%_92_0 main@%_80_0 (ite main@%_72_0 main@%_60_0 a!7))))
      (a!16 (ite main@%_110_0
                 main@%_102_0
                 (ite main@%_90_0 main@%_82_0 (ite main@%_70_0 main@%_62_0 a!8)))))
(let ((a!6 (ite (or main@%_31_0 main@%_33_0)
                a!5
                (ite (or main@%_12_0 main@%_14_0)
                     a!3
                     (ite a!1
                          #x0000000000000000000000000000000000000000000000000000000000000001
                          #x0000000000000000000000000000000000000000000000000000000000000000))))
      (a!11 (bvadd a!10
                   (ite (and (= main@%_80_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_82_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!14 (bvadd a!13
                   (ite (and (= main@%_100_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_102_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!17 (bvadd (bvmul ((_ zero_extend 128) a!15) ((_ zero_extend 128) a!16))
                   (ite (and (= main@%_120_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_122_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!19 (bvmul ((_ zero_extend 128) (ite main@%_132_0 main@%_120_0 a!15))
                   ((_ zero_extend 128) (ite main@%_130_0 main@%_122_0 a!16))))
      (a!21 (bvmul ((_ zero_extend 128)
                     (ite main@%_152_0
                          main@%_140_0
                          (ite main@%_132_0 main@%_120_0 a!15)))
                   ((_ zero_extend 128)
                     (ite main@%_150_0
                          main@%_142_0
                          (ite main@%_130_0 main@%_122_0 a!16)))))
      (a!24 (ite main@%_172_0
                 main@%_160_0
                 (ite main@%_152_0
                      main@%_140_0
                      (ite main@%_132_0 main@%_120_0 a!15))))
      (a!25 (ite main@%_170_0
                 main@%_162_0
                 (ite main@%_150_0
                      main@%_142_0
                      (ite main@%_130_0 main@%_122_0 a!16)))))
(let ((a!12 (ite (or main@%_70_0 main@%_72_0)
                 a!11
                 (ite (or main@%_50_0 main@%_52_0) a!9 a!6)))
      (a!20 (bvadd a!19
                   (ite (and (= main@%_140_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_142_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!22 (bvadd a!21
                   (ite (and (= main@%_160_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_162_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!26 (bvadd (bvmul ((_ zero_extend 128) a!24) ((_ zero_extend 128) a!25))
                   (ite (and (= main@%_180_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_182_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!27 (bvmul ((_ zero_extend 128) (ite main@%_192_0 main@%_180_0 a!24))
                   ((_ zero_extend 128) (ite main@%_190_0 main@%_182_0 a!25))))
      (a!30 (bvmul ((_ zero_extend 128)
                     (ite main@%_212_0
                          main@%_200_0
                          (ite main@%_192_0 main@%_180_0 a!24)))
                   ((_ zero_extend 128)
                     (ite main@%_210_0
                          main@%_202_0
                          (ite main@%_190_0 main@%_182_0 a!25)))))
      (a!32 (ite main@%_232_0
                 main@%_220_0
                 (ite main@%_212_0
                      main@%_200_0
                      (ite main@%_192_0 main@%_180_0 a!24))))
      (a!33 (ite main@%_230_0
                 main@%_222_0
                 (ite main@%_210_0
                      main@%_202_0
                      (ite main@%_190_0 main@%_182_0 a!25)))))
(let ((a!18 (ite (or main@%_110_0 main@%_112_0)
                 a!17
                 (ite (or main@%_90_0 main@%_92_0) a!14 a!12)))
      (a!28 (bvadd a!27
                   (ite (and (= main@%_200_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_202_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!31 (bvadd a!30
                   (ite (and (= main@%_220_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_222_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!34 (bvadd (bvmul ((_ zero_extend 128) a!32) ((_ zero_extend 128) a!33))
                   (ite (and (= main@%_240_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_242_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!36 (bvmul ((_ zero_extend 128) (ite main@%_252_0 main@%_240_0 a!32))
                   ((_ zero_extend 128) (ite main@%_250_0 main@%_242_0 a!33))))
      (a!38 (bvmul ((_ zero_extend 128)
                     (ite main@%_272_0
                          main@%_260_0
                          (ite main@%_252_0 main@%_240_0 a!32)))
                   ((_ zero_extend 128)
                     (ite main@%_270_0
                          main@%_262_0
                          (ite main@%_250_0 main@%_242_0 a!33)))))
      (a!41 (ite main@%_292_0
                 main@%_280_0
                 (ite main@%_272_0
                      main@%_260_0
                      (ite main@%_252_0 main@%_240_0 a!32))))
      (a!42 (ite main@%_290_0
                 main@%_282_0
                 (ite main@%_270_0
                      main@%_262_0
                      (ite main@%_250_0 main@%_242_0 a!33)))))
(let ((a!23 (ite (or main@%_150_0 main@%_152_0)
                 a!22
                 (ite (or main@%_130_0 main@%_132_0) a!20 a!18)))
      (a!37 (bvadd a!36
                   (ite (and (= main@%_260_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_262_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!39 (bvadd a!38
                   (ite (and (= main@%_280_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_282_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!43 (bvadd (bvmul ((_ zero_extend 128) a!41) ((_ zero_extend 128) a!42))
                   (ite (and (= main@%_300_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_302_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!44 (bvmul ((_ zero_extend 128) (ite main@%_312_0 main@%_300_0 a!41))
                   ((_ zero_extend 128) (ite main@%_310_0 main@%_302_0 a!42))))
      (a!47 (bvmul ((_ zero_extend 128)
                     (ite main@%_332_0
                          main@%_320_0
                          (ite main@%_312_0 main@%_300_0 a!41)))
                   ((_ zero_extend 128)
                     (ite main@%_330_0
                          main@%_322_0
                          (ite main@%_310_0 main@%_302_0 a!42)))))
      (a!49 ((_ zero_extend 128)
              (ite main@%_343_0
                   main@%_340_0
                   (ite main@%_332_0
                        main@%_320_0
                        (ite main@%_312_0 main@%_300_0 a!41)))))
      (a!50 ((_ zero_extend 128)
              (ite main@%_342_0
                   main@%_341_0
                   (ite main@%_330_0
                        main@%_322_0
                        (ite main@%_310_0 main@%_302_0 a!42))))))
(let ((a!29 (ite (or main@%_190_0 main@%_192_0)
                 a!28
                 (ite (or main@%_170_0 main@%_172_0) a!26 a!23)))
      (a!45 (bvadd a!44
                   (ite (and (= main@%_320_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_322_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!48 (bvadd a!47
                   (ite (and (= main@%_340_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_341_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000)))
      (a!51 (bvadd (bvmul a!49 a!50)
                   (ite (and (= main@%_360_0 #x00000000000000000000000000badb0b)
                             (bvugt main@%_4_0 #b1111101000)
                             (= main@%_361_0 #xffffffffffffffffffffffffdeadbeef))
                        #x0000000000000000000000000000000000000000000000000000000000000001
                        #x0000000000000000000000000000000000000000000000000000000000000000))))
(let ((a!35 (ite (or main@%_230_0 main@%_232_0)
                 a!34
                 (ite (or main@%_210_0 main@%_212_0) a!31 a!29)))
      (a!52 (xor (= (bvmul a!49 a!50)
                    (ite (or main@%_342_0 main@%_343_0) a!51 a!47))
                 true)))
(let ((a!40 (ite (or main@%_270_0 main@%_272_0)
                 a!39
                 (ite (or main@%_250_0 main@%_252_0) a!37 a!35))))
(let ((a!46 (ite (or main@%_310_0 main@%_312_0)
                 a!45
                 (ite (or main@%_290_0 main@%_292_0) a!43 a!40))))
(let ((a!53 (ite (= a!47 (ite (or main@%_330_0 main@%_332_0) a!48 a!46))
                 (and true a!52)
                 true)))
(let ((a!54 (ite (= (bvmul ((_ zero_extend 128) a!41)
                           ((_ zero_extend 128) a!42))
                    (ite (or main@%_290_0 main@%_292_0) a!43 a!40))
                 (ite (= a!44 a!46) a!53 true)
                 true)))
(let ((a!55 (ite (= a!36 (ite (or main@%_250_0 main@%_252_0) a!37 a!35))
                 (ite (= a!38 a!40) a!54 true)
                 true)))
(let ((a!56 (ite (= (bvmul ((_ zero_extend 128) a!32)
                           ((_ zero_extend 128) a!33))
                    a!35)
                 a!55
                 true)))
(let ((a!57 (ite (= a!30 (ite (or main@%_210_0 main@%_212_0) a!31 a!29))
                 a!56
                 true)))
(let ((a!58 (ite (= (bvmul ((_ zero_extend 128) a!24)
                           ((_ zero_extend 128) a!25))
                    (ite (or main@%_170_0 main@%_172_0) a!26 a!23))
                 (ite (= a!27 a!29) a!57 true)
                 true)))
(let ((a!59 (ite (= a!19 (ite (or main@%_130_0 main@%_132_0) a!20 a!18))
                 (ite (= a!21 a!23) a!58 true)
                 true)))
(let ((a!60 (ite (= (bvmul ((_ zero_extend 128) a!15)
                           ((_ zero_extend 128) a!16))
                    a!18)
                 a!59
                 true)))
(let ((a!61 (ite (= a!13 (ite (or main@%_90_0 main@%_92_0) a!14 a!12))
                 a!60
                 true)))
(let ((a!62 (ite (= (bvmul ((_ zero_extend 128) a!7) ((_ zero_extend 128) a!8))
                    (ite (or main@%_50_0 main@%_52_0) a!9 a!6))
                 (ite (= a!10 a!12) a!61 true)
                 true)))
(let ((a!63 (ite (= a!2
                    (ite (or main@%_12_0 main@%_14_0)
                         a!3
                         (ite a!1
                              #x0000000000000000000000000000000000000000000000000000000000000001
                              #x0000000000000000000000000000000000000000000000000000000000000000)))
                 (ite (= a!4 a!6) a!62 true)
                 true)))
  (and (= #b000 ((_ extract 2 0) sea.sp0_0))
       (bvule sea.sp0_0 #x00000000c0000000)
       (bvuge sea.sp0_0 #x00000000bf700000)
       (ite a!1 true a!63))))))))))))))))))))))))
(check-sat)
