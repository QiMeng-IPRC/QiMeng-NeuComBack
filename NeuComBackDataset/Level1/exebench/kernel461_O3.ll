; ModuleID = '../benchmarks/fine_grained/exebench/kernel461.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel461.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @hpsolb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds i64, ptr %2, i64 -1
  %6 = getelementptr inbounds double, ptr %1, i64 -1
  %7 = load i64, ptr %3, align 8, !tbaa !5
  %8 = icmp ne i64 %7, 0
  %9 = load i64, ptr %0, align 8, !tbaa !5
  %10 = icmp slt i64 %9, 2
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %38, label %12

12:                                               ; preds = %4, %30
  %13 = phi i64 [ %34, %30 ], [ 2, %4 ]
  %14 = getelementptr inbounds double, ptr %6, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !9
  %16 = getelementptr inbounds i64, ptr %5, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %12, %24
  %19 = phi i64 [ %13, %12 ], [ %20, %24 ]
  %20 = lshr i64 %19, 1
  %21 = getelementptr inbounds double, ptr %6, i64 %20
  %22 = load double, ptr %21, align 8, !tbaa !9
  %23 = fcmp olt double %15, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds double, ptr %6, i64 %19
  store double %22, ptr %25, align 8, !tbaa !9
  %26 = getelementptr inbounds i64, ptr %5, i64 %20
  %27 = load i64, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds i64, ptr %5, i64 %19
  store i64 %27, ptr %28, align 8, !tbaa !5
  %29 = icmp ugt i64 %19, 3
  br i1 %29, label %18, label %30

30:                                               ; preds = %18, %24
  %31 = phi i64 [ %19, %18 ], [ %20, %24 ]
  %32 = getelementptr inbounds double, ptr %6, i64 %31
  store double %15, ptr %32, align 8, !tbaa !9
  %33 = getelementptr inbounds i64, ptr %5, i64 %31
  store i64 %17, ptr %33, align 8, !tbaa !5
  %34 = add nuw i64 %13, 1
  %35 = icmp eq i64 %13, %9
  br i1 %35, label %36, label %12, !llvm.loop !11

36:                                               ; preds = %30
  %37 = load i64, ptr %0, align 8, !tbaa !5
  br label %38

38:                                               ; preds = %36, %4
  %39 = phi i64 [ %9, %4 ], [ %37, %36 ]
  %40 = icmp sgt i64 %39, 1
  br i1 %40, label %41, label %77

41:                                               ; preds = %38
  %42 = load double, ptr %1, align 8, !tbaa !9
  %43 = load i64, ptr %2, align 8, !tbaa !5
  %44 = getelementptr inbounds double, ptr %6, i64 %39
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds i64, ptr %5, i64 %39
  %47 = load i64, ptr %46, align 8, !tbaa !5
  %48 = icmp eq i64 %39, 2
  br i1 %48, label %70, label %49

49:                                               ; preds = %41, %62
  %50 = phi i64 [ %67, %62 ], [ 2, %41 ]
  %51 = phi i64 [ %58, %62 ], [ 1, %41 ]
  %52 = or i64 %50, 1
  %53 = getelementptr inbounds double, ptr %6, i64 %52
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = getelementptr inbounds double, ptr %6, i64 %50
  %56 = load double, ptr %55, align 8, !tbaa !9
  %57 = fcmp olt double %54, %56
  %58 = select i1 %57, i64 %52, i64 %50
  %59 = getelementptr inbounds double, ptr %6, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !9
  %61 = fcmp olt double %60, %45
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = getelementptr inbounds double, ptr %6, i64 %51
  store double %60, ptr %63, align 8, !tbaa !9
  %64 = getelementptr inbounds i64, ptr %5, i64 %58
  %65 = load i64, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds i64, ptr %5, i64 %51
  store i64 %65, ptr %66, align 8, !tbaa !5
  %67 = shl nsw i64 %58, 1
  %68 = load i64, ptr %0, align 8, !tbaa !5
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %49, label %70

70:                                               ; preds = %62, %49, %41
  %71 = phi i64 [ 1, %41 ], [ %51, %49 ], [ %58, %62 ]
  %72 = getelementptr inbounds double, ptr %6, i64 %71
  store double %45, ptr %72, align 8, !tbaa !9
  %73 = getelementptr inbounds i64, ptr %5, i64 %71
  store i64 %47, ptr %73, align 8, !tbaa !5
  %74 = load i64, ptr %0, align 8, !tbaa !5
  %75 = getelementptr inbounds double, ptr %6, i64 %74
  store double %42, ptr %75, align 8, !tbaa !9
  %76 = getelementptr inbounds i64, ptr %5, i64 %74
  store i64 %43, ptr %76, align 8, !tbaa !5
  br label %77

77:                                               ; preds = %70, %38
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
