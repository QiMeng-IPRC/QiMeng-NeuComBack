; ModuleID = '../benchmarks/fine_grained/exebench/kernel219.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel219.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }

@GSU = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @fx_adc_i8() local_unnamed_addr #0 {
  %1 = load ptr, ptr @GSU, align 8, !tbaa !5
  %2 = load i32, ptr %1, align 4, !tbaa !11
  %3 = add nsw i32 %2, 8
  %4 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 1), align 8, !tbaa !12
  %5 = add nsw i32 %3, %4
  %6 = icmp sgt i32 %5, 65535
  %7 = zext i1 %6 to i32
  store i32 %7, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 1), align 8, !tbaa !12
  %8 = load i32, ptr %1, align 4, !tbaa !11
  %9 = xor i32 %8, -1
  %10 = and i32 %5, 32768
  %11 = and i32 %10, %9
  store i32 %11, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 2), align 4, !tbaa !13
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 3), align 8, !tbaa !14
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 4), align 4, !tbaa !15
  %12 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 5), align 8, !tbaa !16
  %13 = getelementptr inbounds i32, ptr %12, i64 15
  %14 = load i32, ptr %13, align 4, !tbaa !11
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !11
  %16 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 6), align 8, !tbaa !17
  store i32 %5, ptr %16, align 4, !tbaa !11
  %17 = getelementptr inbounds i32, ptr %12, i64 14
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %0
  %20 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 8), align 8, !tbaa !18
  %21 = sext i32 %5 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !11
  store i32 %23, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 9), align 8, !tbaa !19
  br label %24

24:                                               ; preds = %19, %0
  %25 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 7), align 8, !tbaa !20
  %26 = and i32 %25, -4865
  store i32 %26, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 7), align 8, !tbaa !20
  store ptr %12, ptr @GSU, align 8, !tbaa !5
  store ptr %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 6), align 8, !tbaa !17
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
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24, !7, i64 32, !10, i64 40, !7, i64 48, !10, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !10, i64 12}
!14 = !{!6, !10, i64 16}
!15 = !{!6, !10, i64 20}
!16 = !{!6, !7, i64 24}
!17 = !{!6, !7, i64 32}
!18 = !{!6, !7, i64 48}
!19 = !{!6, !10, i64 56}
!20 = !{!6, !10, i64 40}
