; ModuleID = '../benchmarks/fine_grained/exebench/kernel1361.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1361.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, ptr, i32 }

@cpu = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @switchmode(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i64 0, i32 1), align 4, !tbaa !5
  store i32 %2, ptr @cpu, align 8, !tbaa !11
  store i32 %0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i64 0, i32 1), align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  %4 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i64 0, i32 4), align 8, !tbaa !12
  %5 = getelementptr inbounds i32, ptr %4, i64 6
  %6 = load i32, ptr %5, align 4, !tbaa !13
  br i1 %3, label %8, label %7

7:                                                ; preds = %1
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i64 0, i32 5), align 8, !tbaa !14
  br label %9

8:                                                ; preds = %1
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i64 0, i32 3), align 4, !tbaa !15
  br label %9

9:                                                ; preds = %8, %7
  %10 = icmp eq i32 %0, 0
  %11 = getelementptr inbounds i32, ptr %4, i64 6
  br i1 %10, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i64 0, i32 3), align 4, !tbaa !15
  store i32 %13, ptr %11, align 4, !tbaa !13
  %14 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i64 0, i32 2), align 8, !tbaa !16
  %15 = and i32 %14, 4095
  br label %21

16:                                               ; preds = %9
  %17 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i64 0, i32 5), align 8, !tbaa !14
  store i32 %17, ptr %11, align 4, !tbaa !13
  %18 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i64 0, i32 2), align 8, !tbaa !16
  %19 = and i32 %18, 4095
  %20 = or i32 %19, 49152
  br label %21

21:                                               ; preds = %12, %16
  %22 = phi i32 [ %20, %16 ], [ %15, %12 ]
  %23 = or i32 %22, 12288
  %24 = select i1 %3, i32 %22, i32 %23
  store i32 %24, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i64 0, i32 2), align 8, !tbaa !16
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
!5 = !{!6, !7, i64 4}
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !7, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!6, !10, i64 16}
!13 = !{!7, !7, i64 0}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 12}
!16 = !{!6, !7, i64 8}
