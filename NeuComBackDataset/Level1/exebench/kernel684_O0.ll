; ModuleID = '../benchmarks/fine_grained/exebench/kernel684.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel684.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlaqr1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  store ptr %2, ptr %11, align 8
  store ptr %3, ptr %12, align 8
  store ptr %4, ptr %13, align 8
  store ptr %5, ptr %14, align 8
  store ptr %6, ptr %15, align 8
  store ptr %7, ptr %16, align 8
  %25 = load ptr, ptr %11, align 8
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %17, align 4
  %27 = load i32, ptr %17, align 4
  %28 = add nsw i32 1, %27
  store i32 %28, ptr %18, align 4
  %29 = load i32, ptr %18, align 4
  %30 = load ptr, ptr %10, align 8
  %31 = sext i32 %29 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  store ptr %33, ptr %10, align 8
  %34 = load ptr, ptr %16, align 8
  %35 = getelementptr inbounds i32, ptr %34, i32 -1
  store ptr %35, ptr %16, align 8
  %36 = load ptr, ptr %9, align 8
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %170

39:                                               ; preds = %8
  %40 = load ptr, ptr %10, align 8
  %41 = load i32, ptr %17, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %40, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %14, align 8
  %47 = load i32, ptr %46, align 4
  %48 = sub nsw i32 %45, %47
  store i32 %48, ptr %19, align 4
  %49 = load i32, ptr %19, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, ptr %19, align 4
  br label %56

53:                                               ; preds = %39
  %54 = load i32, ptr %19, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i32 [ %52, %51 ], [ %55, %53 ]
  %58 = load ptr, ptr %15, align 8
  %59 = load i32, ptr %58, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load ptr, ptr %15, align 8
  %63 = load i32, ptr %62, align 4
  br label %68

64:                                               ; preds = %56
  %65 = load ptr, ptr %15, align 8
  %66 = load i32, ptr %65, align 4
  %67 = sub nsw i32 0, %66
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i32 [ %63, %61 ], [ %67, %64 ]
  %70 = add nsw i32 %57, %69
  %71 = load ptr, ptr %10, align 8
  %72 = load i32, ptr %17, align 4
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %71, i64 %74
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %20, align 4
  %77 = load i32, ptr %20, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, ptr %20, align 4
  br label %84

81:                                               ; preds = %68
  %82 = load i32, ptr %20, align 4
  %83 = sub nsw i32 0, %82
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %80, %79 ], [ %83, %81 ]
  %86 = add nsw i32 %70, %85
  store i32 %86, ptr %22, align 4
  %87 = load i32, ptr %22, align 4
  %88 = sitofp i32 %87 to double
  %89 = fcmp oeq double %88, 0.000000e+00
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load ptr, ptr %16, align 8
  %92 = getelementptr inbounds i32, ptr %91, i64 1
  store i32 0, ptr %92, align 4
  %93 = load ptr, ptr %16, align 8
  %94 = getelementptr inbounds i32, ptr %93, i64 2
  store i32 0, ptr %94, align 4
  br label %169

