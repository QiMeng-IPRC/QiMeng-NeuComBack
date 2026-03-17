; ModuleID = '../benchmarks/fine_grained/exebench/kernel138.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel138.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @get_next_word_lm(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %100

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !tbaa !5
  %8 = add i8 %7, -97
  %9 = icmp ult i8 %8, 26
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = add nsw i8 %7, -32
  store i8 %11, ptr %0, align 1, !tbaa !5
  br label %25

12:                                               ; preds = %6
  %13 = icmp eq i8 %7, 10
  br i1 %13, label %14, label %25

14:                                               ; preds = %12
  store i32 1, ptr %3, align 4, !tbaa !8
  br label %101

15:                                               ; preds = %94, %98
  store i32 7, ptr %3, align 4, !tbaa !8
  br label %101

16:                                               ; preds = %89, %78, %67, %56, %45, %34
  %17 = phi i32 [ 1, %34 ], [ 2, %45 ], [ 3, %56 ], [ 4, %67 ], [ 5, %78 ], [ 6, %89 ]
  %18 = add nuw nsw i32 %17, 1
  store i32 %18, ptr %3, align 4, !tbaa !8
  %19 = add nsw i32 %17, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = icmp eq i8 %22, 13
  %24 = select i1 %23, i32 %19, i32 %17
  br label %101

25:                                               ; preds = %10, %12
  %26 = getelementptr inbounds i8, ptr %0, i64 1
  %27 = icmp eq i32 %1, 1
  br i1 %27, label %100, label %28, !llvm.loop !10

28:                                               ; preds = %25
  %29 = load i8, ptr %26, align 1, !tbaa !5
  %30 = add i8 %29, -97
  %31 = icmp ult i8 %30, 26
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = add nsw i8 %29, -32
  store i8 %33, ptr %26, align 1, !tbaa !5
  br label %36

34:                                               ; preds = %28
  %35 = icmp eq i8 %29, 10
  br i1 %35, label %16, label %36

36:                                               ; preds = %32, %34
  %37 = getelementptr inbounds i8, ptr %0, i64 2
  %38 = icmp eq i32 %1, 2
  br i1 %38, label %100, label %39, !llvm.loop !10

39:                                               ; preds = %36
  %40 = load i8, ptr %37, align 1, !tbaa !5
  %41 = add i8 %40, -97
  %42 = icmp ult i8 %41, 26
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = add nsw i8 %40, -32
  store i8 %44, ptr %37, align 1, !tbaa !5
  br label %47

45:                                               ; preds = %39
  %46 = icmp eq i8 %40, 10
  br i1 %46, label %16, label %47

47:                                               ; preds = %43, %45
  %48 = getelementptr inbounds i8, ptr %0, i64 3
  %49 = icmp eq i32 %1, 3
  br i1 %49, label %100, label %50, !llvm.loop !10

50:                                               ; preds = %47
  %51 = load i8, ptr %48, align 1, !tbaa !5
  %52 = add i8 %51, -97
  %53 = icmp ult i8 %52, 26
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = add nsw i8 %51, -32
  store i8 %55, ptr %48, align 1, !tbaa !5
  br label %58

56:                                               ; preds = %50
  %57 = icmp eq i8 %51, 10
  br i1 %57, label %16, label %58

58:                                               ; preds = %54, %56
  %59 = getelementptr inbounds i8, ptr %0, i64 4
  %60 = icmp eq i32 %1, 4
  br i1 %60, label %100, label %61, !llvm.loop !10

61:                                               ; preds = %58
  %62 = load i8, ptr %59, align 1, !tbaa !5
  %63 = add i8 %62, -97
  %64 = icmp ult i8 %63, 26
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = add nsw i8 %62, -32
  store i8 %66, ptr %59, align 1, !tbaa !5
  br label %69

67:                                               ; preds = %61
  %68 = icmp eq i8 %62, 10
  br i1 %68, label %16, label %69

69:                                               ; preds = %65, %67
  %70 = getelementptr inbounds i8, ptr %0, i64 5
  %71 = icmp eq i32 %1, 5
  br i1 %71, label %100, label %72, !llvm.loop !10

72:                                               ; preds = %69
  %73 = load i8, ptr %70, align 1, !tbaa !5
  %74 = add i8 %73, -97
  %75 = icmp ult i8 %74, 26
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = add nsw i8 %73, -32
  store i8 %77, ptr %70, align 1, !tbaa !5
  br label %80

78:                                               ; preds = %72
  %79 = icmp eq i8 %73, 10
  br i1 %79, label %16, label %80

80:                                               ; preds = %76, %78
  %81 = getelementptr inbounds i8, ptr %0, i64 6
  %82 = icmp eq i32 %1, 6
  br i1 %82, label %100, label %83, !llvm.loop !10

83:                                               ; preds = %80
  %84 = load i8, ptr %81, align 1, !tbaa !5
  %85 = add i8 %84, -97
  %86 = icmp ult i8 %85, 26
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = add nsw i8 %84, -32
  store i8 %88, ptr %81, align 1, !tbaa !5
  br label %91

89:                                               ; preds = %83
  %90 = icmp eq i8 %84, 10
  br i1 %90, label %16, label %91

91:                                               ; preds = %87, %89
  %92 = getelementptr inbounds i8, ptr %0, i64 7
  %93 = icmp eq i32 %1, 7
  br i1 %93, label %100, label %94, !llvm.loop !10

94:                                               ; preds = %91
  %95 = load i8, ptr %92, align 1, !tbaa !5
  %96 = add i8 %95, -97
  %97 = icmp ult i8 %96, 26
  br i1 %97, label %98, label %15

98:                                               ; preds = %94
  %99 = add nsw i8 %95, -32
  store i8 %99, ptr %92, align 1, !tbaa !5
  br label %15

100:                                              ; preds = %25, %36, %47, %58, %69, %80, %91, %4
  store i32 %1, ptr %3, align 4, !tbaa !8
  br label %101

101:                                              ; preds = %16, %14, %15, %100
  %102 = phi i32 [ 7, %15 ], [ %1, %100 ], [ %24, %16 ], [ 0, %14 ]
  store i32 %102, ptr %2, align 4, !tbaa !8
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
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
