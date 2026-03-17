; ModuleID = '../benchmarks/fine_grained/exebench/kernel1363.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1363.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@enabled = dso_local local_unnamed_addr global i64 0, align 8
@pm25data = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @getPM25Index(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @enabled, align 8, !tbaa !5
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @pm25data, align 8, !tbaa !9
  %6 = getelementptr inbounds i32, ptr %5, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = getelementptr inbounds i32, ptr %5, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = add nsw i32 %9, %7
  %11 = getelementptr inbounds i32, ptr %5, i64 3
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = add nsw i32 %10, %12
  %14 = getelementptr inbounds i32, ptr %5, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !11
  %16 = add nsw i32 %13, %15
  %17 = getelementptr inbounds i32, ptr %5, i64 5
  %18 = load i32, ptr %17, align 4, !tbaa !11
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = shl i32 %7, 8
  %22 = or i32 %21, %9
  %23 = sitofp i32 %22 to double
  %24 = fmul double %23, 8.000000e+02
  %25 = fmul double %24, 0x3F50000000000000
  %26 = fmul double %25, 5.000000e+00
  %27 = fptrunc double %26 to float
  store float %27, ptr %0, align 4, !tbaa !13
  store i64 0, ptr @enabled, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %20, %4, %1
  %29 = phi i32 [ 0, %1 ], [ 1, %20 ], [ 0, %4 ]
  ret i32 %29
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !7, i64 0}
