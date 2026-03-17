; ModuleID = '../benchmarks/fine_grained/exebench/kernel329.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel329.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, i32, i32, i32 }

@SIN_TABLE = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @updateBallPosition(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load double, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !13
  %9 = load ptr, ptr @SIN_TABLE, align 8, !tbaa !14
  %10 = add nsw i32 %6, 90
  %11 = srem i32 %10, 360
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !16
  %15 = mul nsw i32 %14, %8
  %16 = sitofp i32 %15 to double
  %17 = fadd double %2, %16
  %18 = sext i32 %6 to i64
  %19 = getelementptr inbounds i32, ptr %9, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !16
  %21 = mul nsw i32 %20, %8
  %22 = sitofp i32 %21 to double
  %23 = fadd double %4, %22
  %24 = fcmp ogt double %17, 5.160000e+02
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = fcmp olt double %17, 6.700000e+01
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %1, %25, %27
  %29 = phi double [ 6.700000e+01, %27 ], [ %17, %25 ], [ 5.160000e+02, %1 ]
  %30 = fcmp olt double %23, 6.700000e+01
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = fcmp ult double %23, 4.130000e+02
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %28, %31, %33
  %35 = phi double [ 4.120000e+02, %33 ], [ %23, %31 ], [ 6.700000e+01, %28 ]
  store double %29, ptr %0, align 8, !tbaa !5
  store double %35, ptr %3, align 8, !tbaa !11
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !10, i64 20}
!13 = !{!6, !10, i64 24}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!10, !10, i64 0}
