; ModuleID = '../benchmarks/fine_grained/exebench/kernel1529.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1529.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrc_fix_li(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %12 = load i32, ptr %6, align 4
  store i32 %12, ptr %9, align 4
  %13 = load i32, ptr %7, align 4
  store i32 %13, ptr %10, align 4
  %14 = load i32, ptr %8, align 4
  store i32 %14, ptr %11, align 4
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %15, i32 0, i32 15
  %17 = load i64, ptr %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %116

19:                                               ; preds = %4
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %20, i32 0, i32 14
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, ptr %9, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, ptr %24, i32 0, i32 13
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %10, align 4
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %28, i32 0, i32 12
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, ptr %11, align 4
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %19
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, ptr %37, i32 0, i32 11
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, ptr %41, i32 0, i32 0
  %43 = load i32, ptr %42, align 8
  %44 = sub nsw i32 %43, %40
  store i32 %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %36, %19
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, ptr %51, i32 0, i32 11
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = sub nsw i32 %57, %54
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %50, %45
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load ptr, ptr %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, ptr %65, i32 0, i32 10
  %67 = load i64, ptr %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load ptr, ptr %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = sub nsw i32 %71, %68
  store i32 %72, ptr %70, align 8
  br label %73

73:                                               ; preds = %64, %59
  %74 = load ptr, ptr %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, ptr %74, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load ptr, ptr %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, ptr %79, i32 0, i32 10
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = sub nsw i32 %85, %82
  store i32 %86, ptr %84, align 4
  br label %87

87:                                               ; preds = %78, %73
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, ptr %88, i32 0, i32 4
  %90 = load i32, ptr %89, align 8
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, ptr %93, i32 0, i32 9
  %95 = load i64, ptr %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load ptr, ptr %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, ptr %97, i32 0, i32 4
  %99 = load i32, ptr %98, align 8
  %100 = sub nsw i32 %99, %96
  store i32 %100, ptr %98, align 8
  br label %101

101:                                              ; preds = %92, %87
  %102 = load ptr, ptr %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, ptr %102, i32 0, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load ptr, ptr %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, ptr %107, i32 0, i32 9
  %109 = load i64, ptr %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, ptr %111, i32 0, i32 5
  %113 = load i32, ptr %112, align 4
  %114 = sub nsw i32 %113, %110
  store i32 %114, ptr %112, align 4
  br label %115

115:                                              ; preds = %106, %101
  br label %116

116:                                              ; preds = %115, %4
  %117 = load ptr, ptr %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, ptr %117, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %153

121:                                              ; preds = %116
  %122 = load ptr, ptr %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 8
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %121
  %127 = load ptr, ptr %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, ptr %127, i32 0, i32 0
  %129 = load i32, ptr %128, align 8
  %130 = load i32, ptr %9, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %126
  %133 = load i32, ptr %9, align 4
  %134 = sdiv i32 %133, 2
  %135 = load ptr, ptr %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, ptr %135, i32 0, i32 0
  %137 = load i32, ptr %136, align 8
  %138 = sdiv i32 %137, 2
  %139 = add nsw i32 %134, %138
  %140 = load ptr, ptr %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, ptr %140, i32 0, i32 1
  store i32 %139, ptr %141, align 4
  %142 = load ptr, ptr %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, ptr %142, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, ptr %145, i32 0, i32 0
  %147 = load i32, ptr %146, align 8
  %148 = sub nsw i32 %144, %147
  %149 = add nsw i32 %148, 1
  %150 = load ptr, ptr %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, ptr %150, i32 0, i32 0
  store i32 %149, ptr %151, align 8
  br label %152

152:                                              ; preds = %132, %126, %121
  br label %153

153:                                              ; preds = %152, %116
  %154 = load ptr, ptr %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, ptr %154, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, ptr %159, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = load i32, ptr %9, align 4
  %163 = sub nsw i32 %162, 1
  %164 = icmp sgt i32 %161, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %158, %153
  %166 = load i32, ptr %9, align 4
  %167 = sub nsw i32 %166, 1
  %168 = load ptr, ptr %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, ptr %168, i32 0, i32 1
  store i32 %167, ptr %169, align 4
  br label %170

