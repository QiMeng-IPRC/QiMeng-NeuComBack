; ModuleID = '../benchmarks/fine_grained/exebench/kernel1201.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1201.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @NumericFormatToPrecision(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i32 30, ptr %1, align 4, !tbaa !5
  store i32 6, ptr %2, align 4, !tbaa !5
  br label %39

6:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !5
  %7 = load i8, ptr %0, align 1, !tbaa !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %6, %28
  %10 = phi i8 [ %32, %28 ], [ %7, %6 ]
  %11 = phi i32 [ %30, %28 ], [ 0, %6 ]
  %12 = phi i32 [ %29, %28 ], [ 0, %6 ]
  %13 = phi ptr [ %31, %28 ], [ %0, %6 ]
  %14 = sext i8 %10 to i32
  switch i32 %14, label %28 [
    i32 45, label %15
    i32 43, label %15
    i32 90, label %18
    i32 92, label %18
    i32 36, label %18
    i32 57, label %18
    i32 46, label %27
  ]

15:                                               ; preds = %9, %9
  %16 = icmp eq i32 %12, 0
  %17 = select i1 %16, i32 1, i32 %11
  br label %18

18:                                               ; preds = %15, %9, %9, %9, %9
  %19 = phi i32 [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %11, %9 ], [ %17, %15 ]
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %2, align 4, !tbaa !5
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %2, align 4, !tbaa !5
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, ptr %1, align 4, !tbaa !5
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %1, align 4, !tbaa !5
  br label %28

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %9, %27, %24
  %29 = phi i32 [ %12, %9 ], [ 1, %27 ], [ %12, %24 ]
  %30 = phi i32 [ %11, %9 ], [ %11, %27 ], [ %19, %24 ]
  %31 = getelementptr inbounds i8, ptr %13, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %9, !llvm.loop !10

34:                                               ; preds = %28
  %35 = icmp eq i32 %30, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %1, align 4, !tbaa !5
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %1, align 4, !tbaa !5
  br label %39

39:                                               ; preds = %6, %34, %36, %5
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
