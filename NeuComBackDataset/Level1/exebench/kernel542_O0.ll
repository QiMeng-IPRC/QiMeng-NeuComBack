; ModuleID = '../benchmarks/fine_grained/exebench/kernel542.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel542.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { float, float, float, float, float, float }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }

@ORL_CART_POSITION = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apply_delta_position(ptr noundef %0, float noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca float, align 4
  store ptr %0, ptr %3, align 8
  store float %1, ptr %4, align 4
  %5 = load i32, ptr @ORL_CART_POSITION, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, ptr %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 6
  store i32 %5, ptr %8, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, ptr %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, ptr %10, i32 0, i32 0
  %12 = load i64, ptr %11, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, ptr %14, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  %17 = icmp slt i64 %12, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, ptr %20, i32 0, i32 0
  %22 = load float, ptr %21, align 8
  %23 = fcmp ogt float %22, 0.000000e+00
  br i1 %23, label %40, label %24

24:                                               ; preds = %18, %2
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, ptr %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, ptr %26, i32 0, i32 0
  %28 = load i64, ptr %27, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, ptr %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, ptr %30, i32 0, i32 0
  %32 = load i64, ptr %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %24
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, ptr %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, ptr %36, i32 0, i32 0
  %38 = load float, ptr %37, align 8
  %39 = fcmp olt float %38, 0.000000e+00
  br i1 %39, label %40, label %53

40:                                               ; preds = %34, %18
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, ptr %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, ptr %42, i32 0, i32 0
  %44 = load float, ptr %43, align 8
  %45 = load float, ptr %4, align 4
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, ptr %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, ptr %47, i32 0, i32 0
  %49 = load i64, ptr %48, align 8
  %50 = sitofp i64 %49 to float
  %51 = call float @llvm.fmuladd.f32(float %44, float %45, float %50)
  %52 = fptosi float %51 to i64
  store i64 %52, ptr %48, align 8
  br label %53

53:                                               ; preds = %40, %34, %24
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, ptr %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, ptr %55, i32 0, i32 1
  %57 = load i64, ptr %56, align 8
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, ptr %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, ptr %59, i32 0, i32 1
  %61 = load i64, ptr %60, align 8
  %62 = icmp slt i64 %57, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, ptr %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, ptr %65, i32 0, i32 1
  %67 = load float, ptr %66, align 4
  %68 = fcmp ogt float %67, 0.000000e+00
  br i1 %68, label %85, label %69

69:                                               ; preds = %63, %53
  %70 = load ptr, ptr %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, ptr %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, ptr %71, i32 0, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, ptr %75, i32 0, i32 1
  %77 = load i64, ptr %76, align 8
  %78 = icmp sgt i64 %73, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %69
  %80 = load ptr, ptr %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, ptr %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, ptr %81, i32 0, i32 1
  %83 = load float, ptr %82, align 4
  %84 = fcmp olt float %83, 0.000000e+00
  br i1 %84, label %85, label %98

85:                                               ; preds = %79, %63
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, ptr %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, ptr %87, i32 0, i32 1
  %89 = load float, ptr %88, align 4
  %90 = load float, ptr %4, align 4
  %91 = load ptr, ptr %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, ptr %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, ptr %92, i32 0, i32 1
  %94 = load i64, ptr %93, align 8
  %95 = sitofp i64 %94 to float
  %96 = call float @llvm.fmuladd.f32(float %89, float %90, float %95)
  %97 = fptosi float %96 to i64
  store i64 %97, ptr %93, align 8
  br label %98

98:                                               ; preds = %85, %79, %69
  %99 = load ptr, ptr %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, ptr %100, i32 0, i32 2
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, ptr %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, ptr %104, i32 0, i32 2
  %106 = load i64, ptr %105, align 8
  %107 = icmp slt i64 %102, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %98
  %109 = load ptr, ptr %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, ptr %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, ptr %110, i32 0, i32 2
  %112 = load float, ptr %111, align 8
  %113 = fcmp ogt float %112, 0.000000e+00
  br i1 %113, label %130, label %114

114:                                              ; preds = %108, %98
  %115 = load ptr, ptr %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, ptr %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, ptr %116, i32 0, i32 2
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, ptr %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, ptr %120, i32 0, i32 2
  %122 = load i64, ptr %121, align 8
  %123 = icmp sgt i64 %118, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %114
  %125 = load ptr, ptr %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, ptr %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, ptr %126, i32 0, i32 2
  %128 = load float, ptr %127, align 8
  %129 = fcmp olt float %128, 0.000000e+00
  br i1 %129, label %130, label %143

130:                                              ; preds = %124, %108
  %131 = load ptr, ptr %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, ptr %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, ptr %132, i32 0, i32 2
  %134 = load float, ptr %133, align 8
  %135 = load float, ptr %4, align 4
  %136 = load ptr, ptr %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, ptr %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, ptr %137, i32 0, i32 2
  %139 = load i64, ptr %138, align 8
  %140 = sitofp i64 %139 to float
  %141 = call float @llvm.fmuladd.f32(float %134, float %135, float %140)
  %142 = fptosi float %141 to i64
  store i64 %142, ptr %138, align 8
  br label %143

143:                                              ; preds = %130, %124, %114
  %144 = load ptr, ptr %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, ptr %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, ptr %145, i32 0, i32 3
  %147 = load i64, ptr %146, align 8
  %148 = load ptr, ptr %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, ptr %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_6__, ptr %149, i32 0, i32 3
  %151 = load i64, ptr %150, align 8
  %152 = icmp slt i64 %147, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %143
  %154 = load ptr, ptr %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, ptr %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, ptr %155, i32 0, i32 3
  %157 = load float, ptr %156, align 4
  %158 = fcmp ogt float %157, 0.000000e+00
  br i1 %158, label %175, label %159

159:                                              ; preds = %153, %143
  %160 = load ptr, ptr %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, ptr %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, ptr %161, i32 0, i32 3
  %163 = load i64, ptr %162, align 8
  %164 = load ptr, ptr %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, ptr %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, ptr %165, i32 0, i32 3
  %167 = load i64, ptr %166, align 8
  %168 = icmp sgt i64 %163, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %159
  %170 = load ptr, ptr %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, ptr %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, ptr %171, i32 0, i32 3
  %173 = load float, ptr %172, align 4
  %174 = fcmp olt float %173, 0.000000e+00
  br i1 %174, label %175, label %188

175:                                              ; preds = %169, %153
  %176 = load ptr, ptr %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, ptr %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, ptr %177, i32 0, i32 3
  %179 = load float, ptr %178, align 4
  %180 = load float, ptr %4, align 4
  %181 = load ptr, ptr %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, ptr %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, ptr %182, i32 0, i32 3
  %184 = load i64, ptr %183, align 8
  %185 = sitofp i64 %184 to float
  %186 = call float @llvm.fmuladd.f32(float %179, float %180, float %185)
  %187 = fptosi float %186 to i64
  store i64 %187, ptr %183, align 8
  br label %188

188:                                              ; preds = %175, %169, %159
  %189 = load ptr, ptr %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, ptr %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_7__, ptr %190, i32 0, i32 4
  %192 = load i64, ptr %191, align 8
  %193 = load ptr, ptr %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, ptr %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_6__, ptr %194, i32 0, i32 4
  %196 = load i64, ptr %195, align 8
  %197 = icmp slt i64 %192, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %188
  %199 = load ptr, ptr %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, ptr %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, ptr %200, i32 0, i32 4
  %202 = load float, ptr %201, align 8
  %203 = fcmp ogt float %202, 0.000000e+00
  br i1 %203, label %220, label %204

204:                                              ; preds = %198, %188
  %205 = load ptr, ptr %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, ptr %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_7__, ptr %206, i32 0, i32 4
  %208 = load i64, ptr %207, align 8
  %209 = load ptr, ptr %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, ptr %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_6__, ptr %210, i32 0, i32 4
  %212 = load i64, ptr %211, align 8
  %213 = icmp sgt i64 %208, %212
  br i1 %213, label %214, label %233

214:                                              ; preds = %204
  %215 = load ptr, ptr %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, ptr %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_8__, ptr %216, i32 0, i32 4
  %218 = load float, ptr %217, align 8
  %219 = fcmp olt float %218, 0.000000e+00
  br i1 %219, label %220, label %233

220:                                              ; preds = %214, %198
  %221 = load ptr, ptr %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, ptr %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, ptr %222, i32 0, i32 4
  %224 = load float, ptr %223, align 8
  %225 = load float, ptr %4, align 4
  %226 = load ptr, ptr %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, ptr %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_7__, ptr %227, i32 0, i32 4
  %229 = load i64, ptr %228, align 8
  %230 = sitofp i64 %229 to float
  %231 = call float @llvm.fmuladd.f32(float %224, float %225, float %230)
  %232 = fptosi float %231 to i64
  store i64 %232, ptr %228, align 8
  br label %233

233:                                              ; preds = %220, %214, %204
  %234 = load ptr, ptr %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, ptr %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_7__, ptr %235, i32 0, i32 5
  %237 = load i64, ptr %236, align 8
  %238 = load ptr, ptr %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, ptr %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_6__, ptr %239, i32 0, i32 5
  %241 = load i64, ptr %240, align 8
  %242 = icmp slt i64 %237, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %233
  %244 = load ptr, ptr %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, ptr %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, ptr %245, i32 0, i32 5
  %247 = load float, ptr %246, align 4
  %248 = fcmp ogt float %247, 0.000000e+00
  br i1 %248, label %265, label %249

249:                                              ; preds = %243, %233
  %250 = load ptr, ptr %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, ptr %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_7__, ptr %251, i32 0, i32 5
  %253 = load i64, ptr %252, align 8
  %254 = load ptr, ptr %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, ptr %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_6__, ptr %255, i32 0, i32 5
  %257 = load i64, ptr %256, align 8
  %258 = icmp sgt i64 %253, %257
  br i1 %258, label %259, label %278

259:                                              ; preds = %249
  %260 = load ptr, ptr %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, ptr %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_8__, ptr %261, i32 0, i32 5
  %263 = load float, ptr %262, align 4
  %264 = fcmp olt float %263, 0.000000e+00
  br i1 %264, label %265, label %278

265:                                              ; preds = %259, %243
  %266 = load ptr, ptr %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, ptr %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, ptr %267, i32 0, i32 5
  %269 = load float, ptr %268, align 4
  %270 = load float, ptr %4, align 4
  %271 = load ptr, ptr %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, ptr %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_7__, ptr %272, i32 0, i32 5
  %274 = load i64, ptr %273, align 8
  %275 = sitofp i64 %274 to float
  %276 = call float @llvm.fmuladd.f32(float %269, float %270, float %275)
  %277 = fptosi float %276 to i64
  store i64 %277, ptr %273, align 8
  br label %278

278:                                              ; preds = %265, %259, %249
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
