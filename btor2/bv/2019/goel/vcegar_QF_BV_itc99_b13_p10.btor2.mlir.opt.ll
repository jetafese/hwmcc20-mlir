; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @__VERIFIER_error()

declare i8 @nd_bv8_in28()

declare i8 @nd_bv8_in27()

declare i8 @nd_bv8_in26()

declare i16 @nd_bv16_in25()

declare i8 @nd_bv8_in24()

declare i8 @nd_bv8_in23()

declare i8 @nd_bv8_in22()

declare i8 @nd_bv8_in21()

declare i8 @nd_bv8_in20()

declare i8 @nd_bv8_in19()

declare i8 @nd_bv8_in18()

declare i8 @nd_bv8_in17()

declare i8 @nd_bv8_in2()

declare i8 @nd_bv8_in16()

declare void @btor2mlir_print_input_num(i64, i64, i64)

declare i8 @nd_bv8_in15()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %110, %0
  %2 = phi i1 [ %36, %110 ], [ false, %0 ]
  %3 = phi i1 [ %42, %110 ], [ false, %0 ]
  %4 = phi i1 [ %43, %110 ], [ false, %0 ]
  %5 = phi i1 [ %49, %110 ], [ false, %0 ]
  %6 = phi i1 [ %55, %110 ], [ false, %0 ]
  %7 = phi i1 [ %61, %110 ], [ false, %0 ]
  %8 = phi i1 [ %76, %110 ], [ true, %0 ]
  %9 = phi i1 [ %77, %110 ], [ false, %0 ]
  %10 = phi i1 [ %78, %110 ], [ false, %0 ]
  %11 = phi i1 [ %79, %110 ], [ false, %0 ]
  %12 = phi i1 [ %31, %110 ], [ false, %0 ]
  %13 = phi i10 [ %88, %110 ], [ 0, %0 ]
  %14 = phi i1 [ %101, %110 ], [ false, %0 ]
  %15 = call i8 @nd_bv8_in15(), !dbg !9
  %16 = trunc i8 %15 to i1, !dbg !10
  %17 = select i1 %14, i1 true, i1 %12, !dbg !11
  %18 = xor i1 %17, true, !dbg !12
  %19 = select i1 %18, i1 false, i1 true, !dbg !13
  %20 = select i1 %7, i1 %19, i1 %16, !dbg !14
  %21 = select i1 %7, i1 %20, i1 %2, !dbg !15
  %22 = call i8 @nd_bv8_in16(), !dbg !16
  %23 = trunc i8 %22 to i1, !dbg !17
  %24 = call i8 @nd_bv8_in2(), !dbg !18
  %25 = trunc i8 %24 to i1, !dbg !19
  %26 = xor i1 %25, true, !dbg !20
  %27 = call i8 @nd_bv8_in17(), !dbg !21
  %28 = trunc i8 %27 to i1, !dbg !22
  %29 = select i1 %18, i1 true, i1 %17, !dbg !23
  %30 = select i1 %7, i1 %29, i1 %28, !dbg !24
  %31 = select i1 %7, i1 %30, i1 %17, !dbg !25
  %32 = xor i1 %31, true, !dbg !26
  %33 = or i1 %32, %26, !dbg !27
  %34 = select i1 %33, i1 true, i1 false, !dbg !28
  %35 = select i1 %9, i1 %34, i1 %23, !dbg !29
  %36 = select i1 %9, i1 %35, i1 %21, !dbg !30
  %37 = select i1 %14, i1 false, i1 %3, !dbg !31
  %38 = call i8 @nd_bv8_in18(), !dbg !32
  %39 = trunc i8 %38 to i1, !dbg !33
  %40 = select i1 %33, i1 %37, i1 true, !dbg !34
  %41 = select i1 %9, i1 %40, i1 %39, !dbg !35
  %42 = select i1 %9, i1 %41, i1 %37, !dbg !36
  %43 = select i1 %4, i1 false, i1 true, !dbg !37
  %44 = call i8 @nd_bv8_in19(), !dbg !38
  %45 = trunc i8 %44 to i1, !dbg !39
  %46 = select i1 %10, i1 true, i1 false, !dbg !40
  %47 = icmp eq i1 %5, false, !dbg !41
  %48 = select i1 %47, i1 %46, i1 %45, !dbg !42
  %49 = select i1 %5, i1 false, i1 %48, !dbg !43
  %50 = call i8 @nd_bv8_in20(), !dbg !44
  %51 = trunc i8 %50 to i1, !dbg !45
  %52 = select i1 %11, i1 true, i1 false, !dbg !46
  %53 = icmp eq i1 %6, false, !dbg !47
  %54 = select i1 %53, i1 %52, i1 %51, !dbg !48
  %55 = select i1 %6, i1 false, i1 %54, !dbg !49
  %56 = call i8 @nd_bv8_in21(), !dbg !50
  %57 = trunc i8 %56 to i1, !dbg !51
  %58 = select i1 %11, i1 true, i1 %7, !dbg !52
  %59 = icmp eq i1 %6, false, !dbg !53
  %60 = select i1 %59, i1 %58, i1 %57, !dbg !54
  %61 = select i1 %6, i1 false, i1 %60, !dbg !55
  %62 = call i8 @nd_bv8_in22(), !dbg !56
  %63 = trunc i8 %62 to i1, !dbg !57
  %64 = call i8 @nd_bv8_in23(), !dbg !58
  %65 = trunc i8 %64 to i1, !dbg !59
  %66 = call i8 @nd_bv8_in24(), !dbg !60
  %67 = trunc i8 %66 to i1, !dbg !61
  %68 = icmp eq i1 %8, false, !dbg !62
  %69 = select i1 %68, i1 true, i1 true, !dbg !63
  %70 = zext i10 %13 to i32, !dbg !64
  %71 = icmp ugt i32 %70, 104, !dbg !65
  %72 = select i1 %71, i1 %69, i1 %67, !dbg !66
  %73 = select i1 %3, i1 %72, i1 %65, !dbg !67
  %74 = select i1 %71, i1 %73, i1 %8, !dbg !68
  %75 = select i1 %3, i1 %74, i1 %63, !dbg !69
  %76 = select i1 %3, i1 %75, i1 %8, !dbg !70
  %77 = select i1 %6, i1 true, i1 %9, !dbg !71
  %78 = select i1 %4, i1 %10, i1 %10, !dbg !72
  %79 = select i1 %5, i1 true, i1 %11, !dbg !73
  %80 = call i16 @nd_bv16_in25(), !dbg !74
  %81 = trunc i16 %80 to i10, !dbg !75
  %82 = zext i10 %13 to i32, !dbg !76
  %83 = add i32 %82, 1, !dbg !77
  %84 = lshr i32 %83, 0, !dbg !78
  %85 = trunc i32 %84 to i10, !dbg !79
  %86 = select i1 %71, i10 0, i10 %85, !dbg !80
  %87 = select i1 %3, i10 %86, i10 %81, !dbg !81
  %88 = select i1 %3, i10 %87, i10 %13, !dbg !82
  %89 = call i8 @nd_bv8_in26(), !dbg !83
  %90 = trunc i8 %89 to i1, !dbg !84
  %91 = call i8 @nd_bv8_in27(), !dbg !85
  %92 = trunc i8 %91 to i1, !dbg !86
  %93 = call i8 @nd_bv8_in28(), !dbg !87
  %94 = trunc i8 %93 to i1, !dbg !88
  %95 = icmp eq i1 %8, false, !dbg !89
  %96 = select i1 %95, i1 false, i1 false, !dbg !90
  %97 = select i1 %71, i1 %96, i1 %94, !dbg !91
  %98 = select i1 %3, i1 %97, i1 %92, !dbg !92
  %99 = select i1 %71, i1 %98, i1 false, !dbg !93
  %100 = select i1 %3, i1 %99, i1 %90, !dbg !94
  %101 = select i1 %3, i1 %100, i1 false, !dbg !95
  %102 = zext i1 %3 to i32, !dbg !96
  %103 = icmp eq i32 %102, 0, !dbg !97
  %104 = zext i1 %2 to i32, !dbg !98
  %105 = icmp eq i32 %104, 0, !dbg !99
  %106 = or i1 %105, %103, !dbg !100
  %107 = xor i1 %106, true, !dbg !101
  %108 = and i1 true, %107, !dbg !102
  %109 = xor i1 %108, true, !dbg !103
  br i1 %109, label %110, label %111, !dbg !104

