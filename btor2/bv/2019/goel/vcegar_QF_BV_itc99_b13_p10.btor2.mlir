module {
  func @main() {
    %0 = btor.constant false
    %1 = btor.constant true
    %2 = btor.constant 0 : i10
    br ^bb1(%0, %0, %0, %0, %0, %0, %1, %0, %0, %0, %0, %2, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i10, i1)
  ^bb1(%3: i1, %4: i1, %5: i1, %6: i1, %7: i1, %8: i1, %9: i1, %10: i1, %11: i1, %12: i1, %13: i1, %14: i10, %15: i1):  // 2 preds: ^bb0, ^bb1
    %16 = btor.nd_bv : i1
    %17 = btor.constant true
    %18 = btor.constant false
    %19 = btor.ite %15, %17, %13 : i1
    %20 = btor.not %19 : i1
    %21 = btor.ite %20, %18, %17 : i1
    %22 = btor.ite %8, %21, %16 : i1
    %23 = btor.ite %8, %22, %3 : i1
    %24 = btor.nd_bv : i1
    %25 = btor.nd_bv : i1
    %26 = btor.not %25 : i1
    %27 = btor.nd_bv : i1
    %28 = btor.ite %20, %17, %19 : i1
    %29 = btor.ite %8, %28, %27 : i1
    %30 = btor.ite %8, %29, %19 : i1
    %31 = btor.not %30 : i1
    %32 = btor.or %31, %26 : i1
    %33 = btor.ite %32, %17, %18 : i1
    %34 = btor.ite %10, %33, %24 : i1
    %35 = btor.ite %10, %34, %23 : i1
    %36 = btor.ite %15, %18, %4 : i1
    %37 = btor.nd_bv : i1
    %38 = btor.ite %32, %36, %17 : i1
    %39 = btor.ite %10, %38, %37 : i1
    %40 = btor.ite %10, %39, %36 : i1
    %41 = btor.ite %5, %18, %17 : i1
    %42 = btor.nd_bv : i1
    %43 = btor.ite %11, %17, %18 : i1
    %44 = btor.cmp eq, %6, %18 : i1
    %45 = btor.ite %44, %43, %42 : i1
    %46 = btor.ite %6, %18, %45 : i1
    %47 = btor.nd_bv : i1
    %48 = btor.ite %12, %17, %18 : i1
    %49 = btor.cmp eq, %7, %18 : i1
    %50 = btor.ite %49, %48, %47 : i1
    %51 = btor.ite %7, %18, %50 : i1
    %52 = btor.nd_bv : i1
    %53 = btor.ite %12, %17, %8 : i1
    %54 = btor.cmp eq, %7, %18 : i1
    %55 = btor.ite %54, %53, %52 : i1
    %56 = btor.ite %7, %18, %55 : i1
    %57 = btor.nd_bv : i1
    %58 = btor.nd_bv : i1
    %59 = btor.nd_bv : i1
    %60 = btor.cmp eq, %9, %18 : i1
    %61 = btor.ite %60, %17, %17 : i1
    %62 = btor.constant 104 : i32
    %63 = btor.uext %14 : i10 to i32
    %64 = btor.cmp ugt, %63, %62 : i32
    %65 = btor.ite %64, %61, %59 : i1
    %66 = btor.ite %4, %65, %58 : i1
    %67 = btor.ite %64, %66, %9 : i1
    %68 = btor.ite %4, %67, %57 : i1
    %69 = btor.ite %4, %68, %9 : i1
    %70 = btor.ite %7, %17, %10 : i1
    %71 = btor.ite %5, %11, %11 : i1
    %72 = btor.ite %6, %17, %12 : i1
    %73 = btor.nd_bv : i10
    %74 = btor.constant 1 : i32
    %75 = btor.uext %14 : i10 to i32
    %76 = btor.add %75, %74 : i32
    %77 = btor.constant 9 : i32
    %78 = btor.constant 0 : i32
    %79 = btor.slice %76, %77, %78 : i32, i10
    %80 = btor.constant 0 : i10
    %81 = btor.ite %64, %80, %79 : i10
    %82 = btor.ite %4, %81, %73 : i10
    %83 = btor.ite %4, %82, %14 : i10
    %84 = btor.nd_bv : i1
    %85 = btor.nd_bv : i1
    %86 = btor.nd_bv : i1
    %87 = btor.cmp eq, %9, %18 : i1
    %88 = btor.ite %87, %18, %18 : i1
    %89 = btor.ite %64, %88, %86 : i1
    %90 = btor.ite %4, %89, %85 : i1
    %91 = btor.ite %64, %90, %18 : i1
    %92 = btor.ite %4, %91, %84 : i1
    %93 = btor.ite %4, %92, %18 : i1
    %94 = btor.constant 0 : i32
    %95 = btor.uext %4 : i1 to i32
    %96 = btor.cmp eq, %95, %94 : i32
    %97 = btor.uext %3 : i1 to i32
    %98 = btor.cmp eq, %97, %94 : i32
    %99 = btor.or %98, %96 : i1
    %100 = btor.not %99 : i1
    %101 = btor.and %17, %100 : i1
    btor.assert_not(%101)
    br ^bb1(%35, %40, %41, %46, %51, %56, %69, %70, %71, %72, %30, %83, %93 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i10, i1)
  }
}
