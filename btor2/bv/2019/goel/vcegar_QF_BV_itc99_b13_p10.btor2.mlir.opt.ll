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

1:                                                ; preds = %125, %0
  %2 = phi i1 [ %40, %125 ], [ false, %0 ]
  %3 = phi i1 [ %47, %125 ], [ false, %0 ]
  %4 = phi i1 [ %48, %125 ], [ false, %0 ]
  %5 = phi i1 [ %55, %125 ], [ false, %0 ]
  %6 = phi i1 [ %62, %125 ], [ false, %0 ]
  %7 = phi i1 [ %69, %125 ], [ false, %0 ]
  %8 = phi i1 [ %87, %125 ], [ true, %0 ]
  %9 = phi i1 [ %88, %125 ], [ false, %0 ]
  %10 = phi i1 [ %89, %125 ], [ false, %0 ]
  %11 = phi i1 [ %90, %125 ], [ false, %0 ]
  %12 = phi i1 [ %35, %125 ], [ false, %0 ]
  %13 = phi i10 [ %100, %125 ], [ 0, %0 ]
  %14 = phi i1 [ %116, %125 ], [ false, %0 ]
  %15 = call i8 @nd_bv8_in15(), !dbg !9
  %16 = zext i8 %15 to i64, !dbg !10
  call void @btor2mlir_print_input_num(i64 15, i64 %16, i64 1), !dbg !11
  %17 = trunc i8 %15 to i1, !dbg !12
  %18 = select i1 %14, i1 true, i1 %12, !dbg !13
  %19 = xor i1 %18, true, !dbg !14
  %20 = select i1 %19, i1 false, i1 true, !dbg !15
  %21 = select i1 %7, i1 %20, i1 %17, !dbg !16
  %22 = select i1 %7, i1 %21, i1 %2, !dbg !17
  %23 = call i8 @nd_bv8_in16(), !dbg !18
  %24 = zext i8 %23 to i64, !dbg !19
  call void @btor2mlir_print_input_num(i64 16, i64 %24, i64 1), !dbg !20
  %25 = trunc i8 %23 to i1, !dbg !21
  %26 = call i8 @nd_bv8_in2(), !dbg !22
  %27 = zext i8 %26 to i64, !dbg !23
  call void @btor2mlir_print_input_num(i64 2, i64 %27, i64 1), !dbg !24
  %28 = trunc i8 %26 to i1, !dbg !25
  %29 = xor i1 %28, true, !dbg !26
  %30 = call i8 @nd_bv8_in17(), !dbg !27
  %31 = zext i8 %30 to i64, !dbg !28
  call void @btor2mlir_print_input_num(i64 17, i64 %31, i64 1), !dbg !29
  %32 = trunc i8 %30 to i1, !dbg !30
  %33 = select i1 %19, i1 true, i1 %18, !dbg !31
  %34 = select i1 %7, i1 %33, i1 %32, !dbg !32
  %35 = select i1 %7, i1 %34, i1 %18, !dbg !33
  %36 = xor i1 %35, true, !dbg !34
  %37 = or i1 %36, %29, !dbg !35
  %38 = select i1 %37, i1 true, i1 false, !dbg !36
  %39 = select i1 %9, i1 %38, i1 %25, !dbg !37
  %40 = select i1 %9, i1 %39, i1 %22, !dbg !38
  %41 = select i1 %14, i1 false, i1 %3, !dbg !39
  %42 = call i8 @nd_bv8_in18(), !dbg !40
  %43 = zext i8 %42 to i64, !dbg !41
  call void @btor2mlir_print_input_num(i64 18, i64 %43, i64 1), !dbg !42
  %44 = trunc i8 %42 to i1, !dbg !43
  %45 = select i1 %37, i1 %41, i1 true, !dbg !44
  %46 = select i1 %9, i1 %45, i1 %44, !dbg !45
  %47 = select i1 %9, i1 %46, i1 %41, !dbg !46
  %48 = select i1 %4, i1 false, i1 true, !dbg !47
  %49 = call i8 @nd_bv8_in19(), !dbg !48
  %50 = zext i8 %49 to i64, !dbg !49
  call void @btor2mlir_print_input_num(i64 19, i64 %50, i64 1), !dbg !50
  %51 = trunc i8 %49 to i1, !dbg !51
  %52 = select i1 %10, i1 true, i1 false, !dbg !52
  %53 = icmp eq i1 %5, false, !dbg !53
  %54 = select i1 %53, i1 %52, i1 %51, !dbg !54
  %55 = select i1 %5, i1 false, i1 %54, !dbg !55
  %56 = call i8 @nd_bv8_in20(), !dbg !56
  %57 = zext i8 %56 to i64, !dbg !57
  call void @btor2mlir_print_input_num(i64 20, i64 %57, i64 1), !dbg !58
  %58 = trunc i8 %56 to i1, !dbg !59
  %59 = select i1 %11, i1 true, i1 false, !dbg !60
  %60 = icmp eq i1 %6, false, !dbg !61
  %61 = select i1 %60, i1 %59, i1 %58, !dbg !62
  %62 = select i1 %6, i1 false, i1 %61, !dbg !63
  %63 = call i8 @nd_bv8_in21(), !dbg !64
  %64 = zext i8 %63 to i64, !dbg !65
  call void @btor2mlir_print_input_num(i64 21, i64 %64, i64 1), !dbg !66
  %65 = trunc i8 %63 to i1, !dbg !67
  %66 = select i1 %11, i1 true, i1 %7, !dbg !68
  %67 = icmp eq i1 %6, false, !dbg !69
  %68 = select i1 %67, i1 %66, i1 %65, !dbg !70
  %69 = select i1 %6, i1 false, i1 %68, !dbg !71
  %70 = call i8 @nd_bv8_in22(), !dbg !72
  %71 = zext i8 %70 to i64, !dbg !73
  call void @btor2mlir_print_input_num(i64 22, i64 %71, i64 1), !dbg !74
  %72 = trunc i8 %70 to i1, !dbg !75
  %73 = call i8 @nd_bv8_in23(), !dbg !76
  %74 = zext i8 %73 to i64, !dbg !77
  call void @btor2mlir_print_input_num(i64 23, i64 %74, i64 1), !dbg !78
  %75 = trunc i8 %73 to i1, !dbg !79
  %76 = call i8 @nd_bv8_in24(), !dbg !80
  %77 = zext i8 %76 to i64, !dbg !81
  call void @btor2mlir_print_input_num(i64 24, i64 %77, i64 1), !dbg !82
  %78 = trunc i8 %76 to i1, !dbg !83
  %79 = icmp eq i1 %8, false, !dbg !84
  %80 = select i1 %79, i1 true, i1 true, !dbg !85
  %81 = zext i10 %13 to i32, !dbg !86
  %82 = icmp ugt i32 %81, 104, !dbg !87
  %83 = select i1 %82, i1 %80, i1 %78, !dbg !88
  %84 = select i1 %3, i1 %83, i1 %75, !dbg !89
  %85 = select i1 %82, i1 %84, i1 %8, !dbg !90
  %86 = select i1 %3, i1 %85, i1 %72, !dbg !91
  %87 = select i1 %3, i1 %86, i1 %8, !dbg !92
  %88 = select i1 %6, i1 true, i1 %9, !dbg !93
  %89 = select i1 %4, i1 %10, i1 %10, !dbg !94
  %90 = select i1 %5, i1 true, i1 %11, !dbg !95
  %91 = call i16 @nd_bv16_in25(), !dbg !96
  %92 = zext i16 %91 to i64, !dbg !97
  call void @btor2mlir_print_input_num(i64 25, i64 %92, i64 10), !dbg !98
  %93 = trunc i16 %91 to i10, !dbg !99
  %94 = zext i10 %13 to i32, !dbg !100
  %95 = add i32 %94, 1, !dbg !101
  %96 = lshr i32 %95, 0, !dbg !102
  %97 = trunc i32 %96 to i10, !dbg !103
  %98 = select i1 %82, i10 0, i10 %97, !dbg !104
  %99 = select i1 %3, i10 %98, i10 %93, !dbg !105
  %100 = select i1 %3, i10 %99, i10 %13, !dbg !106
  %101 = call i8 @nd_bv8_in26(), !dbg !107
  %102 = zext i8 %101 to i64, !dbg !108
  call void @btor2mlir_print_input_num(i64 26, i64 %102, i64 1), !dbg !109
  %103 = trunc i8 %101 to i1, !dbg !110
  %104 = call i8 @nd_bv8_in27(), !dbg !111
  %105 = zext i8 %104 to i64, !dbg !112
  call void @btor2mlir_print_input_num(i64 27, i64 %105, i64 1), !dbg !113
  %106 = trunc i8 %104 to i1, !dbg !114
  %107 = call i8 @nd_bv8_in28(), !dbg !115
  %108 = zext i8 %107 to i64, !dbg !116
  call void @btor2mlir_print_input_num(i64 28, i64 %108, i64 1), !dbg !117
  %109 = trunc i8 %107 to i1, !dbg !118
  %110 = icmp eq i1 %8, false, !dbg !119
  %111 = select i1 %110, i1 false, i1 false, !dbg !120
  %112 = select i1 %82, i1 %111, i1 %109, !dbg !121
  %113 = select i1 %3, i1 %112, i1 %106, !dbg !122
  %114 = select i1 %82, i1 %113, i1 false, !dbg !123
  %115 = select i1 %3, i1 %114, i1 %103, !dbg !124
  %116 = select i1 %3, i1 %115, i1 false, !dbg !125
  %117 = zext i1 %3 to i32, !dbg !126
  %118 = icmp eq i32 %117, 0, !dbg !127
  %119 = zext i1 %2 to i32, !dbg !128
  %120 = icmp eq i32 %119, 0, !dbg !129
  %121 = or i1 %120, %118, !dbg !130
  %122 = xor i1 %121, true, !dbg !131
  %123 = and i1 true, %122, !dbg !132
  %124 = xor i1 %123, true, !dbg !133
  br i1 %124, label %125, label %126, !dbg !134

