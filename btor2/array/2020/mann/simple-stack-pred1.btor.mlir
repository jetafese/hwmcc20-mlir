module {
  func @main() {
    %0 = btor.constant 0 : ui1 !btor.bv<1>
    %1 = btor.constant 0 : ui11 !btor.bv<11>
    %2 = btor.constant 0 : ui32 !btor.bv<32>
    %3 = btor.array %2 : !btor.array<<10>, <32>>
    br ^bb1(%0, %0, %1, %3 : !btor.bv<1>, !btor.bv<1>, !btor.bv<11>, !btor.array<<10>, <32>>)
  ^bb1(%4: !btor.bv<1>, %5: !btor.bv<1>, %6: !btor.bv<11>, %7: !btor.array<<10>, <32>>):  // 2 preds: ^bb0, ^bb1
    %8 = btor.input 7 : !btor.bv<1>
    %9 = btor.constant 200 : ui8 !btor.bv<8>
    %10 = btor.uext %9 : <8> to <32>
    %11 = btor.input 6 : !btor.bv<11>
    %12 = btor.constant 9 : ui11 !btor.bv<11>
    %13 = btor.constant 0 : ui11 !btor.bv<11>
    %14 = btor.slice %11, %12, %13 : !btor.bv<11>, !btor.bv<10>
    %15 = btor.read %7[%14] : !btor.array<<10>, <32>>, !btor.bv<32>
    %16 = btor.cmp ult, %15, %10 : !btor.bv<32>
    %17 = btor.cmp ule, %11, %6 : !btor.bv<11>
    %18 = btor.constant 0 : ui1 !btor.bv<1>
    %19 = btor.uext %18 : <1> to <11>
    %20 = btor.cmp uge, %11, %19 : !btor.bv<11>
    %21 = btor.and %20, %17 : !btor.bv<1>
    %22 = btor.ite %21, %16, %8 : !btor.bv<1>
    %23 = btor.constant 1 : ui1 !btor.bv<1>
    %24 = btor.ite %21, %23, %18 : !btor.bv<1>
    %25 = btor.uext %23 : <1> to <11>
    %26 = btor.sub %6, %25 : !btor.bv<11>
    %27 = btor.input 3 : !btor.bv<1>
    %28 = btor.ite %27, %26, %6 : !btor.bv<11>
    %29 = btor.input 4 : !btor.bv<1>
    %30 = btor.ite %29, %6, %28 : !btor.bv<11>
    %31 = btor.constant 0 : ui11 !btor.bv<11>
    %32 = btor.input 5 : !btor.bv<1>
    %33 = btor.ite %32, %31, %30 : !btor.bv<11>
    %34 = btor.ite %29, %23, %18 : !btor.bv<1>
    %35 = btor.ite %32, %18, %34 : !btor.bv<1>
    %36 = btor.concat %35, %35 : !btor.bv<1>, !btor.bv<1>, !btor.bv<2>
    %37 = btor.concat %35, %36 : !btor.bv<1>, !btor.bv<2>, !btor.bv<3>
    %38 = btor.concat %35, %37 : !btor.bv<1>, !btor.bv<3>, !btor.bv<4>
    %39 = btor.concat %35, %38 : !btor.bv<1>, !btor.bv<4>, !btor.bv<5>
    %40 = btor.concat %35, %39 : !btor.bv<1>, !btor.bv<5>, !btor.bv<6>
    %41 = btor.concat %35, %40 : !btor.bv<1>, !btor.bv<6>, !btor.bv<7>
    %42 = btor.concat %35, %41 : !btor.bv<1>, !btor.bv<7>, !btor.bv<8>
    %43 = btor.concat %35, %42 : !btor.bv<1>, !btor.bv<8>, !btor.bv<9>
    %44 = btor.concat %35, %43 : !btor.bv<1>, !btor.bv<9>, !btor.bv<10>
    %45 = btor.concat %35, %44 : !btor.bv<1>, !btor.bv<10>, !btor.bv<11>
    %46 = btor.concat %35, %45 : !btor.bv<1>, !btor.bv<11>, !btor.bv<12>
    %47 = btor.concat %35, %46 : !btor.bv<1>, !btor.bv<12>, !btor.bv<13>
    %48 = btor.concat %35, %47 : !btor.bv<1>, !btor.bv<13>, !btor.bv<14>
    %49 = btor.concat %35, %48 : !btor.bv<1>, !btor.bv<14>, !btor.bv<15>
    %50 = btor.concat %35, %49 : !btor.bv<1>, !btor.bv<15>, !btor.bv<16>
    %51 = btor.concat %35, %50 : !btor.bv<1>, !btor.bv<16>, !btor.bv<17>
    %52 = btor.concat %35, %51 : !btor.bv<1>, !btor.bv<17>, !btor.bv<18>
    %53 = btor.concat %35, %52 : !btor.bv<1>, !btor.bv<18>, !btor.bv<19>
    %54 = btor.concat %35, %53 : !btor.bv<1>, !btor.bv<19>, !btor.bv<20>
    %55 = btor.concat %35, %54 : !btor.bv<1>, !btor.bv<20>, !btor.bv<21>
    %56 = btor.concat %35, %55 : !btor.bv<1>, !btor.bv<21>, !btor.bv<22>
    %57 = btor.concat %35, %56 : !btor.bv<1>, !btor.bv<22>, !btor.bv<23>
    %58 = btor.concat %35, %57 : !btor.bv<1>, !btor.bv<23>, !btor.bv<24>
    %59 = btor.concat %35, %58 : !btor.bv<1>, !btor.bv<24>, !btor.bv<25>
    %60 = btor.concat %35, %59 : !btor.bv<1>, !btor.bv<25>, !btor.bv<26>
    %61 = btor.concat %35, %60 : !btor.bv<1>, !btor.bv<26>, !btor.bv<27>
    %62 = btor.concat %35, %61 : !btor.bv<1>, !btor.bv<27>, !btor.bv<28>
    %63 = btor.concat %35, %62 : !btor.bv<1>, !btor.bv<28>, !btor.bv<29>
    %64 = btor.concat %35, %63 : !btor.bv<1>, !btor.bv<29>, !btor.bv<30>
    %65 = btor.concat %35, %64 : !btor.bv<1>, !btor.bv<30>, !btor.bv<31>
    %66 = btor.concat %35, %65 : !btor.bv<1>, !btor.bv<31>, !btor.bv<32>
    %67 = btor.not %66 : !btor.bv<32>
    %68 = btor.input 8 : !btor.bv<10>
    %69 = btor.constant 9 : ui11 !btor.bv<11>
    %70 = btor.constant 0 : ui11 !btor.bv<11>
    %71 = btor.slice %6, %69, %70 : !btor.bv<11>, !btor.bv<10>
    %72 = btor.ite %29, %71, %68 : !btor.bv<10>
    %73 = btor.input 9 : !btor.bv<10>
    %74 = btor.ite %32, %73, %72 : !btor.bv<10>
    %75 = btor.read %7[%74] : !btor.array<<10>, <32>>, !btor.bv<32>
    %76 = btor.and %75, %67 : !btor.bv<32>
    %77 = btor.input 10 : !btor.bv<32>
    %78 = btor.input 1 : !btor.bv<32>
    %79 = btor.ite %29, %78, %77 : !btor.bv<32>
    %80 = btor.input 11 : !btor.bv<32>
    %81 = btor.ite %32, %80, %79 : !btor.bv<32>
    %82 = btor.and %81, %66 : !btor.bv<32>
    %83 = btor.or %82, %76 : !btor.bv<32>
    %84 = btor.write %83, %7[%74] : !btor.array<<10>, <32>>
    %85 = btor.redor %66 : !btor.bv<32>
    %86 = btor.ite %85, %84, %7 : !btor.array<<10>, <32>>
    %87 = btor.not %23 : !btor.bv<1>
    %88 = btor.uext %9 : <8> to <32>
    %89 = btor.cmp ult, %78, %88 : !btor.bv<32>
    %90 = btor.or %89, %87 : !btor.bv<1>
    btor.constraint(%90) : !btor.bv<1>
    %91 = btor.not %23 : !btor.bv<1>
    %92 = btor.not %27 : !btor.bv<1>
    %93 = btor.not %29 : !btor.bv<1>
    %94 = btor.or %93, %92 : !btor.bv<1>
    %95 = btor.or %94, %91 : !btor.bv<1>
    btor.constraint(%95) : !btor.bv<1>
    %96 = btor.not %23 : !btor.bv<1>
    %97 = btor.redor %6 : !btor.bv<11>
    %98 = btor.not %97 : !btor.bv<1>
    %99 = btor.not %98 : !btor.bv<1>
    %100 = btor.or %99, %92 : !btor.bv<1>
    %101 = btor.or %100, %96 : !btor.bv<1>
    btor.constraint(%101) : !btor.bv<1>
    %102 = btor.not %23 : !btor.bv<1>
    %103 = btor.constant 1024 : ui11 !btor.bv<11>
    %104 = btor.cmp eq, %6, %103 : !btor.bv<11>
    %105 = btor.not %104 : !btor.bv<1>
    %106 = btor.or %105, %93 : !btor.bv<1>
    %107 = btor.or %106, %102 : !btor.bv<1>
    btor.constraint(%107) : !btor.bv<1>
    %108 = btor.not %4 : !btor.bv<1>
    %109 = btor.and %5, %108 : !btor.bv<1>
    btor.assert_not(%109), 0 : ui64 !btor.bv<1>
    br ^bb1(%22, %24, %33, %86 : !btor.bv<1>, !btor.bv<1>, !btor.bv<11>, !btor.array<<10>, <32>>)
  }
}
