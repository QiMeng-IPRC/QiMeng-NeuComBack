; ModuleID = '../benchmarks/fine_grained/exebench/kernel712.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel712.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sn_inrange() local_unnamed_addr #0 {
  %1 = load ptr, ptr @buf, align 8, !tbaa !5
  %2 = load i32, ptr %1, align 4, !tbaa !9
  %3 = icmp sgt i32 %2, 99
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = add nsw i32 %2, -99
  br label %13

6:                                                ; preds = %0
  %7 = icmp slt i32 %2, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = sub nsw i32 0, %2
  store i32 %9, ptr %1, align 4, !tbaa !9
  %10 = icmp ugt i32 %9, 99
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = sub nsw i32 -99, %2
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi i32 [ %5, %4 ], [ %12, %11 ]
  store i32 %14, ptr %1, align 4, !tbaa !9
  br label %15

15:                                               ; preds = %13, %6, %8
  %16 = getelementptr inbounds i32, ptr %1, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !9
  %18 = icmp sgt i32 %17, 99
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = icmp slt i32 %17, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = sub nsw i32 0, %17
  store i32 %22, ptr %16, align 4, !tbaa !9
  %23 = icmp ugt i32 %22, 99
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = sub nsw i32 -99, %17
  br label %28

26:                                               ; preds = %15
  %27 = add nsw i32 %17, -99
  br label %28

28:                                               ; preds = %24, %26
  %29 = phi i32 [ %27, %26 ], [ %25, %24 ]
  store i32 %29, ptr %16, align 4, !tbaa !9
  br label %30

30:                                               ; preds = %28, %21, %19
  %31 = getelementptr inbounds i32, ptr %1, i64 2
  %32 = load i32, ptr %31, align 4, !tbaa !9
  %33 = icmp sgt i32 %32, 99
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = icmp slt i32 %32, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %32
  store i32 %37, ptr %31, align 4, !tbaa !9
  %38 = icmp ugt i32 %37, 99
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = sub nsw i32 -99, %32
  br label %43

41:                                               ; preds = %30
  %42 = add nsw i32 %32, -99
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi i32 [ %42, %41 ], [ %40, %39 ]
  store i32 %44, ptr %31, align 4, !tbaa !9
  br label %45

45:                                               ; preds = %43, %36, %34
  %46 = getelementptr inbounds i32, ptr %1, i64 3
  %47 = load i32, ptr %46, align 4, !tbaa !9
  %48 = icmp sgt i32 %47, 99
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = icmp slt i32 %47, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %49
  %52 = sub nsw i32 0, %47
  store i32 %52, ptr %46, align 4, !tbaa !9
  %53 = icmp ugt i32 %52, 99
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = sub nsw i32 -99, %47
  br label %58

56:                                               ; preds = %45
  %57 = add nsw i32 %47, -99
  br label %58

58:                                               ; preds = %54, %56
  %59 = phi i32 [ %57, %56 ], [ %55, %54 ]
  store i32 %59, ptr %46, align 4, !tbaa !9
  br label %60

60:                                               ; preds = %58, %51, %49
  %61 = getelementptr inbounds i32, ptr %1, i64 4
  %62 = load i32, ptr %61, align 4, !tbaa !9
  %63 = icmp sgt i32 %62, 99
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = icmp slt i32 %62, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %64
  %67 = sub nsw i32 0, %62
  store i32 %67, ptr %61, align 4, !tbaa !9
  %68 = icmp ugt i32 %67, 99
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = sub nsw i32 -99, %62
  br label %73

71:                                               ; preds = %60
  %72 = add nsw i32 %62, -99
  br label %73

73:                                               ; preds = %69, %71
  %74 = phi i32 [ %72, %71 ], [ %70, %69 ]
  store i32 %74, ptr %61, align 4, !tbaa !9
  br label %75

75:                                               ; preds = %73, %66, %64
  %76 = getelementptr inbounds i32, ptr %1, i64 5
  %77 = load i32, ptr %76, align 4, !tbaa !9
  %78 = icmp sgt i32 %77, 99
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = icmp slt i32 %77, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %79
  %82 = sub nsw i32 0, %77
  store i32 %82, ptr %76, align 4, !tbaa !9
  %83 = icmp ugt i32 %82, 99
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = sub nsw i32 -99, %77
  br label %88

86:                                               ; preds = %75
  %87 = add nsw i32 %77, -99
  br label %88

88:                                               ; preds = %84, %86
  %89 = phi i32 [ %87, %86 ], [ %85, %84 ]
  store i32 %89, ptr %76, align 4, !tbaa !9
  br label %90

90:                                               ; preds = %88, %81, %79
  %91 = getelementptr inbounds i32, ptr %1, i64 6
  %92 = load i32, ptr %91, align 4, !tbaa !9
  %93 = icmp sgt i32 %92, 99
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = icmp slt i32 %92, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %94
  %97 = sub nsw i32 0, %92
  store i32 %97, ptr %91, align 4, !tbaa !9
  %98 = icmp ugt i32 %97, 99
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = sub nsw i32 -99, %92
  br label %103

101:                                              ; preds = %90
  %102 = add nsw i32 %92, -99
  br label %103

103:                                              ; preds = %99, %101
  %104 = phi i32 [ %102, %101 ], [ %100, %99 ]
  store i32 %104, ptr %91, align 4, !tbaa !9
  br label %105

105:                                              ; preds = %103, %96, %94
  %106 = getelementptr inbounds i32, ptr %1, i64 7
  %107 = load i32, ptr %106, align 4, !tbaa !9
  %108 = icmp sgt i32 %107, 99
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = icmp slt i32 %107, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %109
  %112 = sub nsw i32 0, %107
  store i32 %112, ptr %106, align 4, !tbaa !9
  %113 = icmp ugt i32 %112, 99
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = sub nsw i32 -99, %107
  br label %118

116:                                              ; preds = %105
  %117 = add nsw i32 %107, -99
  br label %118

118:                                              ; preds = %114, %116
  %119 = phi i32 [ %117, %116 ], [ %115, %114 ]
  store i32 %119, ptr %106, align 4, !tbaa !9
  br label %120

120:                                              ; preds = %118, %111, %109
  ret void
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