125:                                              ; preds = %1
  br label %1, !dbg !135

126:                                              ; preds = %1
  call void @__VERIFIER_error(), !dbg !136
  unreachable, !dbg !137
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2/bv/2019/goel/vcegar_QF_BV_itc99_b13_p10.btor2.mlir.opt", directory: "/home/jetafese/hwmc20-mlir")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 23, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 25, column: 11, scope: !8)
!10 = !DILocation(line: 29, column: 11, scope: !8)
!11 = !DILocation(line: 30, column: 5, scope: !8)
!12 = !DILocation(line: 31, column: 11, scope: !8)
!13 = !DILocation(line: 34, column: 11, scope: !8)
!14 = !DILocation(line: 36, column: 11, scope: !8)
!15 = !DILocation(line: 37, column: 11, scope: !8)
!16 = !DILocation(line: 38, column: 11, scope: !8)
!17 = !DILocation(line: 39, column: 11, scope: !8)
!18 = !DILocation(line: 40, column: 11, scope: !8)
!19 = !DILocation(line: 44, column: 11, scope: !8)
!20 = !DILocation(line: 45, column: 5, scope: !8)
!21 = !DILocation(line: 46, column: 11, scope: !8)
!22 = !DILocation(line: 47, column: 11, scope: !8)
!23 = !DILocation(line: 51, column: 11, scope: !8)
!24 = !DILocation(line: 52, column: 5, scope: !8)
!25 = !DILocation(line: 53, column: 11, scope: !8)
!26 = !DILocation(line: 55, column: 11, scope: !8)
!27 = !DILocation(line: 56, column: 11, scope: !8)
!28 = !DILocation(line: 60, column: 11, scope: !8)
!29 = !DILocation(line: 61, column: 5, scope: !8)
!30 = !DILocation(line: 62, column: 11, scope: !8)
!31 = !DILocation(line: 63, column: 11, scope: !8)
!32 = !DILocation(line: 64, column: 11, scope: !8)
!33 = !DILocation(line: 65, column: 11, scope: !8)
!34 = !DILocation(line: 67, column: 11, scope: !8)
!35 = !DILocation(line: 68, column: 11, scope: !8)
!36 = !DILocation(line: 69, column: 11, scope: !8)
!37 = !DILocation(line: 70, column: 11, scope: !8)
!38 = !DILocation(line: 71, column: 11, scope: !8)
!39 = !DILocation(line: 72, column: 11, scope: !8)
!40 = !DILocation(line: 73, column: 11, scope: !8)
!41 = !DILocation(line: 77, column: 11, scope: !8)
!42 = !DILocation(line: 78, column: 5, scope: !8)
!43 = !DILocation(line: 79, column: 11, scope: !8)
!44 = !DILocation(line: 80, column: 11, scope: !8)
!45 = !DILocation(line: 81, column: 11, scope: !8)
!46 = !DILocation(line: 82, column: 11, scope: !8)
!47 = !DILocation(line: 83, column: 11, scope: !8)
!48 = !DILocation(line: 84, column: 11, scope: !8)
!49 = !DILocation(line: 88, column: 11, scope: !8)
!50 = !DILocation(line: 89, column: 5, scope: !8)
!51 = !DILocation(line: 90, column: 11, scope: !8)
!52 = !DILocation(line: 91, column: 11, scope: !8)
!53 = !DILocation(line: 92, column: 11, scope: !8)
!54 = !DILocation(line: 93, column: 11, scope: !8)
!55 = !DILocation(line: 94, column: 11, scope: !8)
!56 = !DILocation(line: 95, column: 11, scope: !8)
!57 = !DILocation(line: 99, column: 11, scope: !8)
!58 = !DILocation(line: 100, column: 5, scope: !8)
!59 = !DILocation(line: 101, column: 11, scope: !8)
!60 = !DILocation(line: 102, column: 11, scope: !8)
!61 = !DILocation(line: 103, column: 11, scope: !8)
!62 = !DILocation(line: 104, column: 11, scope: !8)
!63 = !DILocation(line: 105, column: 11, scope: !8)
!64 = !DILocation(line: 106, column: 11, scope: !8)
!65 = !DILocation(line: 110, column: 11, scope: !8)
!66 = !DILocation(line: 111, column: 5, scope: !8)
!67 = !DILocation(line: 112, column: 11, scope: !8)
!68 = !DILocation(line: 113, column: 11, scope: !8)
!69 = !DILocation(line: 114, column: 11, scope: !8)
!70 = !DILocation(line: 115, column: 11, scope: !8)
!71 = !DILocation(line: 116, column: 11, scope: !8)
!72 = !DILocation(line: 117, column: 12, scope: !8)
!73 = !DILocation(line: 121, column: 12, scope: !8)
!74 = !DILocation(line: 122, column: 5, scope: !8)
!75 = !DILocation(line: 123, column: 12, scope: !8)
!76 = !DILocation(line: 124, column: 12, scope: !8)
!77 = !DILocation(line: 128, column: 12, scope: !8)
!78 = !DILocation(line: 129, column: 5, scope: !8)
!79 = !DILocation(line: 130, column: 12, scope: !8)
!80 = !DILocation(line: 131, column: 12, scope: !8)
!81 = !DILocation(line: 135, column: 12, scope: !8)
!82 = !DILocation(line: 136, column: 5, scope: !8)
!83 = !DILocation(line: 137, column: 12, scope: !8)
!84 = !DILocation(line: 138, column: 12, scope: !8)
!85 = !DILocation(line: 139, column: 12, scope: !8)
!86 = !DILocation(line: 141, column: 12, scope: !8)
!87 = !DILocation(line: 142, column: 12, scope: !8)
!88 = !DILocation(line: 143, column: 12, scope: !8)
!89 = !DILocation(line: 144, column: 12, scope: !8)
!90 = !DILocation(line: 145, column: 12, scope: !8)
!91 = !DILocation(line: 146, column: 12, scope: !8)
!92 = !DILocation(line: 147, column: 12, scope: !8)
!93 = !DILocation(line: 148, column: 12, scope: !8)
!94 = !DILocation(line: 149, column: 12, scope: !8)
!95 = !DILocation(line: 150, column: 12, scope: !8)
!96 = !DILocation(line: 151, column: 12, scope: !8)
!97 = !DILocation(line: 155, column: 12, scope: !8)
!98 = !DILocation(line: 156, column: 5, scope: !8)
!99 = !DILocation(line: 157, column: 12, scope: !8)
!100 = !DILocation(line: 159, column: 12, scope: !8)
!101 = !DILocation(line: 160, column: 12, scope: !8)
!102 = !DILocation(line: 162, column: 12, scope: !8)
!103 = !DILocation(line: 163, column: 12, scope: !8)
!104 = !DILocation(line: 165, column: 12, scope: !8)
!105 = !DILocation(line: 166, column: 12, scope: !8)
!106 = !DILocation(line: 167, column: 12, scope: !8)
!107 = !DILocation(line: 168, column: 12, scope: !8)
!108 = !DILocation(line: 172, column: 12, scope: !8)
!109 = !DILocation(line: 173, column: 5, scope: !8)
!110 = !DILocation(line: 174, column: 12, scope: !8)
!111 = !DILocation(line: 175, column: 12, scope: !8)
!112 = !DILocation(line: 179, column: 12, scope: !8)
!113 = !DILocation(line: 180, column: 5, scope: !8)
!114 = !DILocation(line: 181, column: 12, scope: !8)
!115 = !DILocation(line: 182, column: 12, scope: !8)
!116 = !DILocation(line: 186, column: 12, scope: !8)
!117 = !DILocation(line: 187, column: 5, scope: !8)
!118 = !DILocation(line: 188, column: 12, scope: !8)
!119 = !DILocation(line: 189, column: 12, scope: !8)
!120 = !DILocation(line: 190, column: 12, scope: !8)
!121 = !DILocation(line: 191, column: 12, scope: !8)
!122 = !DILocation(line: 192, column: 12, scope: !8)
!123 = !DILocation(line: 193, column: 12, scope: !8)
!124 = !DILocation(line: 194, column: 12, scope: !8)
!125 = !DILocation(line: 195, column: 12, scope: !8)
!126 = !DILocation(line: 197, column: 12, scope: !8)
!127 = !DILocation(line: 198, column: 12, scope: !8)
!128 = !DILocation(line: 199, column: 12, scope: !8)
!129 = !DILocation(line: 200, column: 12, scope: !8)
!130 = !DILocation(line: 201, column: 12, scope: !8)
!131 = !DILocation(line: 203, column: 12, scope: !8)
!132 = !DILocation(line: 204, column: 12, scope: !8)
!133 = !DILocation(line: 206, column: 12, scope: !8)
!134 = !DILocation(line: 207, column: 5, scope: !8)
!135 = !DILocation(line: 209, column: 5, scope: !8)
!136 = !DILocation(line: 211, column: 5, scope: !8)
!137 = !DILocation(line: 212, column: 5, scope: !8)
