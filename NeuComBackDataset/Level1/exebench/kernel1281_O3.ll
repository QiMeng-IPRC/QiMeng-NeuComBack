; ModuleID = '../benchmarks/fine_grained/exebench/kernel1281.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1281.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@ring_clock = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ring_supplied(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = sext i32 %1 to i64
  %5 = add nsw i64 %3, %4
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !10
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !11
  %12 = sub nsw i64 %5, %11
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi i64 [ %12, %9 ], [ %5, %2 ]
  store i64 %14, ptr %0, align 8, !tbaa !5
  %15 = load i64, ptr @ring_clock, align 8, !tbaa !12
  %16 = add nsw i64 %15, 1
  store i64 %16, ptr @ring_clock, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store i64 %16, ptr %17, align 8, !tbaa !13
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
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !7, i64 24}
