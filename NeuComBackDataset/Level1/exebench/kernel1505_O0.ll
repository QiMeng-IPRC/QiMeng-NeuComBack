; ModuleID = '../benchmarks/fine_grained/exebench/kernel1505.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1505.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lulu_get_marker_array_extent(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %16 = load i32, ptr %5, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %148

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, ptr %19, i32 0, i32 0
  %21 = load i64, ptr %20, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, ptr %22, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = sub nsw i64 %21, %24
  store i64 %25, ptr %7, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, ptr %26, i32 0, i32 0
  %28 = load i64, ptr %27, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, ptr %29, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = add nsw i64 %28, %31
  store i64 %32, ptr %8, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, ptr %33, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, ptr %36, i32 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = sub nsw i64 %35, %38
  store i64 %39, ptr %9, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, ptr %40, i32 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, ptr %43, i32 0, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = add nsw i64 %42, %45
  store i64 %46, ptr %10, align 8
  store i32 1, ptr %11, align 4
  br label %47

47:                                               ; preds = %128, %18
  %48 = load i32, ptr %11, align 4
  %49 = load i32, ptr %5, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %131

51:                                               ; preds = %47
  %52 = load ptr, ptr %4, align 8
  %53 = load i32, ptr %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, ptr %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, ptr %55, i32 0, i32 0
  %57 = load i64, ptr %56, align 8
  %58 = load ptr, ptr %4, align 8
  %59 = load i32, ptr %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, ptr %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, ptr %61, i32 0, i32 1
  %63 = load i64, ptr %62, align 8
  %64 = sub nsw i64 %57, %63
  store i64 %64, ptr %12, align 8
  %65 = load ptr, ptr %4, align 8
  %66 = load i32, ptr %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, ptr %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, ptr %68, i32 0, i32 0
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %4, align 8
  %72 = load i32, ptr %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, ptr %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, ptr %74, i32 0, i32 1
  %76 = load i64, ptr %75, align 8
  %77 = add nsw i64 %70, %76
  store i64 %77, ptr %13, align 8
  %78 = load ptr, ptr %4, align 8
  %79 = load i32, ptr %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, ptr %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, ptr %81, i32 0, i32 2
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %4, align 8
  %85 = load i32, ptr %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, ptr %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, ptr %87, i32 0, i32 1
  %89 = load i64, ptr %88, align 8
  %90 = sub nsw i64 %83, %89
  store i64 %90, ptr %14, align 8
  %91 = load ptr, ptr %4, align 8
  %92 = load i32, ptr %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, ptr %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, ptr %94, i32 0, i32 2
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %4, align 8
  %98 = load i32, ptr %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, ptr %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, ptr %100, i32 0, i32 1
  %102 = load i64, ptr %101, align 8
  %103 = add nsw i64 %96, %102
  store i64 %103, ptr %15, align 8
  %104 = load i64, ptr %12, align 8
  %105 = load i64, ptr %7, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %51
  %108 = load i64, ptr %12, align 8
  store i64 %108, ptr %7, align 8
  br label %109

109:                                              ; preds = %107, %51
  %110 = load i64, ptr %13, align 8
  %111 = load i64, ptr %8, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i64, ptr %13, align 8
  store i64 %114, ptr %8, align 8
  br label %115

115:                                              ; preds = %113, %109
  %116 = load i64, ptr %14, align 8
  %117 = load i64, ptr %9, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i64, ptr %14, align 8
  store i64 %120, ptr %9, align 8
  br label %121

121:                                              ; preds = %119, %115
  %122 = load i64, ptr %15, align 8
  %123 = load i64, ptr %10, align 8
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i64, ptr %15, align 8
  store i64 %126, ptr %10, align 8
  br label %127

127:                                              ; preds = %125, %121
  br label %128

128:                                              ; preds = %127
  %129 = load i32, ptr %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %11, align 4
  br label %47, !llvm.loop !6

131:                                              ; preds = %47
  %132 = load i64, ptr %7, align 8
  %133 = load ptr, ptr %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, ptr %133, i32 0, i32 3
  store i64 %132, ptr %134, align 8
  %135 = load i64, ptr %9, align 8
  %136 = load ptr, ptr %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, ptr %136, i32 0, i32 2
  store i64 %135, ptr %137, align 8
  %138 = load i64, ptr %8, align 8
  %139 = load i64, ptr %7, align 8
  %140 = sub nsw i64 %138, %139
  %141 = load ptr, ptr %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, ptr %141, i32 0, i32 1
  store i64 %140, ptr %142, align 8
  %143 = load i64, ptr %10, align 8
  %144 = load i64, ptr %9, align 8
  %145 = sub nsw i64 %143, %144
  %146 = load ptr, ptr %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, ptr %146, i32 0, i32 0
  store i64 %145, ptr %147, align 8
  br label %148

148:                                              ; preds = %131, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
