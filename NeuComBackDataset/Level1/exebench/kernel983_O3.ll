; ModuleID = '../benchmarks/fine_grained/exebench/kernel983.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel983.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TNC_FALSE = dso_local local_unnamed_addr global i32 0, align 4
@TNC_TRUE = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @removeConstraint(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = fsub double %4, %3
  %10 = fmul double %0, -5.000000e-01
  %11 = fcmp ugt double %9, %10
  %12 = fcmp ule double %1, %2
  %13 = or i1 %12, %11
  %14 = icmp sgt i32 %7, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %86

16:                                               ; preds = %8
  %17 = zext i32 %7 to i64
  %18 = and i64 %17, 1
  %19 = icmp eq i32 %7, 1
  br i1 %19, label %61, label %20

20:                                               ; preds = %16
  %21 = and i64 %17, 4294967294
  br label %22

22:                                               ; preds = %55, %20
  %23 = phi i64 [ 0, %20 ], [ %58, %55 ]
  %24 = phi i32 [ -1, %20 ], [ %57, %55 ]
  %25 = phi double [ 0.000000e+00, %20 ], [ %56, %55 ]
  %26 = phi i64 [ 0, %20 ], [ %59, %55 ]
  %27 = getelementptr inbounds i32, ptr %6, i64 %23
  %28 = load i32, ptr %27, align 4, !tbaa !5
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %39, label %30

30:                                               ; preds = %22
  %31 = sub nsw i32 0, %28
  %32 = sitofp i32 %31 to double
  %33 = getelementptr inbounds double, ptr %5, i64 %23
  %34 = load double, ptr %33, align 8, !tbaa !9
  %35 = fmul double %34, %32
  %36 = fcmp olt double %35, %25
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = trunc i64 %23 to i32
  br label %39

39:                                               ; preds = %30, %37, %22
  %40 = phi double [ %25, %22 ], [ %35, %37 ], [ %25, %30 ]
  %41 = phi i32 [ %24, %22 ], [ %38, %37 ], [ %24, %30 ]
  %42 = or i64 %23, 1
  %43 = getelementptr inbounds i32, ptr %6, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !5
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = sub nsw i32 0, %44
  %48 = sitofp i32 %47 to double
  %49 = getelementptr inbounds double, ptr %5, i64 %42
  %50 = load double, ptr %49, align 8, !tbaa !9
  %51 = fmul double %50, %48
  %52 = fcmp olt double %51, %40
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = trunc i64 %42 to i32
  br label %55

55:                                               ; preds = %53, %46, %39
  %56 = phi double [ %40, %39 ], [ %51, %53 ], [ %40, %46 ]
  %57 = phi i32 [ %41, %39 ], [ %54, %53 ], [ %41, %46 ]
  %58 = add nuw nsw i64 %23, 2
  %59 = add i64 %26, 2
  %60 = icmp eq i64 %59, %21
  br i1 %60, label %61, label %22, !llvm.loop !11

61:                                               ; preds = %55, %16
  %62 = phi i32 [ undef, %16 ], [ %57, %55 ]
  %63 = phi i64 [ 0, %16 ], [ %58, %55 ]
  %64 = phi i32 [ -1, %16 ], [ %57, %55 ]
  %65 = phi double [ 0.000000e+00, %16 ], [ %56, %55 ]
  %66 = icmp eq i64 %18, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds i32, ptr %6, i64 %63
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %80, label %71

71:                                               ; preds = %67
  %72 = sub nsw i32 0, %69
  %73 = sitofp i32 %72 to double
  %74 = getelementptr inbounds double, ptr %5, i64 %63
  %75 = load double, ptr %74, align 8, !tbaa !9
  %76 = fmul double %75, %73
  %77 = fcmp olt double %76, %65
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = trunc i64 %63 to i32
  br label %80

80:                                               ; preds = %67, %71, %78, %61
  %81 = phi i32 [ %62, %61 ], [ %64, %67 ], [ %79, %78 ], [ %64, %71 ]
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = sext i32 %81 to i64
  %85 = getelementptr inbounds i32, ptr %6, i64 %84
  store i32 0, ptr %85, align 4, !tbaa !5
  br label %86

86:                                               ; preds = %80, %8, %83
  %87 = phi ptr [ @TNC_TRUE, %83 ], [ @TNC_FALSE, %8 ], [ @TNC_FALSE, %80 ]
  %88 = load i32, ptr %87, align 4, !tbaa !5
  ret i32 %88
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
