; ModuleID = '../benchmarks/fine_grained/exebench/kernel706.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel706.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i64, i32, i32, i32 }

@cpu0 = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @instruc_5() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu0, i64 0, i32 2), align 8, !tbaa !5
  %2 = and i32 %1, 4095
  %3 = load ptr, ptr @cpu0, align 8, !tbaa !12
  %4 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu0, i64 0, i32 1), align 8, !tbaa !13
  %5 = getelementptr inbounds i32, ptr %3, i64 %4
  store i32 %2, ptr %5, align 4, !tbaa !14
  %6 = add i64 %4, 1
  store i64 %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu0, i64 0, i32 1), align 8, !tbaa !13
  %7 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu0, i64 0, i32 3), align 4, !tbaa !15
  %8 = shl i32 %7, 8
  %9 = and i32 %8, 3840
  %10 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu0, i64 0, i32 4), align 8, !tbaa !16
  %11 = and i32 %10, 255
  %12 = or i32 %9, %11
  store i32 %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu0, i64 0, i32 2), align 8, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !11, i64 16}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !11, i64 16, !11, i64 20, !11, i64 24}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !10, i64 8}
!14 = !{!11, !11, i64 0}
!15 = !{!6, !11, i64 20}
!16 = !{!6, !11, i64 24}