95:                                               ; preds = %84
  %96 = load ptr, ptr %10, align 8
  %97 = load i32, ptr %17, align 4
  %98 = add nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %96, i64 %99
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %22, align 4
  %103 = sdiv i32 %101, %102
  store i32 %103, ptr %23, align 4
  %104 = load i32, ptr %23, align 4
  %105 = load ptr, ptr %10, align 8
  %106 = load i32, ptr %17, align 4
  %107 = shl i32 %106, 1
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %105, i64 %109
  %111 = load i32, ptr %110, align 4
  %112 = mul nsw i32 %104, %111
  %113 = load ptr, ptr %10, align 8
  %114 = load i32, ptr %17, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %113, i64 %116
  %118 = load i32, ptr %117, align 4
  %119 = load ptr, ptr %12, align 8
  %120 = load i32, ptr %119, align 4
  %121 = sub nsw i32 %118, %120
  %122 = load ptr, ptr %10, align 8
  %123 = load i32, ptr %17, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %122, i64 %125
  %127 = load i32, ptr %126, align 4
  %128 = load ptr, ptr %14, align 8
  %129 = load i32, ptr %128, align 4
  %130 = sub nsw i32 %127, %129
  %131 = load i32, ptr %22, align 4
  %132 = sdiv i32 %130, %131
  %133 = mul nsw i32 %121, %132
  %134 = add nsw i32 %112, %133
  %135 = load ptr, ptr %13, align 8
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr %15, align 8
  %138 = load i32, ptr %137, align 4
  %139 = load i32, ptr %22, align 4
  %140 = sdiv i32 %138, %139
  %141 = mul nsw i32 %136, %140
  %142 = sub nsw i32 %134, %141
  %143 = load ptr, ptr %16, align 8
  %144 = getelementptr inbounds i32, ptr %143, i64 1
  store i32 %142, ptr %144, align 4
  %145 = load i32, ptr %23, align 4
  %146 = load ptr, ptr %10, align 8
  %147 = load i32, ptr %17, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %146, i64 %149
  %151 = load i32, ptr %150, align 4
  %152 = load ptr, ptr %10, align 8
  %153 = load i32, ptr %17, align 4
  %154 = shl i32 %153, 1
  %155 = add nsw i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, ptr %152, i64 %156
  %158 = load i32, ptr %157, align 4
  %159 = add nsw i32 %151, %158
  %160 = load ptr, ptr %12, align 8
  %161 = load i32, ptr %160, align 4
  %162 = sub nsw i32 %159, %161
  %163 = load ptr, ptr %14, align 8
  %164 = load i32, ptr %163, align 4
  %165 = sub nsw i32 %162, %164
  %166 = mul nsw i32 %145, %165
  %167 = load ptr, ptr %16, align 8
  %168 = getelementptr inbounds i32, ptr %167, i64 2
  store i32 %166, ptr %168, align 4
  br label %169

169:                                              ; preds = %95, %90
  br label %381

170:                                              ; preds = %8
  %171 = load ptr, ptr %10, align 8
  %172 = load i32, ptr %17, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %171, i64 %174
  %176 = load i32, ptr %175, align 4
  %177 = load ptr, ptr %14, align 8
  %178 = load i32, ptr %177, align 4
  %179 = sub nsw i32 %176, %178
  store i32 %179, ptr %19, align 4
  %180 = load i32, ptr %19, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %170
  %183 = load i32, ptr %19, align 4
  br label %187

184:                                              ; preds = %170
  %185 = load i32, ptr %19, align 4
  %186 = sub nsw i32 0, %185
  br label %187

187:                                              ; preds = %184, %182
  %188 = phi i32 [ %183, %182 ], [ %186, %184 ]
  %189 = load ptr, ptr %15, align 8
  %190 = load i32, ptr %189, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load ptr, ptr %15, align 8
  %194 = load i32, ptr %193, align 4
  br label %199

195:                                              ; preds = %187
  %196 = load ptr, ptr %15, align 8
  %197 = load i32, ptr %196, align 4
  %198 = sub nsw i32 0, %197
  br label %199

199:                                              ; preds = %195, %192
  %200 = phi i32 [ %194, %192 ], [ %198, %195 ]
  %201 = add nsw i32 %188, %200
  %202 = load ptr, ptr %10, align 8
  %203 = load i32, ptr %17, align 4
  %204 = add nsw i32 %203, 2
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, ptr %202, i64 %205
  %207 = load i32, ptr %206, align 4
  store i32 %207, ptr %20, align 4
  %208 = load i32, ptr %20, align 4
  %209 = icmp sge i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %199
  %211 = load i32, ptr %20, align 4
  br label %215

