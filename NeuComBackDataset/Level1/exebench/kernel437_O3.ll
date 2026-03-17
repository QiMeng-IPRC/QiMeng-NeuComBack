; ModuleID = '../benchmarks/fine_grained/exebench/kernel437.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel437.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@score_2p = dso_local local_unnamed_addr global ptr null, align 8
@isRed_other = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @updateCount_other(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds float, ptr %0, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = fcmp oeq float %9, 2.000000e+00
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds float, ptr %0, i64 4
  %13 = load float, ptr %12, align 4, !tbaa !5
  %14 = fcmp oeq float %13, 2.000000e+00
  %15 = select i1 %10, i32 2, i32 1
  %16 = select i1 %14, i32 %15, i32 %11
  %17 = getelementptr inbounds float, ptr %0, i64 5
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = fcmp oeq float %18, 2.000000e+00
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds i32, ptr %2, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !9
  %23 = icmp sgt i32 %16, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load float, ptr %0, align 4, !tbaa !5
  %26 = fcmp une float %25, 2.000000e+00
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load ptr, ptr @score_2p, align 8, !tbaa !11
  %29 = load i64, ptr %28, align 8, !tbaa !13
  %30 = add nsw i64 %29, 2
  store i64 %30, ptr %28, align 8, !tbaa !13
  br label %31

31:                                               ; preds = %27, %24, %3
  %32 = phi i32 [ 1, %27 ], [ 0, %24 ], [ 0, %3 ]
  %33 = getelementptr inbounds i32, ptr %2, i64 2
  %34 = load i32, ptr %33, align 4, !tbaa !9
  %35 = icmp slt i32 %34, %20
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load float, ptr %0, align 4, !tbaa !5
  %38 = fcmp une float %37, 2.000000e+00
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  store i8 121, ptr @isRed_other, align 1, !tbaa !15
  %40 = load ptr, ptr @score_2p, align 8, !tbaa !11
  %41 = load i64, ptr %40, align 8, !tbaa !13
  %42 = add nsw i64 %41, 3
  store i64 %42, ptr %40, align 8, !tbaa !13
  br label %43

43:                                               ; preds = %39, %36, %31
  %44 = phi i32 [ 1, %39 ], [ %32, %36 ], [ %32, %31 ]
  %45 = fcmp oeq float %7, 2.000000e+00
  %46 = fcmp oeq float %5, 2.000000e+00
  %47 = select i1 %46, i32 2, i32 1
  %48 = zext i1 %46 to i32
  %49 = select i1 %45, i32 %47, i32 %48
  store i32 %49, ptr %2, align 4, !tbaa !9
  store i32 %16, ptr %21, align 4, !tbaa !9
  store i32 %20, ptr %33, align 4, !tbaa !9
  ret i32 %44
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
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!7, !7, i64 0}
