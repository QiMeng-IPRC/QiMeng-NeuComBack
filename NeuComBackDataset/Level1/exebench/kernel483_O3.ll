; ModuleID = '../benchmarks/fine_grained/exebench/kernel483.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel483.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i32 }

@m68ki_cpu = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @m68k_op_add_8_er_d() local_unnamed_addr #0 {
  %1 = load ptr, ptr @m68ki_cpu, align 8, !tbaa !5
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 1), align 8, !tbaa !11
  %3 = lshr i32 %2, 9
  %4 = and i32 %3, 7
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  %7 = and i32 %2, 7
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !12
  %11 = and i32 %10, 255
  %12 = load i32, ptr %6, align 4, !tbaa !12
  %13 = and i32 %12, 255
  %14 = add nuw nsw i32 %13, %11
  store i32 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 2), align 4, !tbaa !13
  %15 = xor i32 %14, %11
  %16 = xor i32 %14, %13
  %17 = and i32 %15, %16
  store i32 %17, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 3), align 8, !tbaa !14
  store i32 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 5), align 8, !tbaa !15
  store i32 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 4), align 4, !tbaa !16
  %18 = and i32 %14, 255
  store i32 %18, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 6), align 4, !tbaa !17
  %19 = load i32, ptr %6, align 4, !tbaa !12
  %20 = and i32 %19, -256
  %21 = or i32 %20, %18
  store i32 %21, ptr %6, align 4, !tbaa !12
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
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!10, !10, i64 0}
!13 = !{!6, !10, i64 12}
!14 = !{!6, !10, i64 16}
!15 = !{!6, !10, i64 24}
!16 = !{!6, !10, i64 20}
!17 = !{!6, !10, i64 28}
