; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @verifier.error()

declare i12 @nd_bv12()

declare i1 @nd_bv1()

declare i4 @nd_bv4()

define void @main() !dbg !3 {
  br label %1, !dbg !7

1:                                                ; preds = %72, %0
  %2 = phi i1 [ true, %72 ], [ false, %0 ]
  %3 = phi i3 [ %4, %72 ], [ 0, %0 ]
  %4 = phi i3 [ %44, %72 ], [ 0, %0 ]
  %5 = phi i12 [ %63, %72 ], [ 0, %0 ]
  %6 = call i4 @nd_bv4(), !dbg !9
  %7 = icmp eq i4 %6, 0, !dbg !10
  %8 = select i1 %7, i3 0, i3 %4, !dbg !11
  %9 = add i3 %4, 1, !dbg !12
  %10 = icmp ne i3 %4, -3, !dbg !13
  %11 = icmp eq i4 %6, 5, !dbg !14
  %12 = icmp eq i4 %6, 4, !dbg !15
  %13 = icmp eq i4 %6, 1, !dbg !16
  %14 = call i1 @nd_bv1(), !dbg !17
  %15 = xor i1 %14, true, !dbg !18
  %16 = call i1 @nd_bv1(), !dbg !19
  %17 = and i1 %16, %15, !dbg !20
  %18 = xor i1 %17, true, !dbg !21
  %19 = and i1 %18, %13, !dbg !22
  %20 = or i1 %19, %12, !dbg !23
  %21 = or i1 %20, %11, !dbg !24
  %22 = and i1 %21, %10, !dbg !25
  %23 = select i1 %22, i3 %9, i3 %8, !dbg !26
  %24 = sub i3 %4, 1, !dbg !27
  %25 = icmp ne i3 %4, 0, !dbg !28
  %26 = icmp eq i4 %6, -1, !dbg !29
  %27 = icmp eq i4 %6, -8, !dbg !30
  %28 = or i1 %27, %26, !dbg !31
  %29 = bitcast i12 %5 to <12 x i1>, !dbg !32
  %30 = call i1 @llvm.vector.reduce.or.v12i1(<12 x i1> %29), !dbg !33
  %31 = xor i1 %30, true, !dbg !34
  %32 = and i1 %31, %28, !dbg !35
  %33 = icmp eq i4 %6, -1, !dbg !36
  %34 = icmp eq i4 %6, -3, !dbg !37
  %35 = icmp eq i4 %6, -5, !dbg !38
  %36 = icmp eq i4 %6, -6, !dbg !39
  %37 = or i1 %36, %35, !dbg !40
  %38 = or i1 %37, %34, !dbg !41
  %39 = or i1 %38, %33, !dbg !42
  %40 = xor i1 %17, true, !dbg !43
  %41 = and i1 %40, %39, !dbg !44
  %42 = or i1 %41, %32, !dbg !45
  %43 = and i1 %42, %25, !dbg !46
  %44 = select i1 %43, i3 %24, i3 %23, !dbg !47
  %45 = sub i12 %5, 1, !dbg !48
  %46 = call i1 @nd_bv1(), !dbg !49
  %47 = icmp eq i4 %6, -1, !dbg !50
  %48 = icmp eq i4 %6, -7, !dbg !51
  %49 = icmp eq i4 %6, -8, !dbg !52
  %50 = or i1 %49, %48, !dbg !53
  %51 = or i1 %50, %47, !dbg !54
  %52 = and i1 %30, %51, !dbg !55
  %53 = and i1 %52, %46, !dbg !56
  %54 = select i1 %53, i12 %45, i12 %5, !dbg !57
  %55 = call i12 @nd_bv12(), !dbg !58
  %56 = xor i1 %46, true, !dbg !59
  %57 = icmp eq i4 %6, 4, !dbg !60
  %58 = xor i1 %17, true, !dbg !61
  %59 = and i1 %58, %57, !dbg !62
  %60 = icmp eq i4 %6, -4, !dbg !63
  %61 = or i1 %60, %59, !dbg !64
  %62 = or i1 %61, %56, !dbg !65
  %63 = select i1 %62, i12 %55, i12 %54, !dbg !66
  %64 = icmp eq i3 %4, -1, !dbg !67
  %65 = icmp ne i3 %3, -2, !dbg !68
  %66 = icmp eq i1 %2, false, !dbg !69
  %67 = or i1 %66, %65, !dbg !70
  %68 = or i1 %67, %64, !dbg !71
  %69 = xor i1 %68, true, !dbg !72
  %70 = and i1 true, %69, !dbg !73
  %71 = xor i1 %70, true, !dbg !74
  br i1 %71, label %72, label %73, !dbg !75

72:                                               ; preds = %1
  br label %1, !dbg !76

73:                                               ; preds = %1
  call void @verifier.error(), !dbg !77
  unreachable, !dbg !78
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.vector.reduce.or.v12i1(<12 x i1>) #0

attributes #0 = { nofree nosync nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "btor2mlir-1/hwmcc20/btor2/bv/2019/goel/vis_arrays_am2910_p2.btor2.mlir.opt", directory: "/home/jetafese")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 10, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 15, column: 11, scope: !8)
!10 = !DILocation(line: 16, column: 11, scope: !8)
!11 = !DILocation(line: 17, column: 11, scope: !8)
!12 = !DILocation(line: 19, column: 11, scope: !8)
!13 = !DILocation(line: 21, column: 11, scope: !8)
!14 = !DILocation(line: 23, column: 11, scope: !8)
!15 = !DILocation(line: 25, column: 11, scope: !8)
!16 = !DILocation(line: 27, column: 11, scope: !8)
!17 = !DILocation(line: 28, column: 11, scope: !8)
!18 = !DILocation(line: 30, column: 11, scope: !8)
!19 = !DILocation(line: 31, column: 11, scope: !8)
!20 = !DILocation(line: 32, column: 11, scope: !8)
!21 = !DILocation(line: 34, column: 11, scope: !8)
!22 = !DILocation(line: 35, column: 11, scope: !8)
!23 = !DILocation(line: 36, column: 11, scope: !8)
!24 = !DILocation(line: 37, column: 11, scope: !8)
!25 = !DILocation(line: 38, column: 11, scope: !8)
!26 = !DILocation(line: 39, column: 11, scope: !8)
!27 = !DILocation(line: 40, column: 11, scope: !8)
!28 = !DILocation(line: 41, column: 11, scope: !8)
!29 = !DILocation(line: 43, column: 11, scope: !8)
!30 = !DILocation(line: 45, column: 11, scope: !8)
!31 = !DILocation(line: 46, column: 11, scope: !8)
!32 = !DILocation(line: 47, column: 11, scope: !8)
!33 = !DILocation(line: 48, column: 11, scope: !8)
!34 = !DILocation(line: 50, column: 11, scope: !8)
!35 = !DILocation(line: 51, column: 11, scope: !8)
!36 = !DILocation(line: 52, column: 11, scope: !8)
!37 = !DILocation(line: 54, column: 11, scope: !8)
!38 = !DILocation(line: 56, column: 11, scope: !8)
!39 = !DILocation(line: 58, column: 11, scope: !8)
!40 = !DILocation(line: 59, column: 11, scope: !8)
!41 = !DILocation(line: 60, column: 11, scope: !8)
!42 = !DILocation(line: 61, column: 11, scope: !8)
!43 = !DILocation(line: 63, column: 11, scope: !8)
!44 = !DILocation(line: 64, column: 11, scope: !8)
!45 = !DILocation(line: 65, column: 11, scope: !8)
!46 = !DILocation(line: 66, column: 11, scope: !8)
!47 = !DILocation(line: 67, column: 11, scope: !8)
!48 = !DILocation(line: 69, column: 11, scope: !8)
!49 = !DILocation(line: 70, column: 11, scope: !8)
!50 = !DILocation(line: 71, column: 11, scope: !8)
!51 = !DILocation(line: 73, column: 11, scope: !8)
!52 = !DILocation(line: 74, column: 11, scope: !8)
!53 = !DILocation(line: 75, column: 11, scope: !8)
!54 = !DILocation(line: 76, column: 11, scope: !8)
!55 = !DILocation(line: 77, column: 11, scope: !8)
!56 = !DILocation(line: 78, column: 11, scope: !8)
!57 = !DILocation(line: 79, column: 11, scope: !8)
!58 = !DILocation(line: 80, column: 11, scope: !8)
!59 = !DILocation(line: 82, column: 11, scope: !8)
!60 = !DILocation(line: 83, column: 11, scope: !8)
!61 = !DILocation(line: 85, column: 11, scope: !8)
!62 = !DILocation(line: 86, column: 11, scope: !8)
!63 = !DILocation(line: 88, column: 11, scope: !8)
!64 = !DILocation(line: 89, column: 11, scope: !8)
!65 = !DILocation(line: 90, column: 11, scope: !8)
!66 = !DILocation(line: 91, column: 11, scope: !8)
!67 = !DILocation(line: 93, column: 11, scope: !8)
!68 = !DILocation(line: 95, column: 11, scope: !8)
!69 = !DILocation(line: 97, column: 11, scope: !8)
!70 = !DILocation(line: 98, column: 11, scope: !8)
!71 = !DILocation(line: 99, column: 11, scope: !8)
!72 = !DILocation(line: 101, column: 11, scope: !8)
!73 = !DILocation(line: 102, column: 11, scope: !8)
!74 = !DILocation(line: 104, column: 11, scope: !8)
!75 = !DILocation(line: 105, column: 5, scope: !8)
!76 = !DILocation(line: 107, column: 5, scope: !8)
!77 = !DILocation(line: 109, column: 5, scope: !8)
!78 = !DILocation(line: 110, column: 5, scope: !8)
