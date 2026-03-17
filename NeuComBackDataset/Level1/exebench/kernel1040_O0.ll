; ModuleID = '../benchmarks/fine_grained/exebench/kernel1040.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1040.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dct4x4dc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %4, align 4
  br label %14

14:                                               ; preds = %106, %1
  %15 = load i32, ptr %4, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %109

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8
  %19 = load i32, ptr %4, align 4
  %20 = mul nsw i32 %19, 4
  %21 = add nsw i32 %20, 0
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %18, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %2, align 8
  %26 = load i32, ptr %4, align 4
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %25, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %24, %31
  store i32 %32, ptr %5, align 4
  %33 = load ptr, ptr %2, align 8
  %34 = load i32, ptr %4, align 4
  %35 = mul nsw i32 %34, 4
  %36 = add nsw i32 %35, 0
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %33, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %2, align 8
  %41 = load i32, ptr %4, align 4
  %42 = mul nsw i32 %41, 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %40, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = sub nsw i32 %39, %46
  store i32 %47, ptr %6, align 4
  %48 = load ptr, ptr %2, align 8
  %49 = load i32, ptr %4, align 4
  %50 = mul nsw i32 %49, 4
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %48, i64 %52
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %2, align 8
  %56 = load i32, ptr %4, align 4
  %57 = mul nsw i32 %56, 4
  %58 = add nsw i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %55, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = add nsw i32 %54, %61
  store i32 %62, ptr %7, align 4
  %63 = load ptr, ptr %2, align 8
  %64 = load i32, ptr %4, align 4
  %65 = mul nsw i32 %64, 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %63, i64 %67
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %2, align 8
  %71 = load i32, ptr %4, align 4
  %72 = mul nsw i32 %71, 4
  %73 = add nsw i32 %72, 3
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %70, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = sub nsw i32 %69, %76
  store i32 %77, ptr %8, align 4
  %78 = load i32, ptr %5, align 4
  %79 = load i32, ptr %7, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, ptr %4, align 4
  %82 = add nsw i32 0, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %83
  store i32 %80, ptr %84, align 4
  %85 = load i32, ptr %5, align 4
  %86 = load i32, ptr %7, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, ptr %4, align 4
  %89 = add nsw i32 4, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %90
  store i32 %87, ptr %91, align 4
  %92 = load i32, ptr %6, align 4
  %93 = load i32, ptr %8, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, ptr %4, align 4
  %96 = add nsw i32 8, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %97
  store i32 %94, ptr %98, align 4
  %99 = load i32, ptr %6, align 4
  %100 = load i32, ptr %8, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, ptr %4, align 4
  %103 = add nsw i32 12, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %104
  store i32 %101, ptr %105, align 4
  br label %106

106:                                              ; preds = %17
  %107 = load i32, ptr %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %4, align 4
  br label %14, !llvm.loop !6

109:                                              ; preds = %14
  store i32 0, ptr %9, align 4
  br label %110

110:                                              ; preds = %210, %109
  %111 = load i32, ptr %9, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %213

113:                                              ; preds = %110
  %114 = load i32, ptr %9, align 4
  %115 = mul nsw i32 %114, 4
  %116 = add nsw i32 %115, 0
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4
  %120 = load i32, ptr %9, align 4
  %121 = mul nsw i32 %120, 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4
  %126 = add nsw i32 %119, %125
  store i32 %126, ptr %10, align 4
  %127 = load i32, ptr %9, align 4
  %128 = mul nsw i32 %127, 4
  %129 = add nsw i32 %128, 0
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr %9, align 4
  %134 = mul nsw i32 %133, 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4
  %139 = sub nsw i32 %132, %138
  store i32 %139, ptr %11, align 4
  %140 = load i32, ptr %9, align 4
  %141 = mul nsw i32 %140, 4
  %142 = add nsw i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4
  %146 = load i32, ptr %9, align 4
  %147 = mul nsw i32 %146, 4
  %148 = add nsw i32 %147, 3
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4
  %152 = add nsw i32 %145, %151
  store i32 %152, ptr %12, align 4
  %153 = load i32, ptr %9, align 4
  %154 = mul nsw i32 %153, 4
  %155 = add nsw i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4
  %159 = load i32, ptr %9, align 4
  %160 = mul nsw i32 %159, 4
  %161 = add nsw i32 %160, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4
  %165 = sub nsw i32 %158, %164
  store i32 %165, ptr %13, align 4
  %166 = load i32, ptr %10, align 4
  %167 = load i32, ptr %12, align 4
  %168 = add nsw i32 %166, %167
  %169 = add nsw i32 %168, 1
  %170 = ashr i32 %169, 1
  %171 = load ptr, ptr %2, align 8
  %172 = load i32, ptr %9, align 4
  %173 = mul nsw i32 %172, 4
  %174 = add nsw i32 %173, 0
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, ptr %171, i64 %175
  store i32 %170, ptr %176, align 4
  %177 = load i32, ptr %10, align 4
  %178 = load i32, ptr %12, align 4
  %179 = sub nsw i32 %177, %178
  %180 = add nsw i32 %179, 1
  %181 = ashr i32 %180, 1
  %182 = load ptr, ptr %2, align 8
  %183 = load i32, ptr %9, align 4
  %184 = mul nsw i32 %183, 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, ptr %182, i64 %186
  store i32 %181, ptr %187, align 4
  %188 = load i32, ptr %11, align 4
  %189 = load i32, ptr %13, align 4
  %190 = sub nsw i32 %188, %189
  %191 = add nsw i32 %190, 1
  %192 = ashr i32 %191, 1
  %193 = load ptr, ptr %2, align 8
  %194 = load i32, ptr %9, align 4
  %195 = mul nsw i32 %194, 4
  %196 = add nsw i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, ptr %193, i64 %197
  store i32 %192, ptr %198, align 4
  %199 = load i32, ptr %11, align 4
  %200 = load i32, ptr %13, align 4
  %201 = add nsw i32 %199, %200
  %202 = add nsw i32 %201, 1
  %203 = ashr i32 %202, 1
  %204 = load ptr, ptr %2, align 8
  %205 = load i32, ptr %9, align 4
  %206 = mul nsw i32 %205, 4
  %207 = add nsw i32 %206, 3
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, ptr %204, i64 %208
  store i32 %203, ptr %209, align 4
  br label %210

210:                                              ; preds = %113
  %211 = load i32, ptr %9, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, ptr %9, align 4
  br label %110, !llvm.loop !8

213:                                              ; preds = %110
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
!8 = distinct !{!8, !7}
