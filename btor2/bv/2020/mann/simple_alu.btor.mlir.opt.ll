; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @verifier.error()

declare i16 @nd_bv16()

declare i8 @nd_bv8()

define void @main() !dbg !3 {
  %1 = call i8 @nd_bv8(), !dbg !7
  %2 = trunc i8 %1 to i4, !dbg !9
  br label %3, !dbg !10

3:                                                ; preds = %26, %0
  %4 = phi i4 [ %7, %26 ], [ %2, %0 ]
  %5 = phi i16 [ %8, %26 ], [ 0, %0 ]
  %6 = phi i1 [ false, %26 ], [ true, %0 ]
  %7 = select i1 %6, i4 0, i4 %4, !dbg !11
  %8 = add i16 %5, 1, !dbg !12
  %9 = call i8 @nd_bv8(), !dbg !13
  %10 = trunc i8 %9 to i1, !dbg !14
  %11 = call i16 @nd_bv16(), !dbg !15
  %12 = call i16 @nd_bv16(), !dbg !16
  %13 = add i16 %12, %11, !dbg !17
  %14 = sub i16 %12, %11, !dbg !18
  %15 = bitcast i4 %4 to <4 x i1>, !dbg !19
  %16 = call i1 @llvm.vector.reduce.or.v4i1(<4 x i1> %15), !dbg !20
  %17 = xor i1 %16, true, !dbg !21
  %18 = select i1 %17, i16 %13, i16 %14, !dbg !22
  %19 = icmp eq i16 %18, %13, !dbg !23
  %20 = icmp ugt i16 %5, 0, !dbg !24
  %21 = select i1 %20, i1 %19, i1 %10, !dbg !25
  %22 = xor i1 %21, true, !dbg !26
  %23 = select i1 %20, i1 true, i1 false, !dbg !27
  %24 = and i1 %23, %22, !dbg !28
  %25 = xor i1 %24, true, !dbg !29
  br i1 %25, label %26, label %27, !dbg !30

26:                                               ; preds = %3
  br label %3, !dbg !31

27:                                               ; preds = %3
  call void @verifier.error(), !dbg !32
  unreachable, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.vector.reduce.or.v4i1(<4 x i1>) #0

attributes #0 = { nofree nosync nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "hwmc20-mlir/btor2/bv/2020/mann/simple_alu.btor.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 8, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 9, column: 10, scope: !8)
!10 = !DILocation(line: 10, column: 5, scope: !8)
!11 = !DILocation(line: 13, column: 10, scope: !8)
!12 = !DILocation(line: 16, column: 11, scope: !8)
!13 = !DILocation(line: 18, column: 11, scope: !8)
!14 = !DILocation(line: 19, column: 11, scope: !8)
!15 = !DILocation(line: 20, column: 11, scope: !8)
!16 = !DILocation(line: 21, column: 11, scope: !8)
!17 = !DILocation(line: 22, column: 11, scope: !8)
!18 = !DILocation(line: 23, column: 11, scope: !8)
!19 = !DILocation(line: 24, column: 11, scope: !8)
!20 = !DILocation(line: 25, column: 11, scope: !8)
!21 = !DILocation(line: 27, column: 11, scope: !8)
!22 = !DILocation(line: 28, column: 11, scope: !8)
!23 = !DILocation(line: 29, column: 11, scope: !8)
!24 = !DILocation(line: 31, column: 11, scope: !8)
!25 = !DILocation(line: 32, column: 11, scope: !8)
!26 = !DILocation(line: 34, column: 11, scope: !8)
!27 = !DILocation(line: 35, column: 11, scope: !8)
!28 = !DILocation(line: 36, column: 11, scope: !8)
!29 = !DILocation(line: 38, column: 11, scope: !8)
!30 = !DILocation(line: 39, column: 5, scope: !8)
!31 = !DILocation(line: 41, column: 5, scope: !8)
!32 = !DILocation(line: 43, column: 5, scope: !8)
!33 = !DILocation(line: 44, column: 5, scope: !8)
