; ModuleID = '../benchmarks/fine_grained/exebench/kernel1205.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1205.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32 }

@GSU = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @fx_sub_r12() local_unnamed_addr #0 {
  %1 = load ptr, ptr @GSU, align 8, !tbaa !5
  %2 = load i32, ptr %1, align 4, !tbaa !11
  %3 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 1), align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = sub nsw i32 %2, %5
  %7 = icmp sgt i32 %6, -1
  %8 = zext i1 %7 to i32
  store i32 %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 2), align 8, !tbaa !13
  %9 = load i32, ptr %1, align 4, !tbaa !11
  %10 = xor i32 %9, %5
  %11 = xor i32 %9, %6
  %12 = and i32 %11, 32768
  %13 = and i32 %12, %10
  store i32 %13, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 3), align 4, !tbaa !14
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 4), align 8, !tbaa !15
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 5), align 4, !tbaa !16
  %14 = getelementptr inbounds i32, ptr %3, i64 15
  %15 = load i32, ptr %14, align 4, !tbaa !11
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !11
  %17 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 6), align 8, !tbaa !17
  store i32 %6, ptr %17, align 4, !tbaa !11
  %18 = getelementptr inbounds i32, ptr %3, i64 14
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %0
  %21 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 8), align 8, !tbaa !18
  %22 = sext i32 %6 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !11
  store i32 %24, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 9), align 8, !tbaa !19
  br label %25

25:                                               ; preds = %20, %0
  %26 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 7), align 8, !tbaa !20
  %27 = and i32 %26, -4865
  store i32 %27, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 7), align 8, !tbaa !20
  store ptr %3, ptr @GSU, align 8, !tbaa !5
  store ptr %3, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 6), align 8, !tbaa !17
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
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !7, i64 48, !10, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !7, i64 8}
!13 = !{!6, !10, i64 16}
!14 = !{!6, !10, i64 20}
!15 = !{!6, !10, i64 24}
!16 = !{!6, !10, i64 28}
!17 = !{!6, !7, i64 32}
!18 = !{!6, !7, i64 48}
!19 = !{!6, !10, i64 56}
!20 = !{!6, !10, i64 40}
