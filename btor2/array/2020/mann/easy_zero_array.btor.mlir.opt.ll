; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @__VERIFIER_error()

declare <1024 x i32> @nd_array1024xbv32()

declare void @btor2mlir_print_state_num(i64, i64, i64)

declare i16 @nd_bv16_st0()

define void @main() !dbg !3 {
  %1 = call i16 @nd_bv16_st0(), !dbg !7
  %2 = zext i16 %1 to i64, !dbg !9
  call void @btor2mlir_print_state_num(i64 0, i64 %2, i64 10), !dbg !10
  %3 = trunc i16 %1 to i10, !dbg !11
  %4 = call <1024 x i32> @nd_array1024xbv32(), !dbg !12
  br label %5, !dbg !13

5:                                                ; preds = %18, %0
  %6 = phi i10 [ %21, %18 ], [ %3, %0 ]
  %7 = phi <1024 x i32> [ %12, %18 ], [ %4, %0 ]
  %8 = phi i10 [ %11, %18 ], [ 0, %0 ]
  %9 = add i10 %8, 1, !dbg !14
  %10 = icmp ule i10 %8, 32, !dbg !15
  %11 = select i1 %10, i10 %9, i10 %8, !dbg !16
  %12 = insertelement <1024 x i32> %7, i32 0, i10 %8, !dbg !17
  %13 = extractelement <1024 x i32> %7, i10 %6, !dbg !18
  %14 = icmp ne i32 %13, 0, !dbg !19
  %15 = icmp ult i10 %6, %8, !dbg !20
  %16 = and i1 %15, %14, !dbg !21
  %17 = xor i1 %16, true, !dbg !22
  br i1 %17, label %18, label %22, !dbg !23

18:                                               ; preds = %5
  %19 = call i16 @nd_bv16_st0(), !dbg !24
  %20 = zext i16 %19 to i64, !dbg !25
  call void @btor2mlir_print_state_num(i64 0, i64 %20, i64 10), !dbg !26
  %21 = trunc i16 %19 to i10, !dbg !27
  br label %5, !dbg !28

22:                                               ; preds = %5
  call void @__VERIFIER_error(), !dbg !29
  unreachable, !dbg !30
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2/array/2020/mann/easy_zero_array.btor.mlir.opt", directory: "/home/jetafese/hwmc20-mlir")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 7, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 11, column: 10, scope: !8)
!10 = !DILocation(line: 12, column: 5, scope: !8)
!11 = !DILocation(line: 13, column: 10, scope: !8)
!12 = !DILocation(line: 14, column: 10, scope: !8)
!13 = !DILocation(line: 16, column: 5, scope: !8)
!14 = !DILocation(line: 19, column: 11, scope: !8)
!15 = !DILocation(line: 21, column: 11, scope: !8)
!16 = !DILocation(line: 22, column: 11, scope: !8)
!17 = !DILocation(line: 24, column: 11, scope: !8)
!18 = !DILocation(line: 25, column: 11, scope: !8)
!19 = !DILocation(line: 26, column: 11, scope: !8)
!20 = !DILocation(line: 27, column: 11, scope: !8)
!21 = !DILocation(line: 28, column: 11, scope: !8)
!22 = !DILocation(line: 30, column: 11, scope: !8)
!23 = !DILocation(line: 31, column: 5, scope: !8)
!24 = !DILocation(line: 33, column: 11, scope: !8)
!25 = !DILocation(line: 37, column: 11, scope: !8)
!26 = !DILocation(line: 38, column: 5, scope: !8)
!27 = !DILocation(line: 39, column: 11, scope: !8)
!28 = !DILocation(line: 40, column: 5, scope: !8)
!29 = !DILocation(line: 42, column: 5, scope: !8)
!30 = !DILocation(line: 43, column: 5, scope: !8)
