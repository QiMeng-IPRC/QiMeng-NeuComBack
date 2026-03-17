; ModuleID = '../benchmarks/fine_grained/exebench/kernel1257.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1257.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @GetSipLine(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  store i32 1, ptr %3, align 4, !tbaa !5
  %5 = ptrtoint ptr %0 to i64
  %6 = sext i32 %1 to i64
  br label %7

7:                                                ; preds = %22, %4
  %8 = phi ptr [ %0, %4 ], [ %23, %22 ]
  %9 = load i8, ptr %8, align 1, !tbaa !9
  switch i8 %9, label %18 [
    i8 0, label %24
    i8 13, label %10
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp ne i8 %12, 10
  %14 = ptrtoint ptr %8 to i64
  %15 = sub i64 %14, %5
  %16 = icmp slt i64 %15, %6
  %17 = and i1 %13, %16
  br i1 %17, label %22, label %24

18:                                               ; preds = %7
  %19 = ptrtoint ptr %8 to i64
  %20 = sub i64 %19, %5
  %21 = icmp slt i64 %20, %6
  br i1 %21, label %22, label %24

22:                                               ; preds = %10, %18
  %23 = getelementptr inbounds i8, ptr %8, i64 1
  br label %7, !llvm.loop !10

24:                                               ; preds = %7, %10, %18
  %25 = getelementptr inbounds i8, ptr %8, i64 -1
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 44
  br i1 %27, label %28, label %51

28:                                               ; preds = %24, %34
  %29 = phi i8 [ %35, %34 ], [ %9, %24 ]
  %30 = phi ptr [ %36, %34 ], [ %8, %24 ]
  switch i8 %29, label %37 [
    i8 13, label %31
    i8 10, label %31
  ]

31:                                               ; preds = %28, %28
  store i8 32, ptr %30, align 1, !tbaa !9
  %32 = getelementptr inbounds i8, ptr %30, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !9
  br label %34

34:                                               ; preds = %31, %47
  %35 = phi i8 [ %33, %31 ], [ %38, %47 ]
  %36 = phi ptr [ %32, %31 ], [ %39, %47 ]
  br label %28, !llvm.loop !12

37:                                               ; preds = %28, %44
  %38 = phi i8 [ %46, %44 ], [ %29, %28 ]
  %39 = phi ptr [ %45, %44 ], [ %30, %28 ]
  switch i8 %38, label %40 [
    i8 13, label %47
    i8 10, label %47
    i8 0, label %47
  ]

40:                                               ; preds = %37
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %41, %5
  %43 = icmp slt i64 %42, %6
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %39, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !9
  br label %37, !llvm.loop !13

47:                                               ; preds = %37, %37, %37, %40
  %48 = getelementptr inbounds i8, ptr %39, i64 -1
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = icmp eq i8 %49, 44
  br i1 %50, label %34, label %51

51:                                               ; preds = %47, %24
  %52 = phi i8 [ %9, %24 ], [ %38, %47 ]
  %53 = phi ptr [ %8, %24 ], [ %39, %47 ]
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %54, %5
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i8 %52, 13
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = getelementptr inbounds i8, ptr %53, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = icmp eq i8 %60, 10
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  store i8 0, ptr %53, align 1, !tbaa !9
  store i8 0, ptr %59, align 1, !tbaa !9
  %63 = add nsw i32 %56, 2
  %64 = icmp eq i32 %63, %1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, ptr %3, align 4, !tbaa !5
  br label %66

66:                                               ; preds = %65, %62
  store i32 %63, ptr %2, align 4, !tbaa !5
  br label %67

67:                                               ; preds = %51, %58, %66
  %68 = phi i32 [ 1, %66 ], [ 0, %58 ], [ 0, %51 ]
  ret i32 %68
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
