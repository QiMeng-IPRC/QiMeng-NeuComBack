; ModuleID = '../benchmarks/fine_grained/exebench/kernel1339.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1339.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @drotmg_(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load i64, ptr %0, align 8, !tbaa !5
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %5
  %9 = load i64, ptr %1, align 8, !tbaa !5
  %10 = load i64, ptr %3, align 8, !tbaa !5
  %11 = mul nsw i64 %10, %9
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %170, label %13

13:                                               ; preds = %8
  %14 = load i64, ptr %2, align 8, !tbaa !5
  %15 = mul nsw i64 %14, %6
  %16 = mul nsw i64 %11, %10
  %17 = mul nsw i64 %15, %14
  %18 = tail call i64 @llvm.abs.i64(i64 %17, i1 true)
  %19 = tail call i64 @llvm.abs.i64(i64 %16, i1 true)
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = sdiv i64 %10, %14
  %23 = sdiv i64 %11, %15
  %24 = mul i64 %23, %22
  %25 = icmp ugt i64 %24, 9223372036854775806
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = add nuw nsw i64 %24, 1
  %28 = sub nsw i64 0, %22
  %29 = udiv i64 %6, %27
  store i64 %29, ptr %0, align 8, !tbaa !5
  %30 = load i64, ptr %1, align 8, !tbaa !5
  %31 = sdiv i64 %30, %27
  store i64 %31, ptr %1, align 8, !tbaa !5
  br label %63

32:                                               ; preds = %13
  %33 = icmp slt i64 %16, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %32
  %35 = sdiv i64 %15, %11
  %36 = sdiv i64 %14, %10
  %37 = mul nsw i64 %36, %35
  %38 = add nsw i64 %37, 1
  %39 = sdiv i64 %9, %38
  %40 = sdiv i64 %6, %38
  store i64 %40, ptr %1, align 8, !tbaa !5
  store i64 %39, ptr %0, align 8, !tbaa !5
  br label %63

41:                                               ; preds = %5, %21, %32
  store i64 0, ptr %0, align 8, !tbaa !5
  store i64 0, ptr %1, align 8, !tbaa !5
  store i64 0, ptr %2, align 8, !tbaa !5
  br label %154

42:                                               ; preds = %126, %90, %81
  %43 = phi i64 [ %74, %81 ], [ %92, %90 ], [ %128, %126 ]
  %44 = phi i64 [ %75, %81 ], [ %93, %90 ], [ %129, %126 ]
  %45 = phi i64 [ %76, %81 ], [ %94, %90 ], [ %130, %126 ]
  %46 = phi i64 [ %77, %81 ], [ %95, %90 ], [ %131, %126 ]
  %47 = phi i32 [ 0, %81 ], [ 1, %90 ], [ 3, %126 ]
  %48 = phi i64 [ %78, %81 ], [ %96, %90 ], [ %132, %126 ]
  %49 = icmp sgt i64 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = icmp eq i64 %48, 0
  %52 = select i1 %51, i64 1, i64 %43
  %53 = select i1 %51, i64 %44, i64 1
  %54 = select i1 %51, i64 %45, i64 -1
  %55 = select i1 %51, i64 1, i64 %46
  br label %56

56:                                               ; preds = %50, %42
  %57 = phi i64 [ %43, %42 ], [ %52, %50 ]
  %58 = phi i64 [ %44, %42 ], [ %53, %50 ]
  %59 = phi i64 [ %45, %42 ], [ %54, %50 ]
  %60 = phi i64 [ %46, %42 ], [ %55, %50 ]
  %61 = phi i64 [ %48, %42 ], [ -1, %50 ]
  switch i32 %47, label %62 [
    i32 0, label %83
    i32 1, label %98
    i32 2, label %121
    i32 3, label %135
  ]

62:                                               ; preds = %56
  unreachable

