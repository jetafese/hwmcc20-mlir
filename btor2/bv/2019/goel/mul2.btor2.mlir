module {
  func @main() {
    %0 = btor.constant 0 : i128
    %1 = btor.constant 0 : i64
    %2 = btor.constant true
    br ^bb1(%0, %0, %1, %1, %2, %2, %1, %1 : i128, i128, i64, i64, i1, i1, i64, i64)
  ^bb1(%3: i128, %4: i128, %5: i64, %6: i64, %7: i1, %8: i1, %9: i64, %10: i64):  // 2 preds: ^bb0, ^bb1
    %11 = btor.uext %6 : i64 to i128
    %12 = btor.uext %5 : i64 to i128
    %13 = btor.mul %12, %11 : i128
    %14 = btor.constant 0 : i128
    %15 = btor.input 5 : i1
    %16 = btor.ite %15, %14, %13 : i128
    %17 = btor.uext %10 : i64 to i128
    %18 = btor.uext %9 : i64 to i128
    %19 = btor.mul %18, %17 : i128
    %20 = btor.or %7, %8 : i1
    %21 = btor.ite %20, %19, %4 : i128
    %22 = btor.ite %15, %14, %21 : i128
    %23 = btor.input 3 : i64
    %24 = btor.input 1 : i1
    %25 = btor.ite %24, %23, %5 : i64
    %26 = btor.constant 0 : i64
    %27 = btor.ite %15, %26, %25 : i64
    %28 = btor.input 4 : i64
    %29 = btor.input 2 : i1
    %30 = btor.ite %29, %28, %6 : i64
    %31 = btor.ite %15, %26, %30 : i64
    %32 = btor.constant true
    %33 = btor.ite %15, %32, %24 : i1
    %34 = btor.ite %15, %32, %29 : i1
    %35 = btor.ite %24, %23, %9 : i64
    %36 = btor.ite %15, %26, %35 : i64
    %37 = btor.ite %29, %28, %10 : i64
    %38 = btor.ite %15, %26, %37 : i64
    %39 = btor.cmp eq, %3, %4 : i128
    %40 = btor.not %39 : i1
    %41 = btor.and %32, %40 : i1
    btor.assert_not(%41)
    br ^bb1(%16, %22, %27, %31, %33, %34, %36, %38 : i128, i128, i64, i64, i1, i1, i64, i64)
  }
}
