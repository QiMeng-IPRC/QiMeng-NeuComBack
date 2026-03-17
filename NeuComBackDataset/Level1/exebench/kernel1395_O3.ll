; ModuleID = '../benchmarks/fine_grained/exebench/kernel1395.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1395.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exec = type { i64, i32, i64, i64, i64, i64 }

@stack = dso_local local_unnamed_addr global i64 0, align 8
@wordpow = dso_local local_unnamed_addr global i64 0, align 8
@A_I8086 = dso_local local_unnamed_addr global i64 0, align 8
@A_SEP = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @setstack(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @stack, align 8, !tbaa !5
  %3 = load i64, ptr @wordpow, align 8, !tbaa !5
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %49

5:                                                ; preds = %1
  %6 = load i64, ptr @A_I8086, align 8, !tbaa !5
  %7 = and i64 %3, 3
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5, %9
  %10 = phi i64 [ %16, %9 ], [ %2, %5 ]
  %11 = phi i64 [ %17, %9 ], [ %3, %5 ]
  %12 = phi i64 [ %18, %9 ], [ 0, %5 ]
  %13 = load i64, ptr %0, align 8, !tbaa !9
  %14 = icmp eq i64 %13, %6
  %15 = select i1 %14, i64 1, i64 2
  %16 = shl i64 %10, %15
  %17 = add nsw i64 %11, -1
  store i64 %17, ptr @wordpow, align 8, !tbaa !5
  %18 = add i64 %12, 1
  %19 = icmp eq i64 %18, %7
  br i1 %19, label %20, label %9, !llvm.loop !12

20:                                               ; preds = %9, %5
  %21 = phi i64 [ %2, %5 ], [ %16, %9 ]
  %22 = phi i64 [ %3, %5 ], [ %17, %9 ]
  %23 = phi i64 [ undef, %5 ], [ %16, %9 ]
  %24 = icmp ult i64 %3, 4
  br i1 %24, label %49, label %25

25:                                               ; preds = %20, %25
  %26 = phi i64 [ %46, %25 ], [ %21, %20 ]
  %27 = phi i64 [ %47, %25 ], [ %22, %20 ]
  %28 = load i64, ptr %0, align 8, !tbaa !9
  %29 = icmp eq i64 %28, %6
  %30 = select i1 %29, i64 1, i64 2
  %31 = shl i64 %26, %30
  %32 = add nsw i64 %27, -1
  store i64 %32, ptr @wordpow, align 8, !tbaa !5
  %33 = load i64, ptr %0, align 8, !tbaa !9
  %34 = icmp eq i64 %33, %6
  %35 = select i1 %34, i64 1, i64 2
  %36 = shl i64 %31, %35
  %37 = add nsw i64 %27, -2
  store i64 %37, ptr @wordpow, align 8, !tbaa !5
  %38 = load i64, ptr %0, align 8, !tbaa !9
  %39 = icmp eq i64 %38, %6
  %40 = select i1 %39, i64 1, i64 2
  %41 = shl i64 %36, %40
  %42 = add nsw i64 %27, -3
  store i64 %42, ptr @wordpow, align 8, !tbaa !5
  %43 = load i64, ptr %0, align 8, !tbaa !9
  %44 = icmp eq i64 %43, %6
  %45 = select i1 %44, i64 1, i64 2
  %46 = shl i64 %41, %45
  %47 = add nsw i64 %27, -4
  store i64 %47, ptr @wordpow, align 8, !tbaa !5
  %48 = icmp ugt i64 %42, 1
  br i1 %48, label %25, label %49, !llvm.loop !14

49:                                               ; preds = %20, %25, %1
  %50 = phi i64 [ %2, %1 ], [ %23, %20 ], [ %46, %25 ]
  %51 = getelementptr inbounds %struct.exec, ptr %0, i64 0, i32 5
  %52 = load i64, ptr %51, align 8, !tbaa !16
  %53 = getelementptr inbounds %struct.exec, ptr %0, i64 0, i32 4
  %54 = load i64, ptr %53, align 8, !tbaa !17
  %55 = add i64 %52, %50
  %56 = add i64 %55, %54
  %57 = getelementptr inbounds %struct.exec, ptr %0, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !18
  %59 = load i32, ptr @A_SEP, align 4, !tbaa !19
  %60 = and i32 %59, %58
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.exec, ptr %0, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !20
  %65 = add nsw i64 %64, %56
  br label %66

66:                                               ; preds = %62, %49
  %67 = phi i64 [ %56, %49 ], [ %65, %62 ]
  %68 = load i64, ptr %0, align 8, !tbaa !9
  %69 = load i64, ptr @A_I8086, align 8, !tbaa !5
  %70 = icmp eq i64 %68, %69
  %71 = icmp sgt i64 %67, 65536
  %72 = select i1 %70, i1 %71, i1 false
  %73 = select i1 %72, i64 65536, i64 %67
  %74 = getelementptr inbounds %struct.exec, ptr %0, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !21
  %76 = icmp eq i64 %75, %73
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  store i64 %73, ptr %74, align 8, !tbaa !21
  br label %78

78:                                               ; preds = %66, %77
  %79 = phi i32 [ 1, %77 ], [ 0, %66 ]
  ret i32 %79
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"exec", !6, i64 0, !11, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!11 = !{!"int", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!10, !6, i64 40}
!17 = !{!10, !6, i64 32}
!18 = !{!10, !11, i64 8}
!19 = !{!11, !11, i64 0}
!20 = !{!10, !6, i64 24}
!21 = !{!10, !6, i64 16}
