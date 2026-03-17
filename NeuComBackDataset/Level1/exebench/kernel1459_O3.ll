; ModuleID = '../benchmarks/fine_grained/exebench/kernel1459.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1459.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vexRT = dso_local local_unnamed_addr global ptr null, align 8
@JOY_BTN_HITCH_UP = dso_local local_unnamed_addr global i64 0, align 8
@JOY_BTN_HITCH_DOWN = dso_local local_unnamed_addr global i64 0, align 8
@motor = dso_local local_unnamed_addr global ptr null, align 8
@servoHitch = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @runHitch() local_unnamed_addr #0 {
  %1 = load ptr, ptr @vexRT, align 8, !tbaa !5
  %2 = load i64, ptr @JOY_BTN_HITCH_UP, align 8, !tbaa !9
  %3 = getelementptr inbounds float, ptr %1, i64 %2
  %4 = load float, ptr %3, align 4, !tbaa !11
  %5 = load i64, ptr @JOY_BTN_HITCH_DOWN, align 8, !tbaa !9
  %6 = getelementptr inbounds float, ptr %1, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !11
  %8 = fsub float %4, %7
  %9 = fcmp une float %8, 0.000000e+00
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = fmul float %8, 1.280000e+02
  %12 = load ptr, ptr @motor, align 8, !tbaa !5
  %13 = load i64, ptr @servoHitch, align 8, !tbaa !9
  %14 = getelementptr inbounds float, ptr %12, i64 %13
  store float %11, ptr %14, align 4, !tbaa !11
  br label %15

15:                                               ; preds = %10, %0
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
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
