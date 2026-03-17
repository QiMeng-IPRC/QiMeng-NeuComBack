; ModuleID = '../benchmarks/fine_grained/exebench/kernel76.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel76.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, i32, i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_congestion_ctrl_info(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  store double 1.000000e+00, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 128, ptr %4, align 4, !tbaa !13
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  store i64 0, ptr %5, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store i32 1, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !16
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !11, i64 24}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !10, i64 12}
!14 = !{!6, !11, i64 24}
!15 = !{!6, !10, i64 16}
!16 = !{!6, !10, i64 20}
