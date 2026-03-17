; ModuleID = '../benchmarks/fine_grained/exebench/kernel189.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel189.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, ptr }

@event_listeners = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @add_mouse_listener(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @event_listeners, align 8, !tbaa !5
  %3 = icmp sgt i32 %2, 31
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @event_listeners, i64 0, i32 1), align 8, !tbaa !11
  %6 = add nsw i32 %2, 1
  store i32 %6, ptr @event_listeners, align 8, !tbaa !5
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  store i32 %0, ptr %8, align 4, !tbaa !12
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ 1, %1 ]
  ret i32 %10
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!7, !7, i64 0}
