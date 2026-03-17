; ModuleID = '../benchmarks/fine_grained/exebench/kernel630.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel630.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fifo_tail = dso_local local_unnamed_addr global i32 0, align 4
@fifo_head = dso_local local_unnamed_addr global i32 0, align 4
@fifo = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @fifo_enqueue(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @fifo_tail, align 4, !tbaa !5
  %3 = add nsw i32 %2, 1
  %4 = srem i32 %3, 256
  %5 = load i32, ptr @fifo_head, align 4, !tbaa !5
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @fifo, align 8, !tbaa !9
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %0, ptr %10, align 4, !tbaa !5
  store i32 %4, ptr @fifo_tail, align 4, !tbaa !5
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi i32 [ 1, %7 ], [ 0, %1 ]
  ret i32 %12
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
