; ModuleID = '../benchmarks/fine_grained/exebench/kernel274.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel274.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mapOutput(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store float 0.000000e+00, ptr %1, align 4, !tbaa !5
  br label %9

6:                                                ; preds = %3
  %7 = load float, ptr %0, align 4, !tbaa !10
  store float %7, ptr %1, align 4, !tbaa !5
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %6
  %10 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 0, i32 1
  store float 0.000000e+00, ptr %10, align 4, !tbaa !11
  br label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !10
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 0, i32 1
  store float %13, ptr %14, align 4, !tbaa !11
  %15 = icmp ugt i32 %2, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !10
  br label %19

19:                                               ; preds = %9, %11, %16
  %20 = phi float [ %18, %16 ], [ 0.000000e+00, %11 ], [ 0.000000e+00, %9 ]
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 0, i32 2
  store float %20, ptr %21, align 4, !tbaa !12
  ret void
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
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !7, i64 8}