63:                                               ; preds = %34, %26
  %64 = phi ptr [ %3, %34 ], [ %2, %26 ]
  %65 = phi i64 [ %38, %34 ], [ %27, %26 ]
  %66 = phi i64 [ %35, %34 ], [ undef, %26 ]
  %67 = phi i64 [ undef, %34 ], [ %23, %26 ]
  %68 = phi i64 [ undef, %34 ], [ %28, %26 ]
  %69 = phi i64 [ %36, %34 ], [ undef, %26 ]
  %70 = phi i64 [ 1, %34 ], [ 0, %26 ]
  %71 = load i64, ptr %64, align 8, !tbaa !5
  %72 = mul nsw i64 %71, %65
  store i64 %72, ptr %2, align 8, !tbaa !5
  br label %73

73:                                               ; preds = %83, %63
  %74 = phi i64 [ %66, %63 ], [ %88, %83 ]
  %75 = phi i64 [ %67, %63 ], [ %89, %83 ]
  %76 = phi i64 [ %68, %63 ], [ %59, %83 ]
  %77 = phi i64 [ %69, %63 ], [ %60, %83 ]
  %78 = phi i64 [ %70, %63 ], [ %61, %83 ]
  %79 = load i64, ptr %0, align 8, !tbaa !5
  %80 = icmp slt i64 %79, 1
  br i1 %80, label %81, label %90

81:                                               ; preds = %73
  %82 = icmp eq i64 %79, 0
  br i1 %82, label %106, label %42

83:                                               ; preds = %56
  %84 = load i64, ptr %0, align 8, !tbaa !5
  %85 = shl nsw i64 %84, 24
  store i64 %85, ptr %0, align 8, !tbaa !5
  %86 = load i64, ptr %2, align 8, !tbaa !5
  %87 = sdiv i64 %86, 4096
  store i64 %87, ptr %2, align 8, !tbaa !5
  %88 = sdiv i64 %57, 4096
  %89 = sdiv i64 %58, 4096
  br label %73

90:                                               ; preds = %73, %98
  %91 = phi i64 [ %79, %73 ], [ %105, %98 ]
  %92 = phi i64 [ %74, %73 ], [ %103, %98 ]
  %93 = phi i64 [ %75, %73 ], [ %104, %98 ]
  %94 = phi i64 [ %76, %73 ], [ %59, %98 ]
  %95 = phi i64 [ %77, %73 ], [ %60, %98 ]
  %96 = phi i64 [ %78, %73 ], [ %61, %98 ]
  %97 = icmp sgt i64 %91, 16777215
  br i1 %97, label %42, label %106

98:                                               ; preds = %56
  %99 = load i64, ptr %0, align 8, !tbaa !5
  %100 = sdiv i64 %99, 16777216
  store i64 %100, ptr %0, align 8, !tbaa !5
  %101 = load i64, ptr %2, align 8, !tbaa !5
  %102 = shl nsw i64 %101, 12
  store i64 %102, ptr %2, align 8, !tbaa !5
  %103 = shl nsw i64 %57, 12
  %104 = shl nsw i64 %58, 12
  %105 = load i64, ptr %0, align 8, !tbaa !5
  br label %90

106:                                              ; preds = %90, %81
  %107 = phi i64 [ %74, %81 ], [ %92, %90 ]
  %108 = phi i64 [ %75, %81 ], [ %93, %90 ]
  %109 = phi i64 [ %76, %81 ], [ %94, %90 ]
  %110 = phi i64 [ %77, %81 ], [ %95, %90 ]
  %111 = phi i64 [ %78, %81 ], [ %96, %90 ]
  %112 = load i64, ptr %1, align 8, !tbaa !5
  br label %113

113:                                              ; preds = %121, %106
  %114 = phi i64 [ %123, %121 ], [ %112, %106 ]
  %115 = phi i64 [ %57, %121 ], [ %107, %106 ]
  %116 = phi i64 [ %58, %121 ], [ %108, %106 ]
  %117 = phi i64 [ %124, %121 ], [ %109, %106 ]
  %118 = phi i64 [ %125, %121 ], [ %110, %106 ]
  %119 = phi i64 [ %61, %121 ], [ %111, %106 ]
  %120 = icmp eq i64 %114, 0
  br i1 %120, label %140, label %126

