; ModuleID = '../benchmarks/fine_grained/exebench/kernel1590.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1590.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S1 = dso_local global ptr null, align 8
@S0 = dso_local global ptr null, align 8
@S3 = dso_local global ptr null, align 8
@S2 = dso_local global ptr null, align 8
@S5 = dso_local global ptr null, align 8
@S4 = dso_local global ptr null, align 8
@S7 = dso_local global ptr null, align 8
@S6 = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OneRound(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds i32, ptr %7, i64 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 0
  store i32 %9, ptr %10, align 16
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds i32, ptr %11, i64 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 1
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 2
  store i32 %17, ptr %18, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds i32, ptr %19, i64 7
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds i32, ptr %23, i64 4
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds i32, ptr %26, i64 0
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %25, %28
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds i32, ptr %30, i64 4
  store i32 %29, ptr %31, align 4
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds i32, ptr %32, i64 5
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds i32, ptr %35, i64 1
  %37 = load i32, ptr %36, align 4
  %38 = xor i32 %34, %37
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds i32, ptr %39, i64 5
  store i32 %38, ptr %40, align 4
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds i32, ptr %41, i64 6
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds i32, ptr %44, i64 2
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %43, %46
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds i32, ptr %48, i64 6
  store i32 %47, ptr %49, align 4
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr inbounds i32, ptr %50, i64 7
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds i32, ptr %53, i64 3
  %55 = load i32, ptr %54, align 4
  %56 = xor i32 %52, %55
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds i32, ptr %57, i64 7
  store i32 %56, ptr %58, align 4
  %59 = load ptr, ptr @S1, align 8
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds i32, ptr %60, i64 4
  %62 = load i32, ptr %61, align 4
  %63 = ashr i32 %62, 4
  %64 = and i32 %63, 15
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %59, i64 %65
  %67 = load i32, ptr %66, align 4
  %68 = shl i32 %67, 4
  %69 = load ptr, ptr @S0, align 8
  %70 = load ptr, ptr %3, align 8
  %71 = getelementptr inbounds i32, ptr %70, i64 4
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 15
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %69, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = xor i32 %68, %76
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds i32, ptr %78, i64 4
  store i32 %77, ptr %79, align 4
  %80 = load ptr, ptr @S3, align 8
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds i32, ptr %81, i64 5
  %83 = load i32, ptr %82, align 4
  %84 = ashr i32 %83, 4
  %85 = and i32 %84, 15
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %80, i64 %86
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 4
  %90 = load ptr, ptr @S2, align 8
  %91 = load ptr, ptr %3, align 8
  %92 = getelementptr inbounds i32, ptr %91, i64 5
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 15
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %90, i64 %95
  %97 = load i32, ptr %96, align 4
  %98 = xor i32 %89, %97
  %99 = load ptr, ptr %3, align 8
  %100 = getelementptr inbounds i32, ptr %99, i64 5
  store i32 %98, ptr %100, align 4
  %101 = load ptr, ptr @S5, align 8
  %102 = load ptr, ptr %3, align 8
  %103 = getelementptr inbounds i32, ptr %102, i64 6
  %104 = load i32, ptr %103, align 4
  %105 = ashr i32 %104, 4
  %106 = and i32 %105, 15
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %101, i64 %107
  %109 = load i32, ptr %108, align 4
  %110 = shl i32 %109, 4
  %111 = load ptr, ptr @S4, align 8
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds i32, ptr %112, i64 6
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 15
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %111, i64 %116
  %118 = load i32, ptr %117, align 4
  %119 = xor i32 %110, %118
  %120 = load ptr, ptr %3, align 8
  %121 = getelementptr inbounds i32, ptr %120, i64 6
  store i32 %119, ptr %121, align 4
  %122 = load ptr, ptr @S7, align 8
  %123 = load ptr, ptr %3, align 8
  %124 = getelementptr inbounds i32, ptr %123, i64 7
  %125 = load i32, ptr %124, align 4
  %126 = ashr i32 %125, 4
  %127 = and i32 %126, 15
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, ptr %122, i64 %128
  %130 = load i32, ptr %129, align 4
  %131 = shl i32 %130, 4
  %132 = load ptr, ptr @S6, align 8
  %133 = load ptr, ptr %3, align 8
  %134 = getelementptr inbounds i32, ptr %133, i64 7
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 15
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %132, i64 %137
  %139 = load i32, ptr %138, align 4
  %140 = xor i32 %131, %139
  %141 = load ptr, ptr %3, align 8
  %142 = getelementptr inbounds i32, ptr %141, i64 7
  store i32 %140, ptr %142, align 4
  %143 = load ptr, ptr %3, align 8
  %144 = getelementptr inbounds i32, ptr %143, i64 4
  %145 = load i32, ptr %144, align 4
  %146 = ashr i32 %145, 4
  %147 = and i32 %146, 15
  %148 = load ptr, ptr %3, align 8
  %149 = getelementptr inbounds i32, ptr %148, i64 5
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 240
  %152 = xor i32 %147, %151
  %153 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 0
  store i32 %152, ptr %153, align 16
  %154 = load ptr, ptr %3, align 8
  %155 = getelementptr inbounds i32, ptr %154, i64 4
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 15
  %158 = load ptr, ptr %3, align 8
  %159 = getelementptr inbounds i32, ptr %158, i64 5
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 15
  %162 = shl i32 %161, 4
  %163 = xor i32 %157, %162
  %164 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  store i32 %163, ptr %164, align 4
  %165 = load ptr, ptr %3, align 8
  %166 = getelementptr inbounds i32, ptr %165, i64 6
  %167 = load i32, ptr %166, align 4
  %168 = ashr i32 %167, 4
  %169 = and i32 %168, 15
  %170 = load ptr, ptr %3, align 8
  %171 = getelementptr inbounds i32, ptr %170, i64 7
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 240
  %174 = xor i32 %169, %173
  %175 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  store i32 %174, ptr %175, align 8
  %176 = load ptr, ptr %3, align 8
  %177 = getelementptr inbounds i32, ptr %176, i64 6
  %178 = load i32, ptr %177, align 4
  %179 = and i32 %178, 15
  %180 = load ptr, ptr %3, align 8
  %181 = getelementptr inbounds i32, ptr %180, i64 7
  %182 = load i32, ptr %181, align 4
  %183 = and i32 %182, 15
  %184 = shl i32 %183, 4
  %185 = xor i32 %179, %184
  %186 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  store i32 %185, ptr %186, align 4
  %187 = load ptr, ptr %3, align 8
  %188 = getelementptr inbounds i32, ptr %187, i64 3
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 0
  %191 = load i32, ptr %190, align 16
  %192 = xor i32 %189, %191
  %193 = load ptr, ptr %3, align 8
  %194 = getelementptr inbounds i32, ptr %193, i64 4
  store i32 %192, ptr %194, align 4
  %195 = load ptr, ptr %3, align 8
  %196 = getelementptr inbounds i32, ptr %195, i64 0
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %199 = load i32, ptr %198, align 4
  %200 = xor i32 %197, %199
  %201 = load ptr, ptr %3, align 8
  %202 = getelementptr inbounds i32, ptr %201, i64 5
  store i32 %200, ptr %202, align 4
  %203 = load ptr, ptr %3, align 8
  %204 = getelementptr inbounds i32, ptr %203, i64 1
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %207 = load i32, ptr %206, align 8
  %208 = xor i32 %205, %207
  %209 = load ptr, ptr %3, align 8
  %210 = getelementptr inbounds i32, ptr %209, i64 6
  store i32 %208, ptr %210, align 4
  %211 = load ptr, ptr %3, align 8
  %212 = getelementptr inbounds i32, ptr %211, i64 2
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %215 = load i32, ptr %214, align 4
  %216 = xor i32 %213, %215
  %217 = load ptr, ptr %3, align 8
  %218 = getelementptr inbounds i32, ptr %217, i64 7
  store i32 %216, ptr %218, align 4
  %219 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 0
  %220 = load i32, ptr %219, align 16
  %221 = load ptr, ptr %3, align 8
  %222 = getelementptr inbounds i32, ptr %221, i64 0
  store i32 %220, ptr %222, align 4
  %223 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 1
  %224 = load i32, ptr %223, align 4
  %225 = load ptr, ptr %3, align 8
  %226 = getelementptr inbounds i32, ptr %225, i64 1
  store i32 %224, ptr %226, align 4
  %227 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 2
  %228 = load i32, ptr %227, align 8
  %229 = load ptr, ptr %3, align 8
  %230 = getelementptr inbounds i32, ptr %229, i64 2
  store i32 %228, ptr %230, align 4
  %231 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %232 = load i32, ptr %231, align 4
  %233 = load ptr, ptr %3, align 8
  %234 = getelementptr inbounds i32, ptr %233, i64 3
  store i32 %232, ptr %234, align 4
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
