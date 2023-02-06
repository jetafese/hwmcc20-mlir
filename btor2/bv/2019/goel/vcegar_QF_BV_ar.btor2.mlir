module {
  func @main() {
    %0 = btor.constant 1 : i2501
    %1 = btor.constant 0 : i2501
    br ^bb1(%0, %1 : i2501, i2501)
  ^bb1(%2: i2501, %3: i2501):  // 2 preds: ^bb0, ^bb1
    %4 = btor.add %3, %2 : i2501
    %5 = btor.constant 100 : i32
    %6 = btor.uext %5 : i32 to i2501
    %7 = btor.cmp ult, %2, %6 : i2501
    %8 = btor.ite %7, %4, %2 : i2501
    %9 = btor.constant 200 : i32
    %10 = btor.uext %9 : i32 to i2501
    %11 = btor.cmp ult, %2, %10 : i2501
    %12 = btor.not %11 : i1
    %13 = btor.constant true
    %14 = btor.and %13, %12 : i1
    btor.assert_not(%14)
    br ^bb1(%8, %2 : i2501, i2501)
  }
}
