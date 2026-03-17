; ModuleID = '../benchmarks/fine_grained/exebench/kernel485.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel485.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signal_queue_buf = dso_local local_unnamed_addr global ptr null, align 8
@signal_queue_rd_idx = dso_local local_unnamed_addr global i64 0, align 8
@signal_queue_length = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @slinke_readdata(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @signal_queue_buf, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr @signal_queue_rd_idx, align 8, !tbaa !9
  %6 = load i64, ptr @signal_queue_length, align 8, !tbaa !9
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = add nsw i64 %5, 1
  store i64 %9, ptr @signal_queue_rd_idx, align 8, !tbaa !9
  %10 = getelementptr inbounds i32, ptr %2, i64 %5
  %11 = load i32, ptr %10, align 4, !tbaa !11
  br label %12

12:                                               ; preds = %8, %4, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %8 ], [ 0, %4 ]
  ret i32 %13
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
