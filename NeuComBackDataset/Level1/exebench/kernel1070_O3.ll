; ModuleID = '../benchmarks/fine_grained/exebench/kernel1070.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1070.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i64 }

@m68ki_cpu = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @m68k_op_roxl_32_s() local_unnamed_addr #0 {
  %1 = load ptr, ptr @m68ki_cpu, align 8, !tbaa !5
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 1), align 8, !tbaa !12
  %3 = and i32 %2, 7
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %1, i64 %4
  %6 = lshr i32 %2, 9
  %7 = add nuw nsw i32 %6, 7
  %8 = and i32 %7, 7
  %9 = add nuw nsw i32 %8, 1
  %10 = load i32, ptr %5, align 4, !tbaa !13
  %11 = shl i32 %10, %9
  %12 = sub nuw nsw i32 32, %8
  %13 = icmp eq i32 %8, 0
  %14 = lshr i32 %10, %12
  %15 = select i1 %13, i32 0, i32 %14
  %16 = or i32 %15, %11
  %17 = shl nuw nsw i32 1, %8
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 2), align 4, !tbaa !14
  %21 = lshr i32 %20, 8
  %22 = and i32 %21, 1
  %23 = shl nuw nsw i32 %22, %8
  %24 = or i32 %19, %23
  %25 = xor i32 %8, 31
  store i32 %24, ptr %5, align 4, !tbaa !13
  %26 = lshr i32 %10, %25
  %27 = shl nuw nsw i32 %26, 8
  %28 = and i32 %27, 256
  store i32 %28, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 2), align 4, !tbaa !14
  store i32 %28, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 3), align 8, !tbaa !15
  %29 = lshr i32 %16, 24
  store i32 %29, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 4), align 4, !tbaa !16
  store i32 %24, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i64 0, i32 5), align 8, !tbaa !17
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