212:                                              ; preds = %199
  %213 = load i32, ptr %20, align 4
  %214 = sub nsw i32 0, %213
  br label %215

215:                                              ; preds = %212, %210
  %216 = phi i32 [ %211, %210 ], [ %214, %212 ]
  %217 = add nsw i32 %201, %216
  %218 = load ptr, ptr %10, align 8
  %219 = load i32, ptr %17, align 4
  %220 = add nsw i32 %219, 3
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, ptr %218, i64 %221
  %223 = load i32, ptr %222, align 4
  store i32 %223, ptr %21, align 4
  %224 = load i32, ptr %21, align 4
  %225 = icmp sge i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %215
  %227 = load i32, ptr %21, align 4
  br label %231

228:                                              ; preds = %215
  %229 = load i32, ptr %21, align 4
  %230 = sub nsw i32 0, %229
  br label %231

231:                                              ; preds = %228, %226
  %232 = phi i32 [ %227, %226 ], [ %230, %228 ]
  %233 = add nsw i32 %217, %232
  store i32 %233, ptr %22, align 4
  %234 = load i32, ptr %22, align 4
  %235 = sitofp i32 %234 to double
  %236 = fcmp oeq double %235, 0.000000e+00
  br i1 %236, label %237, label %244

237:                                              ; preds = %231
  %238 = load ptr, ptr %16, align 8
  %239 = getelementptr inbounds i32, ptr %238, i64 1
  store i32 0, ptr %239, align 4
  %240 = load ptr, ptr %16, align 8
  %241 = getelementptr inbounds i32, ptr %240, i64 2
  store i32 0, ptr %241, align 4
  %242 = load ptr, ptr %16, align 8
  %243 = getelementptr inbounds i32, ptr %242, i64 3
  store i32 0, ptr %243, align 4
  br label %380

