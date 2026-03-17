; ModuleID = '../benchmarks/fine_grained/exebench/kernel599.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.token = type { i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @separate(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %36

5:                                                ; preds = %3, %30
  %6 = phi i64 [ %34, %30 ], [ 0, %3 ]
  %7 = phi i32 [ %33, %30 ], [ 0, %3 ]
  %8 = phi i32 [ %32, %30 ], [ 0, %3 ]
  %9 = phi i32 [ %31, %30 ], [ 0, %3 ]
  %10 = getelementptr inbounds i8, ptr %0, i64 %6
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = sext i8 %11 to i32
  switch i32 %7, label %30 [
    i32 0, label %13
    i32 1, label %16
  ]

13:                                               ; preds = %5
  switch i32 %12, label %14 [
    i32 0, label %36
    i32 13, label %36
    i32 10, label %36
    i32 35, label %36
    i32 44, label %30
    i32 32, label %30
    i32 40, label %30
    i32 41, label %30
    i32 9, label %30
  ]

14:                                               ; preds = %13
  %15 = trunc i64 %6 to i32
  br label %30

16:                                               ; preds = %5
  %17 = trunc i64 %6 to i32
  switch i32 %12, label %30 [
    i32 0, label %18
    i32 13, label %18
    i32 10, label %18
    i32 35, label %18
    i32 44, label %24
    i32 32, label %24
    i32 40, label %24
    i32 41, label %24
    i32 9, label %24
  ]

18:                                               ; preds = %16, %16, %16, %16
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds %struct.token, ptr %1, i64 %19
  store i32 %9, ptr %20, align 4, !tbaa !8
  %21 = sub nsw i32 %17, %9
  %22 = add nsw i32 %8, 1
  %23 = getelementptr inbounds %struct.token, ptr %1, i64 %19, i32 1
  store i32 %21, ptr %23, align 4, !tbaa !11
  br label %36

24:                                               ; preds = %16, %16, %16, %16, %16
  %25 = sext i32 %8 to i64
  %26 = getelementptr inbounds %struct.token, ptr %1, i64 %25
  store i32 %9, ptr %26, align 4, !tbaa !8
  %27 = sub nsw i32 %17, %9
  %28 = add nsw i32 %8, 1
  %29 = getelementptr inbounds %struct.token, ptr %1, i64 %25, i32 1
  store i32 %27, ptr %29, align 4, !tbaa !11
  br label %30

30:                                               ; preds = %24, %16, %14, %13, %13, %13, %13, %13, %5
  %31 = phi i32 [ %9, %5 ], [ %9, %16 ], [ %9, %24 ], [ %15, %14 ], [ %9, %13 ], [ %9, %13 ], [ %9, %13 ], [ %9, %13 ], [ %9, %13 ]
  %32 = phi i32 [ %8, %5 ], [ %8, %16 ], [ %28, %24 ], [ %8, %14 ], [ %8, %13 ], [ %8, %13 ], [ %8, %13 ], [ %8, %13 ], [ %8, %13 ]
  %33 = phi i32 [ %7, %5 ], [ 1, %16 ], [ 0, %24 ], [ 1, %14 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ]
  %34 = add nuw i64 %6, 1
  %35 = icmp slt i32 %32, %2
  br i1 %35, label %5, label %36, !llvm.loop !12

36:                                               ; preds = %13, %13, %13, %13, %30, %3, %18
  %37 = phi i32 [ %22, %18 ], [ 0, %3 ], [ %8, %13 ], [ %8, %13 ], [ %8, %13 ], [ %8, %13 ], [ %32, %30 ]
  ret i32 %37
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"token", !10, i64 0, !10, i64 4}
!10 = !{!"int", !6, i64 0}
!11 = !{!9, !10, i64 4}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
