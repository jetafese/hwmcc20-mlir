; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @verifier.error()

declare i10 @nd_bv10()

declare i1 @nd_bv1()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %95, %0
  %2 = phi i1 [ %32, %95 ], [ false, %0 ]
  %3 = phi i1 [ %37, %95 ], [ false, %0 ]
  %4 = phi i1 [ %38, %95 ], [ false, %0 ]
  %5 = phi i1 [ %43, %95 ], [ false, %0 ]
  %6 = phi i1 [ %48, %95 ], [ false, %0 ]
  %7 = phi i1 [ %53, %95 ], [ false, %0 ]
  %8 = phi i1 [ %65, %95 ], [ true, %0 ]
  %9 = phi i1 [ %66, %95 ], [ false, %0 ]
  %10 = phi i1 [ %67, %95 ], [ false, %0 ]
  %11 = phi i1 [ %68, %95 ], [ false, %0 ]
  %12 = phi i1 [ %27, %95 ], [ false, %0 ]
  %13 = phi i10 [ %76, %95 ], [ 0, %0 ]
  %14 = phi i1 [ %86, %95 ], [ false, %0 ]
  %15 = call i1 @nd_bv1(), !dbg !9
  %16 = select i1 %14, i1 true, i1 %12, !dbg !10
  %17 = xor i1 %16, true, !dbg !11
  %18 = select i1 %17, i1 false, i1 true, !dbg !12
  %19 = select i1 %7, i1 %18, i1 %15, !dbg !13
  %20 = select i1 %7, i1 %19, i1 %2, !dbg !14
  %21 = call i1 @nd_bv1(), !dbg !15
  %22 = call i1 @nd_bv1(), !dbg !16
  %23 = xor i1 %22, true, !dbg !17
  %24 = call i1 @nd_bv1(), !dbg !18
  %25 = select i1 %17, i1 true, i1 %16, !dbg !19
  %26 = select i1 %7, i1 %25, i1 %24, !dbg !20
  %27 = select i1 %7, i1 %26, i1 %16, !dbg !21
  %28 = xor i1 %27, true, !dbg !22
  %29 = or i1 %28, %23, !dbg !23
  %30 = select i1 %29, i1 true, i1 false, !dbg !24
  %31 = select i1 %9, i1 %30, i1 %21, !dbg !25
  %32 = select i1 %9, i1 %31, i1 %20, !dbg !26
  %33 = select i1 %14, i1 false, i1 %3, !dbg !27
  %34 = call i1 @nd_bv1(), !dbg !28
  %35 = select i1 %29, i1 %33, i1 true, !dbg !29
  %36 = select i1 %9, i1 %35, i1 %34, !dbg !30
  %37 = select i1 %9, i1 %36, i1 %33, !dbg !31
  %38 = select i1 %4, i1 false, i1 true, !dbg !32
  %39 = call i1 @nd_bv1(), !dbg !33
  %40 = select i1 %10, i1 true, i1 false, !dbg !34
  %41 = icmp eq i1 %5, false, !dbg !35
  %42 = select i1 %41, i1 %40, i1 %39, !dbg !36
  %43 = select i1 %5, i1 false, i1 %42, !dbg !37
  %44 = call i1 @nd_bv1(), !dbg !38
  %45 = select i1 %11, i1 true, i1 false, !dbg !39
  %46 = icmp eq i1 %6, false, !dbg !40
  %47 = select i1 %46, i1 %45, i1 %44, !dbg !41
  %48 = select i1 %6, i1 false, i1 %47, !dbg !42
  %49 = call i1 @nd_bv1(), !dbg !43
  %50 = select i1 %11, i1 true, i1 %7, !dbg !44
  %51 = icmp eq i1 %6, false, !dbg !45
  %52 = select i1 %51, i1 %50, i1 %49, !dbg !46
  %53 = select i1 %6, i1 false, i1 %52, !dbg !47
  %54 = call i1 @nd_bv1(), !dbg !48
  %55 = call i1 @nd_bv1(), !dbg !49
  %56 = call i1 @nd_bv1(), !dbg !50
  %57 = icmp eq i1 %8, false, !dbg !51
  %58 = select i1 %57, i1 true, i1 true, !dbg !52
  %59 = zext i10 %13 to i32, !dbg !53
  %60 = icmp ugt i32 %59, 104, !dbg !54
  %61 = select i1 %60, i1 %58, i1 %56, !dbg !55
  %62 = select i1 %3, i1 %61, i1 %55, !dbg !56
  %63 = select i1 %60, i1 %62, i1 %8, !dbg !57
  %64 = select i1 %3, i1 %63, i1 %54, !dbg !58
  %65 = select i1 %3, i1 %64, i1 %8, !dbg !59
  %66 = select i1 %6, i1 true, i1 %9, !dbg !60
  %67 = select i1 %4, i1 %10, i1 %10, !dbg !61
  %68 = select i1 %5, i1 true, i1 %11, !dbg !62
  %69 = call i10 @nd_bv10(), !dbg !63
  %70 = zext i10 %13 to i32, !dbg !64
  %71 = add i32 %70, 1, !dbg !65
  %72 = lshr i32 %71, 0, !dbg !66
  %73 = trunc i32 %72 to i10, !dbg !67
  %74 = select i1 %60, i10 0, i10 %73, !dbg !68
  %75 = select i1 %3, i10 %74, i10 %69, !dbg !69
  %76 = select i1 %3, i10 %75, i10 %13, !dbg !70
  %77 = call i1 @nd_bv1(), !dbg !71
  %78 = call i1 @nd_bv1(), !dbg !72
  %79 = call i1 @nd_bv1(), !dbg !73
  %80 = icmp eq i1 %8, false, !dbg !74
  %81 = select i1 %80, i1 false, i1 false, !dbg !75
  %82 = select i1 %60, i1 %81, i1 %79, !dbg !76
  %83 = select i1 %3, i1 %82, i1 %78, !dbg !77
  %84 = select i1 %60, i1 %83, i1 false, !dbg !78
  %85 = select i1 %3, i1 %84, i1 %77, !dbg !79
  %86 = select i1 %3, i1 %85, i1 false, !dbg !80
  %87 = zext i1 %3 to i32, !dbg !81
  %88 = icmp eq i32 %87, 0, !dbg !82
  %89 = zext i1 %2 to i32, !dbg !83
  %90 = icmp eq i32 %89, 0, !dbg !84
  %91 = or i1 %90, %88, !dbg !85
  %92 = xor i1 %91, true, !dbg !86
  %93 = and i1 true, %92, !dbg !87
  %94 = xor i1 %93, true, !dbg !88
  br i1 %94, label %95, label %96, !dbg !89

