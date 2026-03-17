; ModuleID = '../benchmarks/fine_grained/exebench/kernel255.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel255.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i32, i64 }

@m68ki_cpu = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@m68ki_remaining_cycles = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @m68k_op_roxr_16_r() local_unnamed_addr #0 {
  %1 = load ptr, ptr @m68ki_cpu, align 8, !tbaa !5
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 1), align 8, !tbaa !12
  %3 = and i32 %2, 7
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %1, i64 %4
  %6 = lshr i32 %2, 9
  %7 = and i32 %6, 7
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = and i32 %10, 63
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %0
  %14 = trunc i32 %11 to i8
  %15 = urem i8 %14, 17
  %16 = zext i8 %15 to i32
  %17 = load i32, ptr %5, align 4, !tbaa !13
  %18 = and i32 %17, 65535
  %19 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 2), align 4, !tbaa !14
  %20 = shl i32 %19, 8
  %21 = and i32 %20, 65536
  %22 = or i32 %21, %18
  %23 = lshr i32 %22, %16
  %24 = sub nuw nsw i32 17, %16
  %25 = shl i32 %22, %24
  %26 = or i32 %23, %25
  %27 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 3), align 8, !tbaa !15
  %28 = shl i32 %11, %27
  %29 = load i32, ptr @m68ki_remaining_cycles, align 4, !tbaa !13
  %30 = sub i32 %29, %28
  store i32 %30, ptr @m68ki_remaining_cycles, align 4, !tbaa !13
  %31 = lshr i32 %26, 8
  store i32 %31, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 2), align 4, !tbaa !14
  store i32 %31, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 4), align 4, !tbaa !16
  %32 = and i32 %26, 65535
  %33 = load i32, ptr %5, align 4, !tbaa !13
  %34 = and i32 %33, -65536
  %35 = or i32 %34, %32
  store i32 %35, ptr %5, align 4, !tbaa !13
  %36 = lshr i32 %32, 8
  store i32 %36, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 5), align 8, !tbaa !17
  br label %43

37:                                               ; preds = %0
  %38 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 2), align 4, !tbaa !14
  store i32 %38, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 4), align 4, !tbaa !16
  %39 = load i32, ptr %5, align 4, !tbaa !13
  %40 = lshr i32 %39, 8
  store i32 %40, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 5), align 8, !tbaa !17
  %41 = load i32, ptr %5, align 4, !tbaa !13
  %42 = and i32 %41, 65535
  br label %43

43:                                               ; preds = %37, %13
  %44 = phi i32 [ %42, %37 ], [ %32, %13 ]
  store i32 %44, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 6), align 4, !tbaa !18
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 7), align 8, !tbaa !19
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
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !11, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!10, !10, i64 0}
!14 = !{!6, !10, i64 12}
!15 = !{!6, !10, i64 16}
!16 = !{!6, !10, i64 20}
!17 = !{!6, !10, i64 24}
!18 = !{!6, !10, i64 28}
!19 = !{!6, !11, i64 32}
