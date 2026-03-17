; ModuleID = '../benchmarks/fine_grained/exebench/kernel827.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel827.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i64 }

@m68ki_cpu = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@m68ki_remaining_cycles = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @m68k_op_ror_8_r() local_unnamed_addr #0 {
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
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %0
  %16 = and i32 %10, 7
  %17 = sub nuw nsw i32 8, %16
  %18 = shl i32 %12, %17
  %19 = lshr i32 %13, %16
  %20 = and i32 %18, 254
  %21 = or i32 %20, %19
  %22 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 2), align 4, !tbaa !14
  %23 = shl i32 %11, %22
  %24 = load i32, ptr @m68ki_remaining_cycles, align 4, !tbaa !13
  %25 = sub i32 %24, %23
  store i32 %25, ptr @m68ki_remaining_cycles, align 4, !tbaa !13
  %26 = load i32, ptr %5, align 4, !tbaa !13
  %27 = and i32 %26, -256
  %28 = or i32 %27, %21
  store i32 %28, ptr %5, align 4, !tbaa !13
  %29 = add i32 %10, 7
  %30 = and i32 %29, 7
  %31 = sub nuw nsw i32 8, %30
  %32 = shl nuw nsw i32 %13, %31
  br label %33

33:                                               ; preds = %0, %15
  %34 = phi i32 [ %32, %15 ], [ 0, %0 ]
  %35 = phi i32 [ %21, %15 ], [ %13, %0 ]
  store i32 %34, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 3), align 8, !tbaa !15
  store i32 %35, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 4), align 4, !tbaa !16
  store i32 %35, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 5), align 8, !tbaa !17
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 6), align 8, !tbaa !18
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
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32}
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
!18 = !{!6, !11, i64 32}