170:                                              ; preds = %165, %158
  %171 = load ptr, ptr %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, ptr %171, i32 0, i32 0
  %173 = load i32, ptr %172, align 8
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %170
  %176 = load ptr, ptr %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, ptr %176, i32 0, i32 0
  %178 = load i32, ptr %177, align 8
  %179 = load ptr, ptr %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, ptr %179, i32 0, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %175, %170
  %184 = load ptr, ptr %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, ptr %184, i32 0, i32 0
  store i32 0, ptr %185, align 8
  br label %186

186:                                              ; preds = %183, %175
  %187 = load ptr, ptr %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, ptr %187, i32 0, i32 3
  %189 = load i32, ptr %188, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %223

191:                                              ; preds = %186
  %192 = load ptr, ptr %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, ptr %192, i32 0, i32 2
  %194 = load i32, ptr %193, align 8
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %222

196:                                              ; preds = %191
  %197 = load ptr, ptr %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, ptr %197, i32 0, i32 2
  %199 = load i32, ptr %198, align 8
  %200 = load i32, ptr %10, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %222

202:                                              ; preds = %196
  %203 = load i32, ptr %10, align 4
  %204 = sdiv i32 %203, 2
  %205 = load ptr, ptr %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, ptr %205, i32 0, i32 2
  %207 = load i32, ptr %206, align 8
  %208 = sdiv i32 %207, 2
  %209 = add nsw i32 %204, %208
  %210 = load ptr, ptr %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, ptr %210, i32 0, i32 3
  store i32 %209, ptr %211, align 4
  %212 = load ptr, ptr %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, ptr %212, i32 0, i32 3
  %214 = load i32, ptr %213, align 4
  %215 = load ptr, ptr %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, ptr %215, i32 0, i32 2
  %217 = load i32, ptr %216, align 8
  %218 = sub nsw i32 %214, %217
  %219 = add nsw i32 %218, 1
  %220 = load ptr, ptr %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, ptr %220, i32 0, i32 2
  store i32 %219, ptr %221, align 8
  br label %222

222:                                              ; preds = %202, %196, %191
  br label %223

223:                                              ; preds = %222, %186
  %224 = load ptr, ptr %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, ptr %224, i32 0, i32 3
  %226 = load i32, ptr %225, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %223
  %229 = load ptr, ptr %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, ptr %229, i32 0, i32 3
  %231 = load i32, ptr %230, align 4
  %232 = load i32, ptr %10, align 4
  %233 = sub nsw i32 %232, 1
  %234 = icmp sgt i32 %231, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %228, %223
  %236 = load i32, ptr %10, align 4
  %237 = sub nsw i32 %236, 1
  %238 = load ptr, ptr %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, ptr %238, i32 0, i32 3
  store i32 %237, ptr %239, align 4
  br label %240

240:                                              ; preds = %235, %228
  %241 = load ptr, ptr %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, ptr %241, i32 0, i32 2
  %243 = load i32, ptr %242, align 8
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %240
  %246 = load ptr, ptr %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, ptr %246, i32 0, i32 2
  %248 = load i32, ptr %247, align 8
  %249 = load ptr, ptr %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, ptr %249, i32 0, i32 3
  %251 = load i32, ptr %250, align 4
  %252 = icmp sgt i32 %248, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %245, %240
  %254 = load ptr, ptr %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, ptr %254, i32 0, i32 2
  store i32 0, ptr %255, align 8
  br label %256

256:                                              ; preds = %253, %245
  %257 = load ptr, ptr %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, ptr %257, i32 0, i32 5
  %259 = load i32, ptr %258, align 4
  %260 = load i32, ptr %11, align 4
  %261 = icmp sge i32 %259, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %256
  %263 = load i32, ptr %11, align 4
  %264 = sub nsw i32 %263, 1
  %265 = load ptr, ptr %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, ptr %265, i32 0, i32 5
  store i32 %264, ptr %266, align 4
  br label %267

267:                                              ; preds = %262, %256
  %268 = load ptr, ptr %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, ptr %268, i32 0, i32 4
  %270 = load i32, ptr %269, align 8
  %271 = load i32, ptr %11, align 4
  %272 = icmp sge i32 %270, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %267
  %274 = load i32, ptr %11, align 4
  %275 = sub nsw i32 %274, 1
  %276 = load ptr, ptr %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, ptr %276, i32 0, i32 4
  store i32 %275, ptr %277, align 8
  br label %278