110:                                              ; preds = %1
  br label %1, !dbg !105

111:                                              ; preds = %1
  call void @__VERIFIER_error(), !dbg !106
  unreachable, !dbg !107
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "hwmc20-mlir/btor2/bv/2019/goel/vcegar_QF_BV_itc99_b13_p10.btor2.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 23, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 25, column: 11, scope: !8)
!10 = !DILocation(line: 26, column: 11, scope: !8)
!11 = !DILocation(line: 29, column: 11, scope: !8)
!12 = !DILocation(line: 31, column: 11, scope: !8)
!13 = !DILocation(line: 32, column: 11, scope: !8)
!14 = !DILocation(line: 33, column: 11, scope: !8)
!15 = !DILocation(line: 34, column: 11, scope: !8)
!16 = !DILocation(line: 35, column: 11, scope: !8)
!17 = !DILocation(line: 36, column: 11, scope: !8)
!18 = !DILocation(line: 37, column: 11, scope: !8)
!19 = !DILocation(line: 38, column: 11, scope: !8)
!20 = !DILocation(line: 40, column: 11, scope: !8)
!21 = !DILocation(line: 41, column: 11, scope: !8)
!22 = !DILocation(line: 42, column: 11, scope: !8)
!23 = !DILocation(line: 43, column: 11, scope: !8)
!24 = !DILocation(line: 44, column: 11, scope: !8)
!25 = !DILocation(line: 45, column: 11, scope: !8)
!26 = !DILocation(line: 47, column: 11, scope: !8)
!27 = !DILocation(line: 48, column: 11, scope: !8)
!28 = !DILocation(line: 49, column: 11, scope: !8)
!29 = !DILocation(line: 50, column: 11, scope: !8)
!30 = !DILocation(line: 51, column: 11, scope: !8)
!31 = !DILocation(line: 52, column: 11, scope: !8)
!32 = !DILocation(line: 53, column: 11, scope: !8)
!33 = !DILocation(line: 54, column: 11, scope: !8)
!34 = !DILocation(line: 55, column: 11, scope: !8)
!35 = !DILocation(line: 56, column: 11, scope: !8)
!36 = !DILocation(line: 57, column: 11, scope: !8)
!37 = !DILocation(line: 58, column: 11, scope: !8)
!38 = !DILocation(line: 59, column: 11, scope: !8)
!39 = !DILocation(line: 60, column: 11, scope: !8)
!40 = !DILocation(line: 61, column: 11, scope: !8)
!41 = !DILocation(line: 62, column: 11, scope: !8)
!42 = !DILocation(line: 63, column: 11, scope: !8)
!43 = !DILocation(line: 64, column: 11, scope: !8)
!44 = !DILocation(line: 65, column: 11, scope: !8)
!45 = !DILocation(line: 66, column: 11, scope: !8)
!46 = !DILocation(line: 67, column: 11, scope: !8)
!47 = !DILocation(line: 68, column: 11, scope: !8)
!48 = !DILocation(line: 69, column: 11, scope: !8)
!49 = !DILocation(line: 70, column: 11, scope: !8)
!50 = !DILocation(line: 71, column: 11, scope: !8)
!51 = !DILocation(line: 72, column: 11, scope: !8)
!52 = !DILocation(line: 73, column: 11, scope: !8)
!53 = !DILocation(line: 74, column: 11, scope: !8)
!54 = !DILocation(line: 75, column: 11, scope: !8)
!55 = !DILocation(line: 76, column: 11, scope: !8)
!56 = !DILocation(line: 77, column: 11, scope: !8)
!57 = !DILocation(line: 78, column: 11, scope: !8)
!58 = !DILocation(line: 79, column: 11, scope: !8)
!59 = !DILocation(line: 80, column: 11, scope: !8)
!60 = !DILocation(line: 81, column: 11, scope: !8)
!61 = !DILocation(line: 82, column: 11, scope: !8)
!62 = !DILocation(line: 83, column: 11, scope: !8)
!63 = !DILocation(line: 84, column: 11, scope: !8)
!64 = !DILocation(line: 86, column: 11, scope: !8)
!65 = !DILocation(line: 87, column: 11, scope: !8)
!66 = !DILocation(line: 88, column: 11, scope: !8)
!67 = !DILocation(line: 89, column: 11, scope: !8)
!68 = !DILocation(line: 90, column: 11, scope: !8)
!69 = !DILocation(line: 91, column: 11, scope: !8)
!70 = !DILocation(line: 92, column: 11, scope: !8)
!71 = !DILocation(line: 93, column: 11, scope: !8)
!72 = !DILocation(line: 94, column: 11, scope: !8)
!73 = !DILocation(line: 95, column: 11, scope: !8)
!74 = !DILocation(line: 96, column: 11, scope: !8)
!75 = !DILocation(line: 97, column: 11, scope: !8)
!76 = !DILocation(line: 99, column: 11, scope: !8)
!77 = !DILocation(line: 100, column: 11, scope: !8)
!78 = !DILocation(line: 102, column: 11, scope: !8)
!79 = !DILocation(line: 103, column: 11, scope: !8)
!80 = !DILocation(line: 105, column: 11, scope: !8)
!81 = !DILocation(line: 106, column: 11, scope: !8)
!82 = !DILocation(line: 107, column: 11, scope: !8)
!83 = !DILocation(line: 108, column: 11, scope: !8)
!84 = !DILocation(line: 109, column: 12, scope: !8)
!85 = !DILocation(line: 110, column: 12, scope: !8)
!86 = !DILocation(line: 111, column: 12, scope: !8)
!87 = !DILocation(line: 112, column: 12, scope: !8)
!88 = !DILocation(line: 113, column: 12, scope: !8)
!89 = !DILocation(line: 114, column: 12, scope: !8)
!90 = !DILocation(line: 115, column: 12, scope: !8)
!91 = !DILocation(line: 116, column: 12, scope: !8)
!92 = !DILocation(line: 117, column: 12, scope: !8)
!93 = !DILocation(line: 118, column: 12, scope: !8)
!94 = !DILocation(line: 119, column: 12, scope: !8)
!95 = !DILocation(line: 120, column: 12, scope: !8)
!96 = !DILocation(line: 122, column: 12, scope: !8)
!97 = !DILocation(line: 123, column: 12, scope: !8)
!98 = !DILocation(line: 124, column: 12, scope: !8)
!99 = !DILocation(line: 125, column: 12, scope: !8)
!100 = !DILocation(line: 126, column: 12, scope: !8)
!101 = !DILocation(line: 128, column: 12, scope: !8)
!102 = !DILocation(line: 129, column: 12, scope: !8)
!103 = !DILocation(line: 131, column: 12, scope: !8)
!104 = !DILocation(line: 132, column: 5, scope: !8)
!105 = !DILocation(line: 134, column: 5, scope: !8)
!106 = !DILocation(line: 136, column: 5, scope: !8)
!107 = !DILocation(line: 137, column: 5, scope: !8)
