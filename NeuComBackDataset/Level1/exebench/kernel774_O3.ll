; ModuleID = '../benchmarks/fine_grained/exebench/kernel774.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel774.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @Clock_Epoch2YearDay(i64 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = add i64 %0, -146097
  %5 = icmp ult i64 %4, -292193
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = sdiv i64 %0, 146097
  %8 = mul nsw i64 %7, 400
  %9 = add nsw i64 %8, 1970
  %10 = mul nsw i64 %7, -146097
  %11 = add i64 %10, %0
  br label %12

12:                                               ; preds = %3, %6
  %13 = phi i64 [ %11, %6 ], [ %0, %3 ]
  %14 = phi i64 [ %9, %6 ], [ 1970, %3 ]
  %15 = icmp sgt i64 %13, -1
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = icmp ult i64 %13, -365
  br i1 %17, label %68, label %105

18:                                               ; preds = %12
  %19 = icmp ugt i64 %13, 365
  br i1 %19, label %20, label %52

20:                                               ; preds = %18, %46
  %21 = phi i64 [ %49, %46 ], [ %14, %18 ]
  %22 = phi i64 [ %50, %46 ], [ %13, %18 ]
  %23 = srem i64 %21, 400
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = and i64 %21, 3
  %27 = icmp ne i64 %26, 0
  %28 = srem i64 %21, 100
  %29 = icmp eq i64 %28, 0
  %30 = or i1 %27, %29
  br i1 %30, label %46, label %31

31:                                               ; preds = %25, %20
  %32 = icmp sgt i64 %22, 1460
  br i1 %32, label %46, label %33

33:                                               ; preds = %31
  %34 = icmp sgt i64 %22, 1095
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = add nsw i64 %21, 3
  %37 = add nsw i64 %22, -1096
  br label %121

38:                                               ; preds = %33
  %39 = icmp sgt i64 %22, 730
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = add nsw i64 %21, 2
  %42 = add nsw i64 %22, -731
  br label %121

43:                                               ; preds = %38
  %44 = add nsw i64 %21, 1
  %45 = add nsw i64 %22, -366
  br label %121

46:                                               ; preds = %25, %31
  %47 = phi i64 [ 4, %31 ], [ 1, %25 ]
  %48 = phi i64 [ -1461, %31 ], [ -365, %25 ]
  %49 = add nsw i64 %21, %47
  %50 = add nsw i64 %22, %48
  %51 = icmp sgt i64 %50, 365
  br i1 %51, label %20, label %52, !llvm.loop !5

52:                                               ; preds = %46, %18
  %53 = phi i64 [ %13, %18 ], [ %50, %46 ]
  %54 = phi i64 [ %14, %18 ], [ %49, %46 ]
  %55 = icmp eq i64 %53, 365
  br i1 %55, label %56, label %121

56:                                               ; preds = %52
  %57 = srem i64 %54, 400
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %121, label %59

59:                                               ; preds = %56
  %60 = and i64 %54, 3
  %61 = icmp ne i64 %60, 0
  %62 = srem i64 %54, 100
  %63 = icmp eq i64 %62, 0
  %64 = or i1 %61, %63
  %65 = select i1 %64, i64 0, i64 365
  %66 = zext i1 %64 to i64
  %67 = add nsw i64 %54, %66
  br label %121

68:                                               ; preds = %16, %96
  %69 = phi i64 [ %98, %96 ], [ %14, %16 ]
  %70 = phi i64 [ %99, %96 ], [ %13, %16 ]
  %71 = add nsw i64 %69, -1
  %72 = srem i64 %71, 400
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = and i64 %71, 3
  %76 = icmp ne i64 %75, 0
  %77 = srem i64 %71, 100
  %78 = icmp eq i64 %77, 0
  %79 = or i1 %76, %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %74, %68
  %81 = icmp slt i64 %70, -1460
  br i1 %81, label %82, label %84

82:                                               ; preds = %80
  %83 = add nsw i64 %69, -4
  br label %96

84:                                               ; preds = %80
  %85 = icmp slt i64 %70, -1095
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = add nsw i64 %69, -3
  %88 = add nsw i64 %70, 1096
  br label %101

89:                                               ; preds = %84
  %90 = icmp slt i64 %70, -730
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = add nsw i64 %69, -2
  %93 = add nsw i64 %70, 731
  br label %101

94:                                               ; preds = %89
  %95 = add nsw i64 %70, 366
  br label %101

96:                                               ; preds = %74, %82
  %97 = phi i64 [ 1461, %82 ], [ 365, %74 ]
  %98 = phi i64 [ %83, %82 ], [ %71, %74 ]
  %99 = add nsw i64 %70, %97
  %100 = icmp slt i64 %99, -365
  br i1 %100, label %68, label %101, !llvm.loop !7

101:                                              ; preds = %96, %94, %91, %86
  %102 = phi i64 [ %95, %94 ], [ %93, %91 ], [ %88, %86 ], [ %99, %96 ]
  %103 = phi i64 [ %71, %94 ], [ %92, %91 ], [ %87, %86 ], [ %98, %96 ]
  %104 = icmp slt i64 %102, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %16, %101
  %106 = phi i64 [ %103, %101 ], [ %14, %16 ]
  %107 = phi i64 [ %102, %101 ], [ %13, %16 ]
  %108 = add nsw i64 %106, -1
  %109 = srem i64 %108, 400
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = and i64 %108, 3
  %113 = icmp ne i64 %112, 0
  %114 = srem i64 %108, 100
  %115 = icmp eq i64 %114, 0
  %116 = or i1 %113, %115
  br i1 %116, label %119, label %117

117:                                              ; preds = %111, %105
  %118 = add nsw i64 %107, 366
  br label %121

119:                                              ; preds = %111
  %120 = add nsw i64 %107, 365
  br label %121

121:                                              ; preds = %35, %40, %43, %59, %101, %119, %117, %52, %56
  %122 = phi i64 [ 365, %56 ], [ %53, %52 ], [ %118, %117 ], [ %120, %119 ], [ 0, %101 ], [ %65, %59 ], [ %45, %43 ], [ %42, %40 ], [ %37, %35 ]
  %123 = phi i64 [ %54, %56 ], [ %54, %52 ], [ %108, %117 ], [ %108, %119 ], [ %103, %101 ], [ %67, %59 ], [ %44, %43 ], [ %41, %40 ], [ %36, %35 ]
  %124 = trunc i64 %122 to i32
  store i32 %124, ptr %1, align 4, !tbaa !8
  store i64 %123, ptr %2, align 8, !tbaa !12
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !10, i64 0}