278:                                              ; preds = %273, %267
  %279 = load ptr, ptr %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, ptr %279, i32 0, i32 5
  %281 = load i32, ptr %280, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %278
  %284 = load ptr, ptr %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, ptr %284, i32 0, i32 5
  %286 = load i32, ptr %285, align 4
  %287 = load ptr, ptr %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, ptr %287, i32 0, i32 4
  %289 = load i32, ptr %288, align 8
  %290 = icmp slt i32 %286, %289
  br i1 %290, label %291, label %308

291:                                              ; preds = %283, %278
  %292 = load ptr, ptr %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, ptr %292, i32 0, i32 4
  %294 = load i32, ptr %293, align 8
  %295 = icmp sge i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %291
  %297 = load ptr, ptr %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, ptr %297, i32 0, i32 4
  %299 = load i32, ptr %298, align 8
  %300 = load ptr, ptr %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, ptr %300, i32 0, i32 5
  store i32 %299, ptr %301, align 4
  br label %307

302:                                              ; preds = %291
  %303 = load i32, ptr %11, align 4
  %304 = sub nsw i32 %303, 1
  %305 = load ptr, ptr %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, ptr %305, i32 0, i32 5
  store i32 %304, ptr %306, align 4
  br label %307

307:                                              ; preds = %302, %296
  br label %308

308:                                              ; preds = %307, %283
  %309 = load ptr, ptr %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, ptr %309, i32 0, i32 4
  %311 = load i32, ptr %310, align 8
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %308
  %314 = load ptr, ptr %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, ptr %314, i32 0, i32 4
  %316 = load i32, ptr %315, align 8
  %317 = load ptr, ptr %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, ptr %317, i32 0, i32 5
  %319 = load i32, ptr %318, align 4
  %320 = icmp sgt i32 %316, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %313, %308
  %322 = load ptr, ptr %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, ptr %322, i32 0, i32 4
  store i32 0, ptr %323, align 8
  br label %324

324:                                              ; preds = %321, %313
  %325 = load ptr, ptr %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, ptr %325, i32 0, i32 6
  %327 = load i32, ptr %326, align 8
  %328 = icmp sgt i32 %327, 255
  br i1 %328, label %334, label %329

329:                                              ; preds = %324
  %330 = load ptr, ptr %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_3__, ptr %330, i32 0, i32 6
  %332 = load i32, ptr %331, align 8
  %333 = icmp slt i32 %332, 1
  br i1 %333, label %334, label %337

334:                                              ; preds = %329, %324
  %335 = load ptr, ptr %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, ptr %335, i32 0, i32 6
  store i32 255, ptr %336, align 8
  br label %337

337:                                              ; preds = %334, %329
  %338 = load ptr, ptr %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_3__, ptr %338, i32 0, i32 7
  %340 = load i32, ptr %339, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %350, label %342

342:                                              ; preds = %337
  %343 = load ptr, ptr %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, ptr %343, i32 0, i32 7
  %345 = load i32, ptr %344, align 4
  %346 = load ptr, ptr %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, ptr %346, i32 0, i32 6
  %348 = load i32, ptr %347, align 8
  %349 = icmp sgt i32 %345, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %342, %337
  %351 = load ptr, ptr %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, ptr %351, i32 0, i32 7
  store i32 0, ptr %352, align 4
  br label %353

353:                                              ; preds = %350, %342
  %354 = load ptr, ptr %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, ptr %354, i32 0, i32 8
  %356 = load i32, ptr %355, align 8
  %357 = icmp sgt i32 %356, 3
  br i1 %357, label %363, label %358

358:                                              ; preds = %353
  %359 = load ptr, ptr %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_3__, ptr %359, i32 0, i32 8
  %361 = load i32, ptr %360, align 8
  %362 = icmp slt i32 %361, 1
  br i1 %362, label %363, label %366

363:                                              ; preds = %358, %353
  %364 = load ptr, ptr %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, ptr %364, i32 0, i32 8
  store i32 3, ptr %365, align 8
  br label %366

366:                                              ; preds = %363, %358
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
