module {
  func @main() {
    %0 = btor.constant false
    %1 = btor.constant 0 : i11
    %2 = btor.constant 0 : i32
    %3 = btor.array %2 : vector<1024xi32>
    br ^bb1(%0, %0, %1, %3 : i1, i1, i11, vector<1024xi32>)
  ^bb1(%4: i1, %5: i1, %6: i11, %7: vector<1024xi32>):  // 2 preds: ^bb0, ^bb1
    %8 = btor.input 7 : i1
    %9 = btor.constant -56 : i8
    %10 = btor.uext %9 : i8 to i32
    %11 = btor.input 6 : i11
    %12 = btor.constant 9 : i11
    %13 = btor.constant 0 : i11
    %14 = btor.slice %11, %12, %13 : i11, i10
    %15 = btor.read %7[%14] : vector<1024xi32>, i32
    %16 = btor.cmp ult, %15, %10 : i32
    %17 = btor.cmp ule, %11, %6 : i11
    %18 = btor.constant false
    %19 = btor.uext %18 : i1 to i11
    %20 = btor.cmp uge, %11, %19 : i11
    %21 = btor.and %20, %17 : i1
    %22 = btor.ite %21, %16, %8 : i1
    %23 = btor.constant true
    %24 = btor.ite %21, %23, %18 : i1
    %25 = btor.uext %23 : i1 to i11
    %26 = btor.sub %6, %25 : i11
    %27 = btor.input 3 : i1
    %28 = btor.ite %27, %26, %6 : i11
    %29 = btor.input 4 : i1
    %30 = btor.ite %29, %6, %28 : i11
    %31 = btor.constant 0 : i11
    %32 = btor.input 5 : i1
    %33 = btor.ite %32, %31, %30 : i11
    %34 = btor.ite %29, %23, %18 : i1
    %35 = btor.ite %32, %18, %34 : i1
    %36 = btor.concat %35, %35 : i1, i1, i2
    %37 = btor.concat %35, %36 : i1, i2, i3
    %38 = btor.concat %35, %37 : i1, i3, i4
    %39 = btor.concat %35, %38 : i1, i4, i5
    %40 = btor.concat %35, %39 : i1, i5, i6
    %41 = btor.concat %35, %40 : i1, i6, i7
    %42 = btor.concat %35, %41 : i1, i7, i8
    %43 = btor.concat %35, %42 : i1, i8, i9
    %44 = btor.concat %35, %43 : i1, i9, i10
    %45 = btor.concat %35, %44 : i1, i10, i11
    %46 = btor.concat %35, %45 : i1, i11, i12
    %47 = btor.concat %35, %46 : i1, i12, i13
    %48 = btor.concat %35, %47 : i1, i13, i14
    %49 = btor.concat %35, %48 : i1, i14, i15
    %50 = btor.concat %35, %49 : i1, i15, i16
    %51 = btor.concat %35, %50 : i1, i16, i17
    %52 = btor.concat %35, %51 : i1, i17, i18
    %53 = btor.concat %35, %52 : i1, i18, i19
    %54 = btor.concat %35, %53 : i1, i19, i20
    %55 = btor.concat %35, %54 : i1, i20, i21
    %56 = btor.concat %35, %55 : i1, i21, i22
    %57 = btor.concat %35, %56 : i1, i22, i23
    %58 = btor.concat %35, %57 : i1, i23, i24
    %59 = btor.concat %35, %58 : i1, i24, i25
    %60 = btor.concat %35, %59 : i1, i25, i26
    %61 = btor.concat %35, %60 : i1, i26, i27
    %62 = btor.concat %35, %61 : i1, i27, i28
    %63 = btor.concat %35, %62 : i1, i28, i29
    %64 = btor.concat %35, %63 : i1, i29, i30
    %65 = btor.concat %35, %64 : i1, i30, i31
    %66 = btor.concat %35, %65 : i1, i31, i32
    %67 = btor.not %66 : i32
    %68 = btor.input 8 : i10
    %69 = btor.constant 9 : i11
    %70 = btor.constant 0 : i11
    %71 = btor.slice %6, %69, %70 : i11, i10
    %72 = btor.ite %29, %71, %68 : i10
    %73 = btor.input 9 : i10
    %74 = btor.ite %32, %73, %72 : i10
    %75 = btor.read %7[%74] : vector<1024xi32>, i32
    %76 = btor.and %75, %67 : i32
    %77 = btor.input 10 : i32
    %78 = btor.input 1 : i32
    %79 = btor.ite %29, %78, %77 : i32
    %80 = btor.input 11 : i32
    %81 = btor.ite %32, %80, %79 : i32
    %82 = btor.and %81, %66 : i32
    %83 = btor.or %82, %76 : i32
    %84 = btor.write %83, %7[%74] : vector<1024xi32>
    %85 = btor.redor %66 : i32
    %86 = btor.ite %85, %84, %7 : vector<1024xi32>
    %87 = btor.not %23 : i1
    %88 = btor.uext %9 : i8 to i32
    %89 = btor.cmp ult, %78, %88 : i32
    %90 = btor.or %89, %87 : i1
    btor.constraint(%90)
    %91 = btor.not %23 : i1
    %92 = btor.not %27 : i1
    %93 = btor.not %29 : i1
    %94 = btor.or %93, %92 : i1
    %95 = btor.or %94, %91 : i1
    btor.constraint(%95)
    %96 = btor.not %23 : i1
    %97 = btor.redor %6 : i11
    %98 = btor.not %97 : i1
    %99 = btor.not %98 : i1
    %100 = btor.or %99, %92 : i1
    %101 = btor.or %100, %96 : i1
    btor.constraint(%101)
    %102 = btor.not %23 : i1
    %103 = btor.constant -1024 : i11
    %104 = btor.cmp eq, %6, %103 : i11
    %105 = btor.not %104 : i1
    %106 = btor.or %105, %93 : i1
    %107 = btor.or %106, %102 : i1
    btor.constraint(%107)
    %108 = btor.not %4 : i1
    %109 = btor.and %5, %108 : i1
    btor.assert_not(%109)
    br ^bb1(%22, %24, %33, %86 : i1, i1, i11, vector<1024xi32>)
  }
}
