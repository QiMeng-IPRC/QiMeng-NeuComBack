; ModuleID = '../benchmarks/fine_grained/exebench/kernel526.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel526.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_t = type { i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local float @vector_resize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.vector_t, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !10
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = shl nsw i32 %2, 1
  br label %11

8:                                                ; preds = %1
  %9 = sdiv i32 %4, 2
  %10 = icmp sgt i32 %2, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %13 = phi float [ 2.000000e+00, %6 ], [ 5.000000e-01, %8 ]
  store i32 %12, ptr %3, align 4, !tbaa !10
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi float [ 1.000000e+00, %8 ], [ %13, %11 ]
  ret float %15
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"vector_t", !7, i64 0, !7, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
