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
  %2 = trunc i16 %1 to i10, !dbg !9
  %3 = call <1024 x i32> @nd_array1024xbv32(), !dbg !10
  br label %4, !dbg !11

4:                                                ; preds = %17, %0
  %5 = phi i10 [ %19, %17 ], [ %2, %0 ]
  %6 = phi <1024 x i32> [ %11, %17 ], [ %3, %0 ]
  %7 = phi i10 [ %10, %17 ], [ 0, %0 ]
  %8 = add i10 %7, 1, !dbg !12
  %9 = icmp ule i10 %7, 32, !dbg !13
  %10 = select i1 %9, i10 %8, i10 %7, !dbg !14
  %11 = insertelement <1024 x i32> %6, i32 0, i10 %7, !dbg !15
  %12 = extractelement <1024 x i32> %6, i10 %5, !dbg !16
  %13 = icmp ne i32 %12, 0, !dbg !17
  %14 = icmp ult i10 %5, %7, !dbg !18
  %15 = and i1 %14, %13, !dbg !19
  %16 = xor i1 %15, true, !dbg !20
  br i1 %16, label %17, label %20, !dbg !21

17:                                               ; preds = %4
  %18 = call i16 @nd_bv16_st0(), !dbg !22
  %19 = trunc i16 %18 to i10, !dbg !23
  br label %4, !dbg !24

20:                                               ; preds = %4
  call void @__VERIFIER_error(), !dbg !25
  unreachable, !dbg !26
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "hwmc20-mlir/btor2/array/2020/mann/easy_zero_array.btor.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 8, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 9, column: 10, scope: !8)
!10 = !DILocation(line: 10, column: 10, scope: !8)
!11 = !DILocation(line: 11, column: 5, scope: !8)
!12 = !DILocation(line: 14, column: 10, scope: !8)
!13 = !DILocation(line: 16, column: 11, scope: !8)
!14 = !DILocation(line: 17, column: 11, scope: !8)
!15 = !DILocation(line: 19, column: 11, scope: !8)
!16 = !DILocation(line: 20, column: 11, scope: !8)
!17 = !DILocation(line: 21, column: 11, scope: !8)
!18 = !DILocation(line: 22, column: 11, scope: !8)
!19 = !DILocation(line: 23, column: 11, scope: !8)
!20 = !DILocation(line: 25, column: 11, scope: !8)
!21 = !DILocation(line: 26, column: 5, scope: !8)
!22 = !DILocation(line: 28, column: 11, scope: !8)
!23 = !DILocation(line: 29, column: 11, scope: !8)
!24 = !DILocation(line: 30, column: 5, scope: !8)
!25 = !DILocation(line: 32, column: 5, scope: !8)
!26 = !DILocation(line: 33, column: 5, scope: !8)
