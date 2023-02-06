module {
  func @main() {
    %0 = btor.constant false
    %1 = btor.constant 0 : i256
    %2 = btor.constant 0 : i128
    %3 = btor.constant 0 : i10
    %4 = btor.constant true
    br ^bb1(%0, %1, %1, %2, %2, %3, %4, %4, %2, %2 : i1, i256, i256, i128, i128, i10, i1, i1, i128, i128)
  ^bb1(%5: i1, %6: i256, %7: i256, %8: i128, %9: i128, %10: i10, %11: i1, %12: i1, %13: i128, %14: i128):  // 2 preds: ^bb0, ^bb1
    %15 = btor.constant true
    %16 = btor.uext %9 : i128 to i256
    %17 = btor.uext %8 : i128 to i256
    %18 = btor.mul %17, %16 : i256
    %19 = btor.constant 0 : i256
    %20 = btor.not %5 : i1
    %21 = btor.ite %20, %19, %18 : i256
    %22 = btor.uext %14 : i128 to i256
    %23 = btor.uext %13 : i128 to i256
    %24 = btor.mul %23, %22 : i256
    %25 = btor.constant 1 : i32
    %26 = btor.uext %25 : i32 to i256
    %27 = btor.add %24, %26 : i256
    %28 = btor.constant 12245771 : i128
    %29 = btor.nd_bv : i128
    %30 = btor.cmp eq, %29, %28 : i128
    %31 = btor.constant -559038737 : i128
    %32 = btor.nd_bv : i128
    %33 = btor.cmp eq, %32, %31 : i128
    %34 = btor.constant 1000 : i32
    %35 = btor.uext %10 : i10 to i32
    %36 = btor.cmp ugt, %35, %34 : i32
    %37 = btor.and %36, %33 : i1
    %38 = btor.and %37, %30 : i1
    %39 = btor.ite %38, %27, %24 : i256
    %40 = btor.or %11, %12 : i1
    %41 = btor.ite %40, %39, %7 : i256
    %42 = btor.ite %20, %19, %41 : i256
    %43 = btor.nd_bv : i1
    %44 = btor.ite %43, %32, %8 : i128
    %45 = btor.constant 0 : i128
    %46 = btor.ite %20, %45, %44 : i128
    %47 = btor.nd_bv : i1
    %48 = btor.ite %47, %29, %9 : i128
    %49 = btor.ite %20, %45, %48 : i128
    %50 = btor.nd_bv : i10
    %51 = btor.ite %20, %50, %10 : i10
    %52 = btor.ite %20, %15, %43 : i1
    %53 = btor.ite %20, %15, %47 : i1
    %54 = btor.ite %43, %32, %13 : i128
    %55 = btor.ite %20, %45, %54 : i128
    %56 = btor.ite %47, %29, %14 : i128
    %57 = btor.ite %20, %45, %56 : i128
    %58 = btor.cmp eq, %6, %7 : i256
    %59 = btor.not %5 : i1
    %60 = btor.or %59, %58 : i1
    %61 = btor.not %60 : i1
    %62 = btor.and %15, %61 : i1
    btor.assert_not(%62)
    br ^bb1(%15, %21, %42, %46, %49, %51, %52, %53, %55, %57 : i1, i256, i256, i128, i128, i10, i1, i1, i128, i128)
  }
}
