module {
  func @main() {
    %0 = btor.constant 0 : i256
    %1 = btor.constant 0 : i128
    %2 = btor.constant true
    br ^bb1(%0, %0, %1, %1, %2, %2, %1, %1 : i256, i256, i128, i128, i1, i1, i128, i128)
  ^bb1(%3: i256, %4: i256, %5: i128, %6: i128, %7: i1, %8: i1, %9: i128, %10: i128):  // 2 preds: ^bb0, ^bb1
    %11 = btor.uext %6 : i128 to i256
    %12 = btor.uext %5 : i128 to i256
    %13 = btor.mul %12, %11 : i256
    %14 = btor.constant 0 : i256
    %15 = btor.nd_bv : i1
    %16 = btor.ite %15, %14, %13 : i256
    %17 = btor.uext %10 : i128 to i256
    %18 = btor.uext %9 : i128 to i256
    %19 = btor.mul %18, %17 : i256
    %20 = btor.or %7, %8 : i1
    %21 = btor.ite %20, %19, %4 : i256
    %22 = btor.ite %15, %14, %21 : i256
    %23 = btor.nd_bv : i128
    %24 = btor.nd_bv : i1
    %25 = btor.ite %24, %23, %5 : i128
    %26 = btor.constant 0 : i128
    %27 = btor.ite %15, %26, %25 : i128
    %28 = btor.nd_bv : i128
    %29 = btor.nd_bv : i1
    %30 = btor.ite %29, %28, %6 : i128
    %31 = btor.ite %15, %26, %30 : i128
    %32 = btor.constant true
    %33 = btor.ite %15, %32, %24 : i1
    %34 = btor.ite %15, %32, %29 : i1
    %35 = btor.ite %24, %23, %9 : i128
    %36 = btor.ite %15, %26, %35 : i128
    %37 = btor.ite %29, %28, %10 : i128
    %38 = btor.ite %15, %26, %37 : i128
    %39 = btor.cmp eq, %3, %4 : i256
    %40 = btor.not %39 : i1
    %41 = btor.and %32, %40 : i1
    btor.assert_not(%41)
    br ^bb1(%16, %22, %27, %31, %33, %34, %36, %38 : i256, i256, i128, i128, i1, i1, i128, i128)
  }
}
