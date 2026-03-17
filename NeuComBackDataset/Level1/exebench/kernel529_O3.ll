; ModuleID = '../benchmarks/fine_grained/exebench/kernel529.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel529.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { double, float }

@odo = dso_local local_unnamed_addr global %struct.TYPE_7__ zeroinitializer, align 8
@motionState = dso_local local_unnamed_addr global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @get_vd() local_unnamed_addr #0 {
  %1 = load double, ptr @odo, align 8, !tbaa !5
  %2 = fmul double %1, 5.000000e-01
  %3 = load double, ptr @motionState, align 8, !tbaa !11
  %4 = fmul double %2, %3
  %5 = fptrunc double %4 to float
  %6 = load float, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @motionState, i64 0, i32 0, i32 1), align 8, !tbaa !15
  %7 = fadd float %6, %5
  ret float %7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 0}
!6 = !{!"TYPE_7__", !7, i64 0}
!7 = !{!"TYPE_5__", !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"TYPE_8__", !13, i64 0}
!13 = !{!"TYPE_6__", !8, i64 0, !14, i64 8}
!14 = !{!"float", !9, i64 0}
!15 = !{!12, !14, i64 8}
