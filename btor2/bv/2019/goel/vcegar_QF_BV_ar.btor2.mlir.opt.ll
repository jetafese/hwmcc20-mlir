; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @verifier.error()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %11, %0
  %2 = phi i2501 [ %6, %11 ], [ 1, %0 ]
  %3 = phi i2501 [ %2, %11 ], [ 0, %0 ]
  %4 = add i2501 %3, %2, !dbg !9
  %5 = icmp ult i2501 %2, 100, !dbg !10
  %6 = select i1 %5, i2501 %4, i2501 %2, !dbg !11
  %7 = icmp ult i2501 %2, 200, !dbg !12
  %8 = xor i1 %7, true, !dbg !13
  %9 = and i1 true, %8, !dbg !14
  %10 = xor i1 %9, true, !dbg !15
  br i1 %10, label %11, label %12, !dbg !16

11:                                               ; preds = %1
  br label %1, !dbg !17

12:                                               ; preds = %1
  call void @verifier.error(), !dbg !18
  unreachable, !dbg !19
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "hwmc20-mlir/btor2/bv/2019/goel/vcegar_QF_BV_ar.btor2.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 6, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 8, column: 10, scope: !8)
!10 = !DILocation(line: 11, column: 10, scope: !8)
!11 = !DILocation(line: 12, column: 10, scope: !8)
!12 = !DILocation(line: 15, column: 11, scope: !8)
!13 = !DILocation(line: 17, column: 11, scope: !8)
!14 = !DILocation(line: 19, column: 11, scope: !8)
!15 = !DILocation(line: 21, column: 11, scope: !8)
!16 = !DILocation(line: 22, column: 5, scope: !8)
!17 = !DILocation(line: 24, column: 5, scope: !8)
!18 = !DILocation(line: 26, column: 5, scope: !8)
!19 = !DILocation(line: 27, column: 5, scope: !8)
