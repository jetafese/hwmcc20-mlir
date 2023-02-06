; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @verifier.error()

declare i16 @nd_bv16()

declare i1 @nd_bv1()

declare i4 @nd_bv4()

define void @main() !dbg !3 {
  %1 = call i4 @nd_bv4(), !dbg !7
  br label %2, !dbg !9

2:                                                ; preds = %24, %0
  %3 = phi i4 [ %6, %24 ], [ %1, %0 ]
  %4 = phi i16 [ %7, %24 ], [ 0, %0 ]
  %5 = phi i1 [ false, %24 ], [ true, %0 ]
  %6 = select i1 %5, i4 0, i4 %3, !dbg !10
  %7 = add i16 %4, 1, !dbg !11
  %8 = call i1 @nd_bv1(), !dbg !12
  %9 = call i16 @nd_bv16(), !dbg !13
  %10 = call i16 @nd_bv16(), !dbg !14
  %11 = add i16 %10, %9, !dbg !15
  %12 = sub i16 %10, %9, !dbg !16
  %13 = bitcast i4 %3 to <4 x i1>, !dbg !17
  %14 = call i1 @llvm.vector.reduce.or.v4i1(<4 x i1> %13), !dbg !18
  %15 = xor i1 %14, true, !dbg !19
  %16 = select i1 %15, i16 %11, i16 %12, !dbg !20
  %17 = icmp eq i16 %16, %11, !dbg !21
  %18 = icmp ugt i16 %4, 0, !dbg !22
  %19 = select i1 %18, i1 %17, i1 %8, !dbg !23
  %20 = xor i1 %19, true, !dbg !24
  %21 = select i1 %18, i1 true, i1 false, !dbg !25
  %22 = and i1 %21, %20, !dbg !26
  %23 = xor i1 %22, true, !dbg !27
  br i1 %23, label %24, label %25, !dbg !28

24:                                               ; preds = %2
  br label %2, !dbg !29

25:                                               ; preds = %2
  call void @verifier.error(), !dbg !30
  unreachable, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.vector.reduce.or.v4i1(<4 x i1>) #0

attributes #0 = { nofree nosync nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2mlir-1/hwmcc20/btor2/bv/2020/mann/simple_alu.btor.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 9, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 10, column: 5, scope: !8)
!10 = !DILocation(line: 13, column: 10, scope: !8)
!11 = !DILocation(line: 16, column: 11, scope: !8)
!12 = !DILocation(line: 18, column: 11, scope: !8)
!13 = !DILocation(line: 19, column: 11, scope: !8)
!14 = !DILocation(line: 20, column: 11, scope: !8)
!15 = !DILocation(line: 21, column: 11, scope: !8)
!16 = !DILocation(line: 22, column: 11, scope: !8)
!17 = !DILocation(line: 23, column: 11, scope: !8)
!18 = !DILocation(line: 24, column: 11, scope: !8)
!19 = !DILocation(line: 26, column: 11, scope: !8)
!20 = !DILocation(line: 27, column: 11, scope: !8)
!21 = !DILocation(line: 28, column: 11, scope: !8)
!22 = !DILocation(line: 30, column: 11, scope: !8)
!23 = !DILocation(line: 31, column: 11, scope: !8)
!24 = !DILocation(line: 33, column: 11, scope: !8)
!25 = !DILocation(line: 34, column: 11, scope: !8)
!26 = !DILocation(line: 35, column: 11, scope: !8)
!27 = !DILocation(line: 37, column: 11, scope: !8)
!28 = !DILocation(line: 38, column: 5, scope: !8)
!29 = !DILocation(line: 40, column: 5, scope: !8)
!30 = !DILocation(line: 42, column: 5, scope: !8)
!31 = !DILocation(line: 43, column: 5, scope: !8)