244:                                              ; preds = %231
  %245 = load ptr, ptr %10, align 8
  %246 = load i32, ptr %17, align 4
  %247 = add nsw i32 %246, 2
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, ptr %245, i64 %248
  %250 = load i32, ptr %249, align 4
  %251 = load i32, ptr %22, align 4
  %252 = sdiv i32 %250, %251
  store i32 %252, ptr %23, align 4
  %253 = load ptr, ptr %10, align 8
  %254 = load i32, ptr %17, align 4
  %255 = add nsw i32 %254, 3
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, ptr %253, i64 %256
  %258 = load i32, ptr %257, align 4
  %259 = load i32, ptr %22, align 4
  %260 = sdiv i32 %258, %259
  store i32 %260, ptr %24, align 4
  %261 = load ptr, ptr %10, align 8
  %262 = load i32, ptr %17, align 4
  %263 = add nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, ptr %261, i64 %264
  %266 = load i32, ptr %265, align 4
  %267 = load ptr, ptr %12, align 8
  %268 = load i32, ptr %267, align 4
  %269 = sub nsw i32 %266, %268
  %270 = load ptr, ptr %10, align 8
  %271 = load i32, ptr %17, align 4
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, ptr %270, i64 %273
  %275 = load i32, ptr %274, align 4
  %276 = load ptr, ptr %14, align 8
  %277 = load i32, ptr %276, align 4
  %278 = sub nsw i32 %275, %277
  %279 = load i32, ptr %22, align 4
  %280 = sdiv i32 %278, %279
  %281 = mul nsw i32 %269, %280
  %282 = load ptr, ptr %13, align 8
  %283 = load i32, ptr %282, align 4
  %284 = load ptr, ptr %15, align 8
  %285 = load i32, ptr %284, align 4
  %286 = load i32, ptr %22, align 4
  %287 = sdiv i32 %285, %286
  %288 = mul nsw i32 %283, %287
  %289 = sub nsw i32 %281, %288
  %290 = load ptr, ptr %10, align 8
  %291 = load i32, ptr %17, align 4
  %292 = shl i32 %291, 1
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, ptr %290, i64 %294
  %296 = load i32, ptr %295, align 4
  %297 = load i32, ptr %23, align 4
  %298 = mul nsw i32 %296, %297
  %299 = add nsw i32 %289, %298
  %300 = load ptr, ptr %10, align 8
  %301 = load i32, ptr %17, align 4
  %302 = mul nsw i32 %301, 3
  %303 = add nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, ptr %300, i64 %304
  %306 = load i32, ptr %305, align 4
  %307 = load i32, ptr %24, align 4
  %308 = mul nsw i32 %306, %307
  %309 = add nsw i32 %299, %308
  %310 = load ptr, ptr %16, align 8
  %311 = getelementptr inbounds i32, ptr %310, i64 1
  store i32 %309, ptr %311, align 4
  %312 = load i32, ptr %23, align 4
  %313 = load ptr, ptr %10, align 8
  %314 = load i32, ptr %17, align 4
  %315 = add nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, ptr %313, i64 %316
  %318 = load i32, ptr %317, align 4
  %319 = load ptr, ptr %10, align 8
  %320 = load i32, ptr %17, align 4
  %321 = shl i32 %320, 1
  %322 = add nsw i32 %321, 2
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, ptr %319, i64 %323
  %325 = load i32, ptr %324, align 4
  %326 = add nsw i32 %318, %325
  %327 = load ptr, ptr %12, align 8
  %328 = load i32, ptr %327, align 4
  %329 = sub nsw i32 %326, %328
  %330 = load ptr, ptr %14, align 8
  %331 = load i32, ptr %330, align 4
  %332 = sub nsw i32 %329, %331
  %333 = mul nsw i32 %312, %332
  %334 = load ptr, ptr %10, align 8
  %335 = load i32, ptr %17, align 4
  %336 = mul nsw i32 %335, 3
  %337 = add nsw i32 %336, 2
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, ptr %334, i64 %338
  %340 = load i32, ptr %339, align 4
  %341 = load i32, ptr %24, align 4
  %342 = mul nsw i32 %340, %341
  %343 = add nsw i32 %333, %342
  %344 = load ptr, ptr %16, align 8
  %345 = getelementptr inbounds i32, ptr %344, i64 2
  store i32 %343, ptr %345, align 4
  %346 = load i32, ptr %24, align 4
  %347 = load ptr, ptr %10, align 8
  %348 = load i32, ptr %17, align 4
  %349 = add nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, ptr %347, i64 %350
  %352 = load i32, ptr %351, align 4
  %353 = load ptr, ptr %10, align 8
  %354 = load i32, ptr %17, align 4
  %355 = mul nsw i32 %354, 3
  %356 = add nsw i32 %355, 3
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, ptr %353, i64 %357
  %359 = load i32, ptr %358, align 4
  %360 = add nsw i32 %352, %359
  %361 = load ptr, ptr %12, align 8
  %362 = load i32, ptr %361, align 4
  %363 = sub nsw i32 %360, %362
  %364 = load ptr, ptr %14, align 8
  %365 = load i32, ptr %364, align 4
  %366 = sub nsw i32 %363, %365
  %367 = mul nsw i32 %346, %366
  %368 = load i32, ptr %23, align 4
  %369 = load ptr, ptr %10, align 8
  %370 = load i32, ptr %17, align 4
  %371 = shl i32 %370, 1
  %372 = add nsw i32 %371, 3
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, ptr %369, i64 %373
  %375 = load i32, ptr %374, align 4
  %376 = mul nsw i32 %368, %375
  %377 = add nsw i32 %367, %376
  %378 = load ptr, ptr %16, align 8
  %379 = getelementptr inbounds i32, ptr %378, i64 3
  store i32 %377, ptr %379, align 4
  br label %380

380:                                              ; preds = %244, %237
  br label %381

381:                                              ; preds = %380, %169
  ret i32 0
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
