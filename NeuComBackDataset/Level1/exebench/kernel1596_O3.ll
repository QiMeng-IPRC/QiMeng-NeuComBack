; ModuleID = '../benchmarks/fine_grained/exebench/kernel1596.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1596.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, ptr }

@ivm = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @op_div() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ivm, align 8, !tbaa !5
  %2 = load i32, ptr %1, align 4, !tbaa !11
  %3 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i64 0, i32 1), align 8, !tbaa !12
  %4 = add nsw i32 %3, -1
  %5 = icmp slt i32 %2, %4
  br i1 %5, label %6, label %28

6:                                                ; preds = %0
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = add nsw i32 %3, -3
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = getelementptr inbounds i32, ptr %1, i64 2
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = icmp slt i32 %13, %9
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i64 0, i32 2), align 8, !tbaa !13
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !14
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = sext i32 %8 to i64
  %23 = getelementptr inbounds i32, ptr %16, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !14
  %25 = udiv i64 %24, %19
  %26 = sext i32 %2 to i64
  %27 = getelementptr inbounds i32, ptr %16, i64 %26
  store i64 %25, ptr %27, align 8, !tbaa !14
  br label %28

28:                                               ; preds = %15, %11, %6, %0, %21
  %29 = phi i32 [ 0, %21 ], [ -1, %0 ], [ -1, %6 ], [ -1, %11 ], [ -5, %15 ]
  ret i32 %29
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !7, i64 16}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !8, i64 0}
