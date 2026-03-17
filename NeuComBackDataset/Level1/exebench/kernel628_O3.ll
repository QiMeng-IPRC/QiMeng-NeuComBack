; ModuleID = '../benchmarks/fine_grained/exebench/kernel628.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel628.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @sqlite3Fts5UnicodeCatParse(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store i32 1, ptr %1, align 4, !tbaa !5
  %3 = load i8, ptr %0, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  switch i32 %4, label %82 [
    i32 67, label %5
    i32 76, label %15
    i32 77, label %27
    i32 78, label %36
    i32 80, label %45
    i32 83, label %59
    i32 90, label %70
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = sext i8 %7 to i32
  switch i32 %8, label %82 [
    i32 99, label %79
    i32 102, label %9
    i32 110, label %10
    i32 115, label %11
    i32 111, label %12
    i32 42, label %13
  ]

9:                                                ; preds = %5
  br label %79

10:                                               ; preds = %5
  br label %79

11:                                               ; preds = %5
  br label %79

12:                                               ; preds = %5
  br label %79

13:                                               ; preds = %5
  %14 = getelementptr inbounds i32, ptr %1, i64 1
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %14, align 4, !tbaa !5
  br label %79

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %0, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = sext i8 %17 to i32
  switch i32 %18, label %82 [
    i32 108, label %79
    i32 109, label %19
    i32 111, label %20
    i32 116, label %21
    i32 117, label %22
    i32 67, label %23
    i32 42, label %24
  ]

19:                                               ; preds = %15
  br label %79

20:                                               ; preds = %15
  br label %79

21:                                               ; preds = %15
  br label %79

22:                                               ; preds = %15
  br label %79

23:                                               ; preds = %15
  br label %79

24:                                               ; preds = %15
  %25 = getelementptr inbounds i32, ptr %1, i64 5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %25, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, ptr %1, i64 9
  store i32 1, ptr %26, align 4, !tbaa !5
  br label %79

27:                                               ; preds = %2
  %28 = getelementptr inbounds i8, ptr %0, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !9
  %30 = sext i8 %29 to i32
  switch i32 %30, label %82 [
    i32 99, label %79
    i32 101, label %31
    i32 110, label %32
    i32 42, label %33
  ]

31:                                               ; preds = %27
  br label %79

32:                                               ; preds = %27
  br label %79

33:                                               ; preds = %27
  %34 = getelementptr inbounds i32, ptr %1, i64 10
  store i32 1, ptr %34, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, ptr %1, i64 11
  store i32 1, ptr %35, align 4, !tbaa !5
  br label %79

36:                                               ; preds = %2
  %37 = getelementptr inbounds i8, ptr %0, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !9
  %39 = sext i8 %38 to i32
  switch i32 %39, label %82 [
    i32 100, label %79
    i32 108, label %40
    i32 111, label %41
    i32 42, label %42
  ]

40:                                               ; preds = %36
  br label %79

41:                                               ; preds = %36
  br label %79

42:                                               ; preds = %36
  %43 = getelementptr inbounds i32, ptr %1, i64 13
  store i32 1, ptr %43, align 4, !tbaa !5
  %44 = getelementptr inbounds i32, ptr %1, i64 14
  store i32 1, ptr %44, align 4, !tbaa !5
  br label %79

45:                                               ; preds = %2
  %46 = getelementptr inbounds i8, ptr %0, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !9
  %48 = sext i8 %47 to i32
  switch i32 %48, label %82 [
    i32 99, label %79
    i32 100, label %49
    i32 101, label %50
    i32 102, label %51
    i32 105, label %52
    i32 111, label %53
    i32 115, label %54
    i32 42, label %55
  ]

49:                                               ; preds = %45
  br label %79

50:                                               ; preds = %45
  br label %79

51:                                               ; preds = %45
  br label %79

52:                                               ; preds = %45
  br label %79

53:                                               ; preds = %45
  br label %79

54:                                               ; preds = %45
  br label %79

55:                                               ; preds = %45
  %56 = getelementptr inbounds i32, ptr %1, i64 16
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %56, align 4, !tbaa !5
  %57 = getelementptr inbounds i32, ptr %1, i64 20
  store i32 1, ptr %57, align 4, !tbaa !5
  %58 = getelementptr inbounds i32, ptr %1, i64 21
  store i32 1, ptr %58, align 4, !tbaa !5
  br label %79

59:                                               ; preds = %2
  %60 = getelementptr inbounds i8, ptr %0, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = sext i8 %61 to i32
  switch i32 %62, label %82 [
    i32 99, label %79
    i32 107, label %63
    i32 109, label %64
    i32 111, label %65
    i32 42, label %66
  ]

63:                                               ; preds = %59
  br label %79

64:                                               ; preds = %59
  br label %79

65:                                               ; preds = %59
  br label %79

66:                                               ; preds = %59
  %67 = getelementptr inbounds i32, ptr %1, i64 23
  store i32 1, ptr %67, align 4, !tbaa !5
  %68 = getelementptr inbounds i32, ptr %1, i64 24
  store i32 1, ptr %68, align 4, !tbaa !5
  %69 = getelementptr inbounds i32, ptr %1, i64 25
  store i32 1, ptr %69, align 4, !tbaa !5
  br label %79

70:                                               ; preds = %2
  %71 = getelementptr inbounds i8, ptr %0, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !9
  %73 = sext i8 %72 to i32
  switch i32 %73, label %82 [
    i32 108, label %79
    i32 112, label %74
    i32 115, label %75
    i32 42, label %76
  ]

74:                                               ; preds = %70
  br label %79

75:                                               ; preds = %70
  br label %79

76:                                               ; preds = %70
  %77 = getelementptr inbounds i32, ptr %1, i64 27
  store i32 1, ptr %77, align 4, !tbaa !5
  %78 = getelementptr inbounds i32, ptr %1, i64 28
  store i32 1, ptr %78, align 4, !tbaa !5
  br label %79

79:                                               ; preds = %70, %59, %45, %36, %27, %15, %5, %74, %75, %76, %63, %64, %65, %66, %49, %50, %51, %52, %53, %54, %55, %40, %41, %42, %31, %32, %33, %19, %20, %21, %22, %23, %24, %9, %10, %11, %12, %13
  %80 = phi i64 [ 31, %13 ], [ 31, %12 ], [ 4, %11 ], [ 3, %10 ], [ 2, %9 ], [ 30, %24 ], [ 30, %23 ], [ 9, %22 ], [ 8, %21 ], [ 7, %20 ], [ 6, %19 ], [ 12, %33 ], [ 12, %32 ], [ 11, %31 ], [ 15, %42 ], [ 15, %41 ], [ 14, %40 ], [ 22, %55 ], [ 22, %54 ], [ 21, %53 ], [ 20, %52 ], [ 19, %51 ], [ 18, %50 ], [ 17, %49 ], [ 26, %66 ], [ 26, %65 ], [ 25, %64 ], [ 24, %63 ], [ 29, %76 ], [ 29, %75 ], [ 28, %74 ], [ 1, %5 ], [ 5, %15 ], [ 10, %27 ], [ 13, %36 ], [ 16, %45 ], [ 23, %59 ], [ 27, %70 ]
  %81 = getelementptr inbounds i32, ptr %1, i64 %80
  store i32 1, ptr %81, align 4, !tbaa !5
  br label %82

82:                                               ; preds = %79, %2, %70, %59, %45, %36, %27, %15, %5
  %83 = phi i32 [ 1, %5 ], [ 1, %15 ], [ 1, %27 ], [ 1, %36 ], [ 1, %45 ], [ 1, %59 ], [ 1, %70 ], [ 0, %2 ], [ 0, %79 ]
  ret i32 %83
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
