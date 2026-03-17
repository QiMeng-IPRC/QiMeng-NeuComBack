; ModuleID = '../benchmarks/fine_grained/exebench/kernel1134.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1134.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fftwf_an_INT_guaranteed_to_be_zero = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @r2cfII_2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
  %11 = icmp sgt i64 %7, 0
  br i1 %11, label %12, label %76

12:                                               ; preds = %10
  %13 = and i64 %7, 3
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %26, %15 ], [ %0, %12 ]
  %17 = phi ptr [ %27, %15 ], [ %1, %12 ]
  %18 = phi i64 [ %25, %15 ], [ %7, %12 ]
  %19 = phi ptr [ %28, %15 ], [ %2, %12 ]
  %20 = phi ptr [ %29, %15 ], [ %3, %12 ]
  %21 = phi i64 [ %30, %15 ], [ 0, %12 ]
  %22 = load float, ptr %16, align 4, !tbaa !5
  %23 = load float, ptr %17, align 4, !tbaa !5
  store float %22, ptr %19, align 4, !tbaa !5
  %24 = fneg float %23
  store float %24, ptr %20, align 4, !tbaa !5
  %25 = add nsw i64 %18, -1
  %26 = getelementptr inbounds float, ptr %16, i64 %8
  %27 = getelementptr inbounds float, ptr %17, i64 %8
  %28 = getelementptr inbounds float, ptr %19, i64 %9
  %29 = getelementptr inbounds float, ptr %20, i64 %9
  %30 = add i64 %21, 1
  %31 = icmp eq i64 %30, %13
  br i1 %31, label %32, label %15, !llvm.loop !9

32:                                               ; preds = %15, %12
  %33 = phi ptr [ %0, %12 ], [ %26, %15 ]
  %34 = phi ptr [ %1, %12 ], [ %27, %15 ]
  %35 = phi i64 [ %7, %12 ], [ %25, %15 ]
  %36 = phi ptr [ %2, %12 ], [ %28, %15 ]
  %37 = phi ptr [ %3, %12 ], [ %29, %15 ]
  %38 = icmp ult i64 %7, 4
  br i1 %38, label %76, label %39

39:                                               ; preds = %32, %39
  %40 = phi ptr [ %70, %39 ], [ %33, %32 ]
  %41 = phi ptr [ %71, %39 ], [ %34, %32 ]
  %42 = phi i64 [ %69, %39 ], [ %35, %32 ]
  %43 = phi ptr [ %72, %39 ], [ %36, %32 ]
  %44 = phi ptr [ %73, %39 ], [ %37, %32 ]
  %45 = load float, ptr %40, align 4, !tbaa !5
  %46 = load float, ptr %41, align 4, !tbaa !5
  store float %45, ptr %43, align 4, !tbaa !5
  %47 = fneg float %46
  store float %47, ptr %44, align 4, !tbaa !5
  %48 = getelementptr inbounds float, ptr %40, i64 %8
  %49 = getelementptr inbounds float, ptr %41, i64 %8
  %50 = getelementptr inbounds float, ptr %43, i64 %9
  %51 = getelementptr inbounds float, ptr %44, i64 %9
  %52 = load float, ptr %48, align 4, !tbaa !5
  %53 = load float, ptr %49, align 4, !tbaa !5
  store float %52, ptr %50, align 4, !tbaa !5
  %54 = fneg float %53
  store float %54, ptr %51, align 4, !tbaa !5
  %55 = getelementptr inbounds float, ptr %48, i64 %8
  %56 = getelementptr inbounds float, ptr %49, i64 %8
  %57 = getelementptr inbounds float, ptr %50, i64 %9
  %58 = getelementptr inbounds float, ptr %51, i64 %9
  %59 = load float, ptr %55, align 4, !tbaa !5
  %60 = load float, ptr %56, align 4, !tbaa !5
  store float %59, ptr %57, align 4, !tbaa !5
  %61 = fneg float %60
  store float %61, ptr %58, align 4, !tbaa !5
  %62 = getelementptr inbounds float, ptr %55, i64 %8
  %63 = getelementptr inbounds float, ptr %56, i64 %8
  %64 = getelementptr inbounds float, ptr %57, i64 %9
  %65 = getelementptr inbounds float, ptr %58, i64 %9
  %66 = load float, ptr %62, align 4, !tbaa !5
  %67 = load float, ptr %63, align 4, !tbaa !5
  store float %66, ptr %64, align 4, !tbaa !5
  %68 = fneg float %67
  store float %68, ptr %65, align 4, !tbaa !5
  %69 = add nsw i64 %42, -4
  %70 = getelementptr inbounds float, ptr %62, i64 %8
  %71 = getelementptr inbounds float, ptr %63, i64 %8
  %72 = getelementptr inbounds float, ptr %64, i64 %9
  %73 = getelementptr inbounds float, ptr %65, i64 %9
  %74 = add i64 %42, -5
  %75 = icmp ult i64 %74, -2
  br i1 %75, label %39, label %76, !llvm.loop !11

76:                                               ; preds = %32, %39, %10
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
