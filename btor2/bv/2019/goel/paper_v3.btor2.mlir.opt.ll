; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @verifier.error()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %23, %0
  %2 = phi i8 [ %10, %23 ], [ 0, %0 ]
  %3 = phi i8 [ %17, %23 ], [ 0, %0 ]
  %4 = icmp ne i8 %3, -1, !dbg !9
  %5 = icmp ugt i8 %2, %3, !dbg !10
  %6 = or i1 %5, %4, !dbg !11
  %7 = select i1 %6, i8 %2, i8 %3, !dbg !12
  %8 = add i8 %2, 1, !dbg !13
  %9 = icmp eq i8 %2, %3, !dbg !14
  %10 = select i1 %9, i8 %8, i8 %7, !dbg !15
  %11 = add i8 %3, 1, !dbg !16
  %12 = icmp ne i8 %3, -1, !dbg !17
  %13 = icmp eq i8 %2, %3, !dbg !18
  %14 = or i1 %13, %12, !dbg !19
  %15 = select i1 %14, i8 %11, i8 %2, !dbg !20
  %16 = icmp ugt i8 %2, %3, !dbg !21
  %17 = select i1 %16, i8 %3, i8 %15, !dbg !22
  %18 = icmp ugt i8 %2, %3, !dbg !23
  %19 = xor i1 %18, true, !dbg !24
  %20 = xor i1 %19, true, !dbg !25
  %21 = and i1 true, %20, !dbg !26
  %22 = xor i1 %21, true, !dbg !27
  br i1 %22, label %23, label %24, !dbg !28

23:                                               ; preds = %1
  br label %1, !dbg !29

24:                                               ; preds = %1
  call void @verifier.error(), !dbg !30
  unreachable, !dbg !31
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2mlir-1/hwmcc20/btor2/bv/2019/goel/paper_v3.btor2.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 5, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 8, column: 10, scope: !8)
!10 = !DILocation(line: 9, column: 10, scope: !8)
!11 = !DILocation(line: 10, column: 10, scope: !8)
!12 = !DILocation(line: 11, column: 10, scope: !8)
!13 = !DILocation(line: 13, column: 10, scope: !8)
!14 = !DILocation(line: 14, column: 11, scope: !8)
!15 = !DILocation(line: 15, column: 11, scope: !8)
!16 = !DILocation(line: 16, column: 11, scope: !8)
!17 = !DILocation(line: 17, column: 11, scope: !8)
!18 = !DILocation(line: 18, column: 11, scope: !8)
!19 = !DILocation(line: 19, column: 11, scope: !8)
!20 = !DILocation(line: 20, column: 11, scope: !8)
!21 = !DILocation(line: 21, column: 11, scope: !8)
!22 = !DILocation(line: 22, column: 11, scope: !8)
!23 = !DILocation(line: 23, column: 11, scope: !8)
!24 = !DILocation(line: 25, column: 11, scope: !8)
!25 = !DILocation(line: 27, column: 11, scope: !8)
!26 = !DILocation(line: 29, column: 11, scope: !8)
!27 = !DILocation(line: 31, column: 11, scope: !8)
!28 = !DILocation(line: 32, column: 5, scope: !8)
!29 = !DILocation(line: 34, column: 5, scope: !8)
!30 = !DILocation(line: 36, column: 5, scope: !8)
!31 = !DILocation(line: 37, column: 5, scope: !8)
