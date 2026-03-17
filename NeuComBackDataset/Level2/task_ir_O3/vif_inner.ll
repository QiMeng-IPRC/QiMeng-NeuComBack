; ModuleID = 'task_ir_O3/vif_inner_ori.ll'
source_filename = "task_c/vif_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @vif_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %61, %0
  %2 = phi i32 [ 0, %0 ], [ %63, %61 ]
  br label %3

3:                                                ; preds = %57, %1
  %4 = phi i64 [ 0, %1 ], [ %58, %57 ]
  %5 = or i64 %4, 4
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %7 = load <4 x float>, ptr %6, align 32, !tbaa !5
  %8 = getelementptr inbounds float, ptr %6, i64 4
  %9 = load <4 x float>, ptr %8, align 16, !tbaa !5
  %10 = fcmp ogt <4 x float> %7, zeroinitializer
  %11 = fcmp ogt <4 x float> %9, zeroinitializer
  %12 = extractelement <4 x i1> %10, i64 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  %15 = extractelement <4 x float> %7, i64 0
  store float %15, ptr %14, align 32, !tbaa !5
  br label %16

16:                                               ; preds = %13, %3
  %17 = extractelement <4 x i1> %10, i64 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = or i64 %4, 1
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = extractelement <4 x float> %7, i64 1
  store float %21, ptr %20, align 4, !tbaa !5
  br label %22

22:                                               ; preds = %18, %16
  %23 = extractelement <4 x i1> %10, i64 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = or i64 %4, 2
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %27 = extractelement <4 x float> %7, i64 2
  store float %27, ptr %26, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %24, %22
  %29 = extractelement <4 x i1> %10, i64 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = or i64 %4, 3
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = extractelement <4 x float> %7, i64 3
  store float %33, ptr %32, align 4, !tbaa !5
  br label %34

34:                                               ; preds = %30, %28
  %35 = extractelement <4 x i1> %11, i64 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %38 = extractelement <4 x float> %9, i64 0
  store float %38, ptr %37, align 16, !tbaa !5
  br label %39

39:                                               ; preds = %36, %34
  %40 = extractelement <4 x i1> %11, i64 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = or i64 %4, 5
  %43 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  %44 = extractelement <4 x float> %9, i64 1
  store float %44, ptr %43, align 4, !tbaa !5
  br label %45

45:                                               ; preds = %41, %39
  %46 = extractelement <4 x i1> %11, i64 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = or i64 %4, 6
  %49 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %48
  %50 = extractelement <4 x float> %9, i64 2
  store float %50, ptr %49, align 8, !tbaa !5
  br label %51

51:                                               ; preds = %47, %45
  %52 = extractelement <4 x i1> %11, i64 3
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = or i64 %4, 7
  %55 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %54
  %56 = extractelement <4 x float> %9, i64 3
  store float %56, ptr %55, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %53, %51
  %58 = add nuw nsw i64 %4, 8
  %59 = icmp eq i64 %58, 32000
  br i1 %59, label %61, label %3, !llvm.loop !9

60:                                               ; preds = %61
  ret void

61:                                               ; preds = %57
  %62 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %63 = add nuw nsw i32 %2, 1
  %64 = icmp eq i32 %63, 100000
  br i1 %64, label %60, label %1, !llvm.loop !13
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
