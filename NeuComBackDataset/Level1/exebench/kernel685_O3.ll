; ModuleID = '../benchmarks/fine_grained/exebench/kernel685.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel685.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double }

@nPlotpoints = dso_local local_unnamed_addr global i64 0, align 8
@plotpoints = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calcplotp(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load i64, ptr @nPlotpoints, align 8, !tbaa !5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @plotpoints, align 8, !tbaa !9
  %10 = fneg double %2
  %11 = fneg double %3
  br label %15

12:                                               ; preds = %15
  %13 = add nuw i64 %16, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %31, label %15, !llvm.loop !11

15:                                               ; preds = %8, %12
  %16 = phi i64 [ 0, %8 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.TYPE_2__, ptr %9, i64 %16
  %18 = load double, ptr %17, align 8, !tbaa !13
  %19 = fsub double %0, %18
  %20 = getelementptr inbounds %struct.TYPE_2__, ptr %9, i64 %16, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !16
  %22 = fsub double %1, %21
  %23 = fcmp olt double %19, %2
  %24 = fcmp ogt double %19, %10
  %25 = and i1 %23, %24
  %26 = fcmp olt double %22, %3
  %27 = select i1 %25, i1 %26, i1 false
  %28 = fcmp ogt double %22, %11
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %12

30:                                               ; preds = %15
  store double 1.000000e+00, ptr %4, align 8, !tbaa !17
  br label %31

31:                                               ; preds = %12, %5, %30
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !15, i64 0}
!14 = !{!"TYPE_2__", !15, i64 0, !15, i64 8}
!15 = !{!"double", !7, i64 0}
!16 = !{!14, !15, i64 8}
!17 = !{!15, !15, i64 0}
