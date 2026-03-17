; ModuleID = '../benchmarks/fine_grained/exebench/kernel1487.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1487.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32 }

@GSU = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @fx_from_r2() local_unnamed_addr #0 {
  %1 = load i32, ptr @GSU, align 8, !tbaa !5
  %2 = and i32 %1, 4096
  %3 = icmp eq i32 %2, 0
  %4 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 1), align 8, !tbaa !11
  %5 = getelementptr inbounds i32, ptr %4, i64 2
  %6 = getelementptr inbounds i32, ptr %4, i64 15
  br i1 %3, label %25, label %7

7:                                                ; preds = %0
  %8 = load i32, ptr %5, align 4, !tbaa !12
  %9 = load i32, ptr %6, align 4, !tbaa !12
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %6, align 4, !tbaa !12
  %11 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 2), align 8, !tbaa !13
  store i32 %8, ptr %11, align 4, !tbaa !12
  %12 = shl i32 %8, 16
  %13 = and i32 %12, 8388608
  store i32 %13, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 3), align 8, !tbaa !14
  store i32 %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 4), align 4, !tbaa !15
  store i32 %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 5), align 8, !tbaa !16
  %14 = getelementptr inbounds i32, ptr %4, i64 14
  %15 = icmp eq ptr %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 7), align 8, !tbaa !17
  %18 = load i32, ptr %11, align 4, !tbaa !12
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !12
  store i32 %21, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 8), align 8, !tbaa !18
  br label %22

22:                                               ; preds = %16, %7
  %23 = load i32, ptr @GSU, align 8, !tbaa !5
  %24 = and i32 %23, -4865
  store i32 %24, ptr @GSU, align 8, !tbaa !5
  store ptr %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 6), align 8, !tbaa !19
  store ptr %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 2), align 8, !tbaa !13
  br label %28

25:                                               ; preds = %0
  store ptr %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 6), align 8, !tbaa !19
  %26 = load i32, ptr %6, align 4, !tbaa !12
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %6, align 4, !tbaa !12
  br label %28

28:                                               ; preds = %25, %22
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
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !7, i64 56}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !10, i64 16}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 28}
!16 = !{!6, !7, i64 32}
!17 = !{!6, !10, i64 48}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !10, i64 40}