121:                                              ; preds = %56
  %122 = load i64, ptr %1, align 8, !tbaa !5
  %123 = shl nsw i64 %122, 24
  store i64 %123, ptr %1, align 8, !tbaa !5
  %124 = sdiv i64 %59, 4096
  %125 = sdiv i64 %60, 4096
  br label %113

126:                                              ; preds = %113, %135
  %127 = phi i64 [ %137, %135 ], [ %114, %113 ]
  %128 = phi i64 [ %57, %135 ], [ %115, %113 ]
  %129 = phi i64 [ %58, %135 ], [ %116, %113 ]
  %130 = phi i64 [ %138, %135 ], [ %117, %113 ]
  %131 = phi i64 [ %139, %135 ], [ %118, %113 ]
  %132 = phi i64 [ %61, %135 ], [ %119, %113 ]
  %133 = tail call i64 @llvm.abs.i64(i64 %127, i1 true)
  %134 = icmp ugt i64 %133, 16777215
  br i1 %134, label %42, label %140

135:                                              ; preds = %56
  %136 = load i64, ptr %1, align 8, !tbaa !5
  %137 = sdiv i64 %136, 16777216
  store i64 %137, ptr %1, align 8, !tbaa !5
  %138 = shl nsw i64 %59, 12
  %139 = shl nsw i64 %60, 12
  br label %126

140:                                              ; preds = %113, %126
  %141 = phi i64 [ %128, %126 ], [ %115, %113 ]
  %142 = phi i64 [ %129, %126 ], [ %116, %113 ]
  %143 = phi i64 [ %130, %126 ], [ %117, %113 ]
  %144 = phi i64 [ %131, %126 ], [ %118, %113 ]
  %145 = phi i64 [ %132, %126 ], [ %119, %113 ]
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = icmp ne i64 %145, 0
  %149 = select i1 %148, i64 1, i64 2
  %150 = select i1 %148, i64 %141, i64 %143
  %151 = select i1 %148, i64 4, i64 3
  %152 = select i1 %148, i64 %144, i64 %142
  %153 = zext i1 %148 to i64
  br label %162

154:                                              ; preds = %41, %140
  %155 = phi i64 [ -1, %41 ], [ %145, %140 ]
  %156 = phi i64 [ 0, %41 ], [ %144, %140 ]
  %157 = phi i64 [ 0, %41 ], [ %143, %140 ]
  %158 = phi i64 [ 0, %41 ], [ %142, %140 ]
  %159 = phi i64 [ 0, %41 ], [ %141, %140 ]
  %160 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 %159, ptr %160, align 8, !tbaa !5
  %161 = getelementptr inbounds i64, ptr %4, i64 2
  store i64 %157, ptr %161, align 8, !tbaa !5
  br label %162

162:                                              ; preds = %147, %154
  %163 = phi i64 [ 3, %154 ], [ %149, %147 ]
  %164 = phi i64 [ %158, %154 ], [ %150, %147 ]
  %165 = phi i64 [ 4, %154 ], [ %151, %147 ]
  %166 = phi i64 [ %156, %154 ], [ %152, %147 ]
  %167 = phi i64 [ %155, %154 ], [ %153, %147 ]
  %168 = getelementptr inbounds i64, ptr %4, i64 %163
  store i64 %164, ptr %168, align 8, !tbaa !5
  %169 = getelementptr inbounds i64, ptr %4, i64 %165
  store i64 %166, ptr %169, align 8, !tbaa !5
  br label %170

170:                                              ; preds = %162, %8
  %171 = phi i64 [ -2, %8 ], [ %167, %162 ]
  store i64 %171, ptr %4, align 8, !tbaa !5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
