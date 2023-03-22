module {
  func @main() {
    %0 = btor.constant 0 : i64
    %1 = btor.constant 0 : i32
    %2 = btor.constant true
    br ^bb1(%0, %0, %1, %1, %2, %2, %1, %1 : i64, i64, i32, i32, i1, i1, i32, i32)
  ^bb1(%3: i64, %4: i64, %5: i32, %6: i32, %7: i1, %8: i1, %9: i32, %10: i32):  // 2 preds: ^bb0, ^bb1
    %11 = btor.uext %6 : i32 to i64
    %12 = btor.uext %5 : i32 to i64
    %13 = btor.mul %12, %11 : i64
    %14 = btor.constant 0 : i64
    %15 = btor.input 5 : i1
    %16 = btor.ite %15, %14, %13 : i64
    %17 = btor.uext %10 : i32 to i64
    %18 = btor.uext %9 : i32 to i64
    %19 = btor.mul %18, %17 : i64
    %20 = btor.or %7, %8 : i1
    %21 = btor.ite %20, %19, %4 : i64
    %22 = btor.ite %15, %14, %21 : i64
    %23 = btor.input 3 : i32
    %24 = btor.input 1 : i1
    %25 = btor.ite %24, %23, %5 : i32
    %26 = btor.constant 0 : i32
    %27 = btor.ite %15, %26, %25 : i32
    %28 = btor.input 4 : i32
    %29 = btor.input 2 : i1
    %30 = btor.ite %29, %28, %6 : i32
    %31 = btor.ite %15, %26, %30 : i32
    %32 = btor.constant true
    %33 = btor.ite %15, %32, %24 : i1
    %34 = btor.ite %15, %32, %29 : i1
    %35 = btor.ite %24, %23, %9 : i32
    %36 = btor.ite %15, %26, %35 : i32
    %37 = btor.ite %29, %28, %10 : i32
    %38 = btor.ite %15, %26, %37 : i32
    %39 = btor.cmp eq, %3, %4 : i64
    %40 = btor.not %39 : i1
    %41 = btor.and %32, %40 : i1
    btor.assert_not(%41)
    br ^bb1(%16, %22, %27, %31, %33, %34, %36, %38 : i64, i64, i32, i32, i1, i1, i32, i32)
  }
}
