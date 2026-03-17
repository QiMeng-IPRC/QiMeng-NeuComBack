; ModuleID = '../benchmarks/fine_grained/exebench/kernel1110.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1110.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_nIsdbtPrevAntennaLevel_1seg = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @rtvMTV23x_GetAntennaLevel_1seg(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @g_nIsdbtPrevAntennaLevel_1seg, align 4, !tbaa !5
  %3 = icmp slt i32 %0, 15000
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = icmp slt i32 %0, 12000
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = icmp slt i32 %0, 11000
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = icmp slt i32 %0, 9000
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = icmp slt i32 %0, 7000
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = icmp sgt i32 %0, 3999
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %12, %10, %8, %6, %4, %1
  %16 = phi i32 [ 6, %1 ], [ 5, %4 ], [ 4, %6 ], [ 3, %8 ], [ 2, %10 ], [ %14, %12 ]
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = icmp slt i32 %16, %2
  %20 = select i1 %19, i32 -1, i32 1
  %21 = add nsw i32 %20, %2
  store i32 %21, ptr @g_nIsdbtPrevAntennaLevel_1seg, align 4, !tbaa !5
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ %21, %18 ], [ %2, %15 ]
  ret i32 %23
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
