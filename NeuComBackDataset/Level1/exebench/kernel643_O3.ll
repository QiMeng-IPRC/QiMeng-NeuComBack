; ModuleID = '../benchmarks/fine_grained/exebench/kernel643.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel643.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i32, i64 }

@m68ki_cpu = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@m68ki_remaining_cycles = dso_local local_unnamed_addr global i32 0, align 4
@m68ki_shift_32_table = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @m68k_op_asr_32_r() local_unnamed_addr #0 {
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
  %12 = load i32, ptr %5, align 4, !tbaa !13
  %13 = lshr i32 %12, %11
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %0
  %16 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 2), align 4, !tbaa !14
  %17 = shl i32 %11, %16
  %18 = load i32, ptr @m68ki_remaining_cycles, align 4, !tbaa !13
  %19 = sub i32 %18, %17
  store i32 %19, ptr @m68ki_remaining_cycles, align 4, !tbaa !13
  %20 = icmp ult i32 %11, 32
  %21 = icmp sgt i32 %12, -1
  br i1 %20, label %22, label %35

22:                                               ; preds = %15
  br i1 %21, label %29, label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr @m68ki_shift_32_table, align 8, !tbaa !15
  %25 = zext i32 %11 to i64
  %26 = getelementptr inbounds i32, ptr %24, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !13
  %28 = or i32 %27, %13
  br label %29

29:                                               ; preds = %23, %22
  %30 = phi i32 [ %28, %23 ], [ %13, %22 ]
  store i32 %30, ptr %5, align 4, !tbaa !13
  %31 = add nsw i32 %11, -1
  %32 = lshr i32 %12, %31
  %33 = shl i32 %32, 8
  store i32 %33, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 4), align 4, !tbaa !16
  store i32 %33, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 3), align 8, !tbaa !17
  %34 = lshr i32 %30, 24
  store i32 %34, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 5), align 8, !tbaa !18
  store i32 %30, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 6), align 4, !tbaa !19
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 7), align 8, !tbaa !20
  br label %40

35:                                               ; preds = %15
  br i1 %21, label %37, label %36

36:                                               ; preds = %35
  store i32 -1, ptr %5, align 4, !tbaa !13
  store <4 x i32> <i32 256, i32 256, i32 128, i32 -1>, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 3), align 8, !tbaa !13
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 7), align 8, !tbaa !20
  br label %40

37:                                               ; preds = %35
  store i32 0, ptr %5, align 4, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 3), i8 0, i64 24, i1 false)
  br label %40

38:                                               ; preds = %0
  store i32 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 3), align 8, !tbaa !17
  %39 = lshr i32 %12, 24
  store i32 %39, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 5), align 8, !tbaa !18
  store i32 %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 6), align 4, !tbaa !19
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 7), align 8, !tbaa !20
  br label %40

40:                                               ; preds = %38, %37, %36, %29
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!15 = !{!7, !7, i64 0}
!16 = !{!6, !10, i64 20}
!17 = !{!6, !10, i64 16}
!18 = !{!6, !10, i64 24}
!19 = !{!6, !10, i64 28}
!20 = !{!6, !11, i64 32}
