; ModuleID = '../benchmarks/fine_grained/exebench/kernel567.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel567.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, ptr }

@que = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @queue_pop(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @que, align 8, !tbaa !5
  %3 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @que, i64 0, i32 1), align 8, !tbaa !11
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @que, i64 0, i32 2), align 8, !tbaa !12
  %7 = getelementptr inbounds i32, ptr %6, i64 %2
  %8 = load i32, ptr %7, align 4, !tbaa !13
  store i32 %8, ptr %0, align 4, !tbaa !13
  %9 = add i64 %2, 1
  %10 = urem i64 %9, 90
  store i64 %10, ptr @que, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %5, %1
  ret void
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
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !10, i64 16}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !8, i64 0}
