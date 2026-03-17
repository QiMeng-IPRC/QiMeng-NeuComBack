; ModuleID = '../benchmarks/fine_grained/exebench/kernel328.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel328.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @dcnst0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds i64, ptr %2, i64 -1
  %6 = getelementptr inbounds i64, ptr %1, i64 -1
  store i64 0, ptr %3, align 8, !tbaa !5
  %7 = load i64, ptr %0, align 8, !tbaa !5
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4, %29
  %10 = phi i64 [ %30, %29 ], [ 1, %4 ]
  %11 = getelementptr inbounds i64, ptr %5, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !5
  switch i64 %12, label %29 [
    i64 2, label %13
    i64 1, label %17
    i64 -1, label %21
    i64 -2, label %25
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds i64, ptr %6, i64 %10
  %15 = load i64, ptr %14, align 8, !tbaa !5
  %16 = icmp slt i64 %15, 1
  br i1 %16, label %32, label %29

17:                                               ; preds = %9
  %18 = getelementptr inbounds i64, ptr %6, i64 %10
  %19 = load i64, ptr %18, align 8, !tbaa !5
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %9
  %22 = getelementptr inbounds i64, ptr %6, i64 %10
  %23 = load i64, ptr %22, align 8, !tbaa !5
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %32, label %29

25:                                               ; preds = %9
  %26 = getelementptr inbounds i64, ptr %6, i64 %10
  %27 = load i64, ptr %26, align 8, !tbaa !5
  %28 = icmp sgt i64 %27, -1
  br i1 %28, label %32, label %29

29:                                               ; preds = %9, %13, %21, %25, %17
  %30 = add i64 %10, 1
  %31 = icmp ugt i64 %30, %7
  br i1 %31, label %33, label %9, !llvm.loop !9

32:                                               ; preds = %25, %21, %17, %13
  store i64 %10, ptr %3, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %29, %32, %4
  ret i32 0
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
