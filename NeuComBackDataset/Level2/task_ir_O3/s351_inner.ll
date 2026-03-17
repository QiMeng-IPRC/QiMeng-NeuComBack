; ModuleID = 'task_ir_O3/s351_inner_ori.ll'
source_filename = "task_c/s351_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s351_inner() local_unnamed_addr #0 {
  %1 = load <4 x float>, ptr @c, align 64
  %2 = shufflevector <4 x float> %1, <4 x float> poison, <4 x i32> zeroinitializer
  br label %3

3:                                                ; preds = %160, %0
  %4 = phi i32 [ 0, %0 ], [ %162, %160 ]
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i64 [ 0, %3 ], [ %157, %5 ]
  %7 = mul nuw nsw i64 %6, 5
  %8 = add nuw nsw i64 %7, 5
  %9 = add nuw nsw i64 %7, 10
  %10 = add nuw nsw i64 %7, 15
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %7
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %14 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %15 = load float, ptr %11, align 16, !tbaa !5
  %16 = load float, ptr %12, align 4, !tbaa !5
  %17 = load float, ptr %13, align 8, !tbaa !5
  %18 = load float, ptr %14, align 4, !tbaa !5
  %19 = insertelement <4 x float> poison, float %15, i64 0
  %20 = insertelement <4 x float> %19, float %16, i64 1
  %21 = insertelement <4 x float> %20, float %17, i64 2
  %22 = insertelement <4 x float> %21, float %18, i64 3
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %7
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  %27 = load float, ptr %23, align 16, !tbaa !5
  %28 = load float, ptr %24, align 4, !tbaa !5
  %29 = load float, ptr %25, align 8, !tbaa !5
  %30 = load float, ptr %26, align 4, !tbaa !5
  %31 = insertelement <4 x float> poison, float %27, i64 0
  %32 = insertelement <4 x float> %31, float %28, i64 1
  %33 = insertelement <4 x float> %32, float %29, i64 2
  %34 = insertelement <4 x float> %33, float %30, i64 3
  %35 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %2, <4 x float> %22, <4 x float> %34)
  %36 = or i64 %7, 1
  %37 = add nuw nsw i64 %7, 6
  %38 = add nuw nsw i64 %7, 11
  %39 = add nuw nsw i64 %7, 16
  %40 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %36
  %41 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %37
  %42 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %38
  %43 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %39
  %44 = load float, ptr %40, align 4, !tbaa !5
  %45 = load float, ptr %41, align 8, !tbaa !5
  %46 = load float, ptr %42, align 4, !tbaa !5
  %47 = load float, ptr %43, align 16, !tbaa !5
  %48 = insertelement <4 x float> poison, float %44, i64 0
  %49 = insertelement <4 x float> %48, float %45, i64 1
  %50 = insertelement <4 x float> %49, float %46, i64 2
  %51 = insertelement <4 x float> %50, float %47, i64 3
  %52 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %36
  %53 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %37
  %54 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  %55 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %39
  %56 = load float, ptr %52, align 4, !tbaa !5
  %57 = load float, ptr %53, align 8, !tbaa !5
  %58 = load float, ptr %54, align 4, !tbaa !5
  %59 = load float, ptr %55, align 16, !tbaa !5
  %60 = insertelement <4 x float> poison, float %56, i64 0
  %61 = insertelement <4 x float> %60, float %57, i64 1
  %62 = insertelement <4 x float> %61, float %58, i64 2
  %63 = insertelement <4 x float> %62, float %59, i64 3
  %64 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %2, <4 x float> %51, <4 x float> %63)
  %65 = or i64 %7, 2
  %66 = add nuw nsw i64 %7, 7
  %67 = add nuw nsw i64 %7, 12
  %68 = add nuw nsw i64 %7, 17
  %69 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %65
  %70 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %66
  %71 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %67
  %72 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %68
  %73 = load float, ptr %69, align 8, !tbaa !5
  %74 = load float, ptr %70, align 4, !tbaa !5
  %75 = load float, ptr %71, align 16, !tbaa !5
  %76 = load float, ptr %72, align 4, !tbaa !5
  %77 = insertelement <4 x float> poison, float %73, i64 0
  %78 = insertelement <4 x float> %77, float %74, i64 1
  %79 = insertelement <4 x float> %78, float %75, i64 2
  %80 = insertelement <4 x float> %79, float %76, i64 3
  %81 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %65
  %82 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %66
  %83 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %67
  %84 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %68
  %85 = load float, ptr %81, align 8, !tbaa !5
  %86 = load float, ptr %82, align 4, !tbaa !5
  %87 = load float, ptr %83, align 16, !tbaa !5
  %88 = load float, ptr %84, align 4, !tbaa !5
  %89 = insertelement <4 x float> poison, float %85, i64 0
  %90 = insertelement <4 x float> %89, float %86, i64 1
  %91 = insertelement <4 x float> %90, float %87, i64 2
  %92 = insertelement <4 x float> %91, float %88, i64 3
  %93 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %2, <4 x float> %80, <4 x float> %92)
  %94 = or i64 %7, 3
  %95 = add nuw nsw i64 %7, 8
  %96 = add nuw nsw i64 %7, 13
  %97 = add nuw nsw i64 %7, 18
  %98 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %94
  %99 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %95
  %100 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %96
  %101 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %97
  %102 = load float, ptr %98, align 4, !tbaa !5
  %103 = load float, ptr %99, align 16, !tbaa !5
  %104 = load float, ptr %100, align 4, !tbaa !5
  %105 = load float, ptr %101, align 8, !tbaa !5
  %106 = insertelement <4 x float> poison, float %102, i64 0
  %107 = insertelement <4 x float> %106, float %103, i64 1
  %108 = insertelement <4 x float> %107, float %104, i64 2
  %109 = insertelement <4 x float> %108, float %105, i64 3
  %110 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %94
  %111 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %95
  %112 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %96
  %113 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %97
  %114 = load float, ptr %110, align 4, !tbaa !5
  %115 = load float, ptr %111, align 16, !tbaa !5
  %116 = load float, ptr %112, align 4, !tbaa !5
  %117 = load float, ptr %113, align 8, !tbaa !5
  %118 = insertelement <4 x float> poison, float %114, i64 0
  %119 = insertelement <4 x float> %118, float %115, i64 1
  %120 = insertelement <4 x float> %119, float %116, i64 2
  %121 = insertelement <4 x float> %120, float %117, i64 3
  %122 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %2, <4 x float> %109, <4 x float> %121)
  %123 = add nuw nsw i64 %7, 4
  %124 = add nuw nsw i64 %7, 9
  %125 = add nuw nsw i64 %7, 14
  %126 = add nuw nsw i64 %7, 19
  %127 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %123
  %128 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %124
  %129 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %125
  %130 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %126
  %131 = load float, ptr %127, align 16, !tbaa !5
  %132 = load float, ptr %128, align 4, !tbaa !5
  %133 = load float, ptr %129, align 8, !tbaa !5
  %134 = load float, ptr %130, align 4, !tbaa !5
  %135 = insertelement <4 x float> poison, float %131, i64 0
  %136 = insertelement <4 x float> %135, float %132, i64 1
  %137 = insertelement <4 x float> %136, float %133, i64 2
  %138 = insertelement <4 x float> %137, float %134, i64 3
  %139 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %123
  %140 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %124
  %141 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %125
  %142 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %126
  %143 = load float, ptr %139, align 16, !tbaa !5
  %144 = load float, ptr %140, align 4, !tbaa !5
  %145 = load float, ptr %141, align 8, !tbaa !5
  %146 = load float, ptr %142, align 4, !tbaa !5
  %147 = insertelement <4 x float> poison, float %143, i64 0
  %148 = insertelement <4 x float> %147, float %144, i64 1
  %149 = insertelement <4 x float> %148, float %145, i64 2
  %150 = insertelement <4 x float> %149, float %146, i64 3
  %151 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %2, <4 x float> %138, <4 x float> %150)
  %152 = shufflevector <4 x float> %35, <4 x float> %64, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %153 = shufflevector <4 x float> %93, <4 x float> %122, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %154 = shufflevector <8 x float> %152, <8 x float> %153, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %155 = shufflevector <4 x float> %151, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %156 = shufflevector <16 x float> %154, <16 x float> %155, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %156, ptr %23, align 16, !tbaa !5
  %157 = add nuw nsw i64 %6, 4
  %158 = icmp eq i64 %157, 6400
  br i1 %158, label %160, label %5, !llvm.loop !9

159:                                              ; preds = %160
  ret void

160:                                              ; preds = %5
  %161 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %162 = add nuw nsw i32 %4, 1
  %163 = icmp eq i32 %162, 800000
  br i1 %163, label %159, label %3, !llvm.loop !13
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