95:                                               ; preds = %1
  br label %1, !dbg !90

96:                                               ; preds = %1
  call void @verifier.error(), !dbg !91
  unreachable, !dbg !92
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2mlir-1/hwmcc20/btor2/bv/2019/goel/vcegar_QF_BV_itc99_b13_p10.btor2.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 9, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 11, column: 11, scope: !8)
!10 = !DILocation(line: 14, column: 11, scope: !8)
!11 = !DILocation(line: 16, column: 11, scope: !8)
!12 = !DILocation(line: 17, column: 11, scope: !8)
!13 = !DILocation(line: 18, column: 11, scope: !8)
!14 = !DILocation(line: 19, column: 11, scope: !8)
!15 = !DILocation(line: 20, column: 11, scope: !8)
!16 = !DILocation(line: 21, column: 11, scope: !8)
!17 = !DILocation(line: 23, column: 11, scope: !8)
!18 = !DILocation(line: 24, column: 11, scope: !8)
!19 = !DILocation(line: 25, column: 11, scope: !8)
!20 = !DILocation(line: 26, column: 11, scope: !8)
!21 = !DILocation(line: 27, column: 11, scope: !8)
!22 = !DILocation(line: 29, column: 11, scope: !8)
!23 = !DILocation(line: 30, column: 11, scope: !8)
!24 = !DILocation(line: 31, column: 11, scope: !8)
!25 = !DILocation(line: 32, column: 11, scope: !8)
!26 = !DILocation(line: 33, column: 11, scope: !8)
!27 = !DILocation(line: 34, column: 11, scope: !8)
!28 = !DILocation(line: 35, column: 11, scope: !8)
!29 = !DILocation(line: 36, column: 11, scope: !8)
!30 = !DILocation(line: 37, column: 11, scope: !8)
!31 = !DILocation(line: 38, column: 11, scope: !8)
!32 = !DILocation(line: 39, column: 11, scope: !8)
!33 = !DILocation(line: 40, column: 11, scope: !8)
!34 = !DILocation(line: 41, column: 11, scope: !8)
!35 = !DILocation(line: 42, column: 11, scope: !8)
!36 = !DILocation(line: 43, column: 11, scope: !8)
!37 = !DILocation(line: 44, column: 11, scope: !8)
!38 = !DILocation(line: 45, column: 11, scope: !8)
!39 = !DILocation(line: 46, column: 11, scope: !8)
!40 = !DILocation(line: 47, column: 11, scope: !8)
!41 = !DILocation(line: 48, column: 11, scope: !8)
!42 = !DILocation(line: 49, column: 11, scope: !8)
!43 = !DILocation(line: 50, column: 11, scope: !8)
!44 = !DILocation(line: 51, column: 11, scope: !8)
!45 = !DILocation(line: 52, column: 11, scope: !8)
!46 = !DILocation(line: 53, column: 11, scope: !8)
!47 = !DILocation(line: 54, column: 11, scope: !8)
!48 = !DILocation(line: 55, column: 11, scope: !8)
!49 = !DILocation(line: 56, column: 11, scope: !8)
!50 = !DILocation(line: 57, column: 11, scope: !8)
!51 = !DILocation(line: 58, column: 11, scope: !8)
!52 = !DILocation(line: 59, column: 11, scope: !8)
!53 = !DILocation(line: 61, column: 11, scope: !8)
!54 = !DILocation(line: 62, column: 11, scope: !8)
!55 = !DILocation(line: 63, column: 11, scope: !8)
!56 = !DILocation(line: 64, column: 11, scope: !8)
!57 = !DILocation(line: 65, column: 11, scope: !8)
!58 = !DILocation(line: 66, column: 11, scope: !8)
!59 = !DILocation(line: 67, column: 11, scope: !8)
!60 = !DILocation(line: 68, column: 11, scope: !8)
!61 = !DILocation(line: 69, column: 11, scope: !8)
!62 = !DILocation(line: 70, column: 11, scope: !8)
!63 = !DILocation(line: 71, column: 11, scope: !8)
!64 = !DILocation(line: 73, column: 11, scope: !8)
!65 = !DILocation(line: 74, column: 11, scope: !8)
!66 = !DILocation(line: 76, column: 11, scope: !8)
!67 = !DILocation(line: 77, column: 11, scope: !8)
!68 = !DILocation(line: 79, column: 11, scope: !8)
!69 = !DILocation(line: 80, column: 11, scope: !8)
!70 = !DILocation(line: 81, column: 11, scope: !8)
!71 = !DILocation(line: 82, column: 11, scope: !8)
!72 = !DILocation(line: 83, column: 11, scope: !8)
!73 = !DILocation(line: 84, column: 11, scope: !8)
!74 = !DILocation(line: 85, column: 11, scope: !8)
!75 = !DILocation(line: 86, column: 11, scope: !8)
!76 = !DILocation(line: 87, column: 11, scope: !8)
!77 = !DILocation(line: 88, column: 11, scope: !8)
!78 = !DILocation(line: 89, column: 11, scope: !8)
!79 = !DILocation(line: 90, column: 11, scope: !8)
!80 = !DILocation(line: 91, column: 11, scope: !8)
!81 = !DILocation(line: 93, column: 11, scope: !8)
!82 = !DILocation(line: 94, column: 11, scope: !8)
!83 = !DILocation(line: 95, column: 12, scope: !8)
!84 = !DILocation(line: 96, column: 12, scope: !8)
!85 = !DILocation(line: 97, column: 12, scope: !8)
!86 = !DILocation(line: 99, column: 12, scope: !8)
!87 = !DILocation(line: 100, column: 12, scope: !8)
!88 = !DILocation(line: 102, column: 12, scope: !8)
!89 = !DILocation(line: 103, column: 5, scope: !8)
!90 = !DILocation(line: 105, column: 5, scope: !8)
!91 = !DILocation(line: 107, column: 5, scope: !8)
!92 = !DILocation(line: 108, column: 5, scope: !8)
