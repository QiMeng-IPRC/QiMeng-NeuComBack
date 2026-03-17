; ModuleID = '../benchmarks/fine_grained/exebench/kernel362.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel362.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, ptr, ptr, i64, i64, i32, ptr, i32 }

@GSU = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @fx_bic_r1() local_unnamed_addr #0 {
  %1 = load ptr, ptr @GSU, align 8, !tbaa !5
  %2 = load i64, ptr %1, align 8, !tbaa !12
  %3 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 1), align 8, !tbaa !13
  %4 = getelementptr inbounds i64, ptr %3, i64 1
  %5 = load i64, ptr %4, align 8, !tbaa !12
  %6 = xor i64 %5, -1
  %7 = and i64 %2, %6
  %8 = getelementptr inbounds i64, ptr %3, i64 15
  %9 = load i64, ptr %8, align 8, !tbaa !12
  %10 = add i64 %9, 1
  store i64 %10, ptr %8, align 8, !tbaa !12
  %11 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 2), align 8, !tbaa !14
  store i64 %7, ptr %11, align 8, !tbaa !12
  store i64 %7, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 3), align 8, !tbaa !15
  store i64 %7, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 4), align 8, !tbaa !16
  %12 = getelementptr inbounds i64, ptr %3, i64 14
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 6), align 8, !tbaa !17
  %16 = load i64, ptr %11, align 8, !tbaa !12
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !18
  store i32 %18, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 7), align 8, !tbaa !19
  br label %19

19:                                               ; preds = %14, %0
  %20 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 5), align 8, !tbaa !20
  %21 = and i32 %20, -4865
  store i32 %21, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 5), align 8, !tbaa !20
  store ptr %3, ptr @GSU, align 8, !tbaa !5
  store ptr %3, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 2), align 8, !tbaa !14
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
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !11, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 16}
!15 = !{!6, !10, i64 24}
!16 = !{!6, !10, i64 32}
!17 = !{!6, !7, i64 48}
!18 = !{!11, !11, i64 0}
!19 = !{!6, !11, i64 56}
!20 = !{!6, !11, i64 40}
