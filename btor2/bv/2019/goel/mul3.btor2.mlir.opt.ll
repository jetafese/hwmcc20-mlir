; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @verifier.error()

declare i128 @nd_bv128()

declare i1 @nd_bv1()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %39, %0
  %2 = phi i256 [ %14, %39 ], [ 0, %0 ]
  %3 = phi i256 [ %20, %39 ], [ 0, %0 ]
  %4 = phi i128 [ %24, %39 ], [ 0, %0 ]
  %5 = phi i128 [ %28, %39 ], [ 0, %0 ]
  %6 = phi i1 [ %29, %39 ], [ true, %0 ]
  %7 = phi i1 [ %30, %39 ], [ true, %0 ]
  %8 = phi i128 [ %32, %39 ], [ 0, %0 ]
  %9 = phi i128 [ %34, %39 ], [ 0, %0 ]
  %10 = zext i128 %5 to i256, !dbg !9
  %11 = zext i128 %4 to i256, !dbg !10
  %12 = mul i256 %11, %10, !dbg !11
  %13 = call i1 @nd_bv1(), !dbg !12
  %14 = select i1 %13, i256 0, i256 %12, !dbg !13
  %15 = zext i128 %9 to i256, !dbg !14
  %16 = zext i128 %8 to i256, !dbg !15
  %17 = mul i256 %16, %15, !dbg !16
  %18 = or i1 %6, %7, !dbg !17
  %19 = select i1 %18, i256 %17, i256 %3, !dbg !18
  %20 = select i1 %13, i256 0, i256 %19, !dbg !19
  %21 = call i128 @nd_bv128(), !dbg !20
  %22 = call i1 @nd_bv1(), !dbg !21
  %23 = select i1 %22, i128 %21, i128 %4, !dbg !22
  %24 = select i1 %13, i128 0, i128 %23, !dbg !23
  %25 = call i128 @nd_bv128(), !dbg !24
  %26 = call i1 @nd_bv1(), !dbg !25
  %27 = select i1 %26, i128 %25, i128 %5, !dbg !26
  %28 = select i1 %13, i128 0, i128 %27, !dbg !27
  %29 = select i1 %13, i1 true, i1 %22, !dbg !28
  %30 = select i1 %13, i1 true, i1 %26, !dbg !29
  %31 = select i1 %22, i128 %21, i128 %8, !dbg !30
  %32 = select i1 %13, i128 0, i128 %31, !dbg !31
  %33 = select i1 %26, i128 %25, i128 %9, !dbg !32
  %34 = select i1 %13, i128 0, i128 %33, !dbg !33
  %35 = icmp eq i256 %2, %3, !dbg !34
  %36 = xor i1 %35, true, !dbg !35
  %37 = and i1 true, %36, !dbg !36
  %38 = xor i1 %37, true, !dbg !37
  br i1 %38, label %39, label %40, !dbg !38

39:                                               ; preds = %1
  br label %1, !dbg !39

40:                                               ; preds = %1
  call void @verifier.error(), !dbg !40
  unreachable, !dbg !41
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2mlir-1/hwmcc20/btor2/bv/2019/goel/mul3.btor2.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 9, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 11, column: 11, scope: !8)
!10 = !DILocation(line: 12, column: 11, scope: !8)
!11 = !DILocation(line: 13, column: 11, scope: !8)
!12 = !DILocation(line: 15, column: 11, scope: !8)
!13 = !DILocation(line: 16, column: 11, scope: !8)
!14 = !DILocation(line: 17, column: 11, scope: !8)
!15 = !DILocation(line: 18, column: 11, scope: !8)
!16 = !DILocation(line: 19, column: 11, scope: !8)
!17 = !DILocation(line: 20, column: 11, scope: !8)
!18 = !DILocation(line: 21, column: 11, scope: !8)
!19 = !DILocation(line: 22, column: 11, scope: !8)
!20 = !DILocation(line: 23, column: 11, scope: !8)
!21 = !DILocation(line: 24, column: 11, scope: !8)
!22 = !DILocation(line: 25, column: 11, scope: !8)
!23 = !DILocation(line: 27, column: 11, scope: !8)
!24 = !DILocation(line: 28, column: 11, scope: !8)
!25 = !DILocation(line: 29, column: 11, scope: !8)
!26 = !DILocation(line: 30, column: 11, scope: !8)
!27 = !DILocation(line: 31, column: 11, scope: !8)
!28 = !DILocation(line: 33, column: 11, scope: !8)
!29 = !DILocation(line: 34, column: 11, scope: !8)
!30 = !DILocation(line: 35, column: 11, scope: !8)
!31 = !DILocation(line: 36, column: 11, scope: !8)
!32 = !DILocation(line: 37, column: 11, scope: !8)
!33 = !DILocation(line: 38, column: 11, scope: !8)
!34 = !DILocation(line: 39, column: 11, scope: !8)
!35 = !DILocation(line: 41, column: 11, scope: !8)
!36 = !DILocation(line: 42, column: 11, scope: !8)
!37 = !DILocation(line: 44, column: 11, scope: !8)
!38 = !DILocation(line: 45, column: 5, scope: !8)
!39 = !DILocation(line: 47, column: 5, scope: !8)
!40 = !DILocation(line: 49, column: 5, scope: !8)
!41 = !DILocation(line: 50, column: 5, scope: !8)
