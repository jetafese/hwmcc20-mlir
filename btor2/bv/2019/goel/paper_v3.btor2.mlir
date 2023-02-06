module {
  func @main() {
    %0 = btor.constant 0 : i8
    br ^bb1(%0, %0 : i8, i8)
  ^bb1(%1: i8, %2: i8):  // 2 preds: ^bb0, ^bb1
    %3 = btor.constant -1 : i8
    %4 = btor.cmp ne, %2, %3 : i8
    %5 = btor.cmp ugt, %1, %2 : i8
    %6 = btor.or %5, %4 : i1
    %7 = btor.ite %6, %1, %2 : i8
    %8 = btor.constant 1 : i8
    %9 = btor.add %1, %8 : i8
    %10 = btor.cmp eq, %1, %2 : i8
    %11 = btor.ite %10, %9, %7 : i8
    %12 = btor.add %2, %8 : i8
    %13 = btor.cmp ne, %2, %3 : i8
    %14 = btor.cmp eq, %1, %2 : i8
    %15 = btor.or %14, %13 : i1
    %16 = btor.ite %15, %12, %1 : i8
    %17 = btor.cmp ugt, %1, %2 : i8
    %18 = btor.ite %17, %2, %16 : i8
    %19 = btor.cmp ugt, %1, %2 : i8
    %20 = btor.not %19 : i1
    %21 = btor.not %20 : i1
    %22 = btor.constant true
    %23 = btor.and %22, %21 : i1
    btor.assert_not(%23)
    br ^bb1(%11, %18 : i8, i8)
  }
}
