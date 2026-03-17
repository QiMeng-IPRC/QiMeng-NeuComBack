; ModuleID = '../benchmarks/fine_grained/exebench/kernel310.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel310.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_fmpy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store i64 0, ptr %16, align 8
  store i64 0, ptr %17, align 8
  store i64 0, ptr %18, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %10, align 4
  %22 = load ptr, ptr %7, align 8
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %11, align 4
  %24 = load i32, ptr %10, align 4
  %25 = lshr i32 %24, 31
  %26 = and i32 %25, 1
  %27 = load i32, ptr %11, align 4
  %28 = lshr i32 %27, 31
  %29 = and i32 %28, 1
  %30 = xor i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 -2147483648, ptr %13, align 4
  br label %34

33:                                               ; preds = %4
  store i32 0, ptr %13, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, ptr %10, align 4
  %36 = lshr i32 %35, 23
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %39, label %126

39:                                               ; preds = %34
  %40 = load i32, ptr %10, align 4
  %41 = and i32 %40, 8388607
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = load i32, ptr %11, align 4
  %45 = lshr i32 %44, 23
  %46 = and i32 %45, 255
  %47 = icmp ne i32 %46, 255
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %11, align 4
  %50 = and i32 %49, 8388607
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %48, %43
  %53 = load i32, ptr %11, align 4
  %54 = and i32 %53, 2147483647
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load ptr, ptr %9, align 8
  %58 = load i32, ptr %57, align 4
  %59 = lshr i32 %58, 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 32, ptr %5, align 4
  br label %744

63:                                               ; preds = %56
  %64 = load ptr, ptr %9, align 8
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 2147483647
  %67 = or i32 %66, -2147483648
  %68 = load ptr, ptr %9, align 8
  store i32 %67, ptr %68, align 4
  store i32 2141192192, ptr %13, align 4
  %69 = load i32, ptr %13, align 4
  %70 = load ptr, ptr %8, align 8
  store i32 %69, ptr %70, align 4
  store i32 0, ptr %5, align 4
  br label %744

71:                                               ; preds = %52
  %72 = load i32, ptr %13, align 4
  %73 = and i32 %72, -2147483648
  %74 = or i32 %73, 2139095040
  store i32 %74, ptr %13, align 4
  %75 = load i32, ptr %13, align 4
  %76 = load ptr, ptr %8, align 8
  store i32 %75, ptr %76, align 4
  store i32 0, ptr %5, align 4
  br label %744

77:                                               ; preds = %48
  br label %125

78:                                               ; preds = %39
  %79 = load i32, ptr %10, align 4
  %80 = and i32 %79, 4194304
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load ptr, ptr %9, align 8
  %84 = load i32, ptr %83, align 4
  %85 = lshr i32 %84, 4
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 32, ptr %5, align 4
  br label %744

89:                                               ; preds = %82
  %90 = load ptr, ptr %9, align 8
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 2147483647
  %93 = or i32 %92, -2147483648
  %94 = load ptr, ptr %9, align 8
  store i32 %93, ptr %94, align 4
  %95 = load i32, ptr %10, align 4
  %96 = and i32 %95, -6291457
  %97 = or i32 %96, 2097152
  store i32 %97, ptr %10, align 4
  br label %122

98:                                               ; preds = %78
  %99 = load i32, ptr %11, align 4
  %100 = lshr i32 %99, 22
  %101 = and i32 %100, 511
  %102 = icmp eq i32 %101, 511
  br i1 %102, label %103, label %121

103:                                              ; preds = %98
  %104 = load ptr, ptr %9, align 8
  %105 = load i32, ptr %104, align 4
  %106 = lshr i32 %105, 4
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 32, ptr %5, align 4
  br label %744

110:                                              ; preds = %103
  %111 = load ptr, ptr %9, align 8
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 2147483647
  %114 = or i32 %113, -2147483648
  %115 = load ptr, ptr %9, align 8
  store i32 %114, ptr %115, align 4
  %116 = load i32, ptr %11, align 4
  %117 = and i32 %116, -6291457
  %118 = or i32 %117, 2097152
  store i32 %118, ptr %11, align 4
  %119 = load i32, ptr %11, align 4
  %120 = load ptr, ptr %8, align 8
  store i32 %119, ptr %120, align 4
  store i32 0, ptr %5, align 4
  br label %744

121:                                              ; preds = %98
  br label %122

122:                                              ; preds = %121, %89
  %123 = load i32, ptr %10, align 4
  %124 = load ptr, ptr %8, align 8
  store i32 %123, ptr %124, align 4
  store i32 0, ptr %5, align 4
  br label %744

125:                                              ; preds = %77
  br label %126

126:                                              ; preds = %125, %34
  %127 = load i32, ptr %11, align 4
  %128 = lshr i32 %127, 23
  %129 = and i32 %128, 255
  %130 = icmp eq i32 %129, 255
  br i1 %130, label %131, label %183

131:                                              ; preds = %126
  %132 = load i32, ptr %11, align 4
  %133 = and i32 %132, 8388607
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %131
  %136 = load i32, ptr %10, align 4
  %137 = and i32 %136, 2147483647
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = load ptr, ptr %9, align 8
  %141 = load i32, ptr %140, align 4
  %142 = lshr i32 %141, 4
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 32, ptr %5, align 4
  br label %744

146:                                              ; preds = %139
  %147 = load ptr, ptr %9, align 8
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 2147483647
  %150 = or i32 %149, -2147483648
  %151 = load ptr, ptr %9, align 8
  store i32 %150, ptr %151, align 4
  store i32 2141192192, ptr %11, align 4
  %152 = load i32, ptr %11, align 4
  %153 = load ptr, ptr %8, align 8
  store i32 %152, ptr %153, align 4
  store i32 0, ptr %5, align 4
  br label %744

154:                                              ; preds = %135
  %155 = load i32, ptr %13, align 4
  %156 = and i32 %155, -2147483648
  %157 = or i32 %156, 2139095040
  store i32 %157, ptr %13, align 4
  %158 = load i32, ptr %13, align 4
  %159 = load ptr, ptr %8, align 8
  store i32 %158, ptr %159, align 4
  store i32 0, ptr %5, align 4
  br label %744

160:                                              ; preds = %131
  %161 = load i32, ptr %11, align 4
  %162 = and i32 %161, 4194304
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = load ptr, ptr %9, align 8
  %166 = load i32, ptr %165, align 4
  %167 = lshr i32 %166, 4
  %168 = and i32 %167, 1
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32 32, ptr %5, align 4
  br label %744

171:                                              ; preds = %164
  %172 = load ptr, ptr %9, align 8
  %173 = load i32, ptr %172, align 4
  %174 = and i32 %173, 2147483647
  %175 = or i32 %174, -2147483648
  %176 = load ptr, ptr %9, align 8
  store i32 %175, ptr %176, align 4
  %177 = load i32, ptr %11, align 4
  %178 = and i32 %177, -6291457
  %179 = or i32 %178, 2097152
  store i32 %179, ptr %11, align 4
  br label %180

180:                                              ; preds = %171, %160
  %181 = load i32, ptr %11, align 4
  %182 = load ptr, ptr %8, align 8
  store i32 %181, ptr %182, align 4
  store i32 0, ptr %5, align 4
  br label %744

183:                                              ; preds = %126
  %184 = load i32, ptr %10, align 4
  %185 = lshr i32 %184, 23
  %186 = and i32 %185, 255
  %187 = load i32, ptr %11, align 4
  %188 = lshr i32 %187, 23
  %189 = and i32 %188, 255
  %190 = add i32 %186, %189
  %191 = sub i32 %190, 127
  store i32 %191, ptr %14, align 4
  %192 = load i32, ptr %10, align 4
  %193 = lshr i32 %192, 23
  %194 = and i32 %193, 255
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %183
  %197 = load i32, ptr %10, align 4
  %198 = and i32 %197, 8388607
  %199 = or i32 %198, 8388608
  store i32 %199, ptr %10, align 4
  br label %245

200:                                              ; preds = %183
  %201 = load i32, ptr %10, align 4
  %202 = and i32 %201, 8388607
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load i32, ptr %13, align 4
  %206 = and i32 %205, -2147483648
  store i32 %206, ptr %13, align 4
  %207 = load i32, ptr %13, align 4
  %208 = load ptr, ptr %8, align 8
  store i32 %207, ptr %208, align 4
  store i32 0, ptr %5, align 4
  br label %744

209:                                              ; preds = %200
  %210 = load i32, ptr %10, align 4
  %211 = and i32 %210, 8388607
  store i32 %211, ptr %10, align 4
  %212 = load i32, ptr %10, align 4
  %213 = shl i32 %212, 1
  store i32 %213, ptr %10, align 4
  br label %214

214:                                              ; preds = %219, %209
  %215 = load i32, ptr %10, align 4
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load i32, ptr %10, align 4
  %221 = shl i32 %220, 8
  store i32 %221, ptr %10, align 4
  %222 = load i32, ptr %14, align 4
  %223 = sub nsw i32 %222, 8
  store i32 %223, ptr %14, align 4
  br label %214, !llvm.loop !6

224:                                              ; preds = %214
  %225 = load i32, ptr %10, align 4
  %226 = lshr i32 %225, 20
  %227 = and i32 %226, 15
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load i32, ptr %10, align 4
  %231 = shl i32 %230, 4
  store i32 %231, ptr %10, align 4
  %232 = load i32, ptr %14, align 4
  %233 = sub nsw i32 %232, 4
  store i32 %233, ptr %14, align 4
  br label %234

234:                                              ; preds = %229, %224
  br label %235

235:                                              ; preds = %239, %234
  %236 = load i32, ptr %10, align 4
  %237 = and i32 %236, 8388608
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = load i32, ptr %10, align 4
  %241 = shl i32 %240, 1
  store i32 %241, ptr %10, align 4
  %242 = load i32, ptr %14, align 4
  %243 = sub nsw i32 %242, 1
  store i32 %243, ptr %14, align 4
  br label %235, !llvm.loop !8

244:                                              ; preds = %235
  br label %245

245:                                              ; preds = %244, %196
  %246 = load i32, ptr %11, align 4
  %247 = lshr i32 %246, 23
  %248 = and i32 %247, 255
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32, ptr %11, align 4
  %252 = and i32 %251, 8388607
  %253 = or i32 %252, 8388608
  store i32 %253, ptr %11, align 4
  br label %299

254:                                              ; preds = %245
  %255 = load i32, ptr %11, align 4
  %256 = and i32 %255, 8388607
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %254
  %259 = load i32, ptr %13, align 4
  %260 = and i32 %259, -2147483648
  store i32 %260, ptr %13, align 4
  %261 = load i32, ptr %13, align 4
  %262 = load ptr, ptr %8, align 8
  store i32 %261, ptr %262, align 4
  store i32 0, ptr %5, align 4
  br label %744

263:                                              ; preds = %254
  %264 = load i32, ptr %11, align 4
  %265 = and i32 %264, 8388607
  store i32 %265, ptr %11, align 4
  %266 = load i32, ptr %11, align 4
  %267 = shl i32 %266, 1
  store i32 %267, ptr %11, align 4
  br label %268

268:                                              ; preds = %273, %263
  %269 = load i32, ptr %11, align 4
  %270 = lshr i32 %269, 16
  %271 = and i32 %270, 255
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load i32, ptr %11, align 4
  %275 = shl i32 %274, 8
  store i32 %275, ptr %11, align 4
  %276 = load i32, ptr %14, align 4
  %277 = sub nsw i32 %276, 8
  store i32 %277, ptr %14, align 4
  br label %268, !llvm.loop !9

278:                                              ; preds = %268
  %279 = load i32, ptr %11, align 4
  %280 = lshr i32 %279, 20
  %281 = and i32 %280, 15
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load i32, ptr %11, align 4
  %285 = shl i32 %284, 4
  store i32 %285, ptr %11, align 4
  %286 = load i32, ptr %14, align 4
  %287 = sub nsw i32 %286, 4
  store i32 %287, ptr %14, align 4
  br label %288

288:                                              ; preds = %283, %278
  br label %289

289:                                              ; preds = %293, %288
  %290 = load i32, ptr %11, align 4
  %291 = and i32 %290, 8388608
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %289
  %294 = load i32, ptr %11, align 4
  %295 = shl i32 %294, 1
  store i32 %295, ptr %11, align 4
  %296 = load i32, ptr %14, align 4
  %297 = sub nsw i32 %296, 1
  store i32 %297, ptr %14, align 4
  br label %289, !llvm.loop !10

298:                                              ; preds = %289
  br label %299

299:                                              ; preds = %298, %250
  %300 = load i32, ptr %11, align 4
  %301 = shl i32 %300, 4
  store i32 %301, ptr %11, align 4
  store i32 0, ptr %12, align 4
  store i32 1, ptr %15, align 4
  br label %302

302:                                              ; preds = %353, %299
  %303 = load i32, ptr %15, align 4
  %304 = icmp slt i32 %303, 24
  br i1 %304, label %305, label %356

305:                                              ; preds = %302
  %306 = load i32, ptr %12, align 4
  %307 = and i32 %306, 15
  %308 = zext i32 %307 to i64
  %309 = load i64, ptr %18, align 8
  %310 = or i64 %309, %308
  store i64 %310, ptr %18, align 8
  %311 = load i32, ptr %12, align 4
  %312 = lshr i32 %311, 4
  store i32 %312, ptr %12, align 4
  %313 = load i32, ptr %10, align 4
  %314 = lshr i32 %313, 3
  %315 = and i32 %314, 1
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %305
  %318 = load i32, ptr %11, align 4
  %319 = shl i32 %318, 3
  %320 = load i32, ptr %12, align 4
  %321 = add i32 %320, %319
  store i32 %321, ptr %12, align 4
  br label %322

322:                                              ; preds = %317, %305
  %323 = load i32, ptr %10, align 4
  %324 = lshr i32 %323, 2
  %325 = and i32 %324, 1
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = load i32, ptr %11, align 4
  %329 = shl i32 %328, 2
  %330 = load i32, ptr %12, align 4
  %331 = add i32 %330, %329
  store i32 %331, ptr %12, align 4
  br label %332

332:                                              ; preds = %327, %322
  %333 = load i32, ptr %10, align 4
  %334 = lshr i32 %333, 1
  %335 = and i32 %334, 1
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %332
  %338 = load i32, ptr %11, align 4
  %339 = shl i32 %338, 1
  %340 = load i32, ptr %12, align 4
  %341 = add i32 %340, %339
  store i32 %341, ptr %12, align 4
  br label %342

342:                                              ; preds = %337, %332
  %343 = load i32, ptr %10, align 4
  %344 = and i32 %343, 1
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %342
  %347 = load i32, ptr %11, align 4
  %348 = load i32, ptr %12, align 4
  %349 = add i32 %348, %347
  store i32 %349, ptr %12, align 4
  br label %350

350:                                              ; preds = %346, %342
  %351 = load i32, ptr %10, align 4
  %352 = lshr i32 %351, 4
  store i32 %352, ptr %10, align 4
  br label %353

353:                                              ; preds = %350
  %354 = load i32, ptr %15, align 4
  %355 = add nsw i32 %354, 4
  store i32 %355, ptr %15, align 4
  br label %302, !llvm.loop !11

356:                                              ; preds = %302
  %357 = load i32, ptr %12, align 4
  %358 = and i32 %357, -2147483648
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %356
  %361 = load i32, ptr %12, align 4
  %362 = shl i32 %361, 1
  store i32 %362, ptr %12, align 4
  br label %366

363:                                              ; preds = %356
  %364 = load i32, ptr %14, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, ptr %14, align 4
  br label %366

366:                                              ; preds = %363, %360
  br label %367

367:                                              ; preds = %371, %366
  %368 = load i32, ptr %12, align 4
  %369 = and i32 %368, -2147483648
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %367
  %372 = load i32, ptr %12, align 4
  %373 = shl i32 %372, 1
  store i32 %373, ptr %12, align 4
  %374 = load i32, ptr %14, align 4
  %375 = add nsw i32 %374, -1
  store i32 %375, ptr %14, align 4
  br label %367, !llvm.loop !12

376:                                              ; preds = %367
  %377 = load i32, ptr %12, align 4
  %378 = shl i32 %377, 25
  %379 = zext i32 %378 to i64
  %380 = load i64, ptr %18, align 8
  %381 = or i64 %380, %379
  store i64 %381, ptr %18, align 8
  %382 = load i32, ptr %12, align 4
  %383 = lshr i32 %382, 7
  %384 = and i32 %383, 1
  %385 = zext i32 %384 to i64
  store i64 %385, ptr %17, align 8
  %386 = load i64, ptr %17, align 8
  %387 = load i64, ptr %18, align 8
  %388 = or i64 %386, %387
  store i64 %388, ptr %16, align 8
  %389 = load i32, ptr %12, align 4
  %390 = lshr i32 %389, 8
  store i32 %390, ptr %12, align 4
  %391 = load i64, ptr %16, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %449

393:                                              ; preds = %376
  %394 = load i32, ptr %14, align 4
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %402, label %396

396:                                              ; preds = %393
  %397 = load ptr, ptr %9, align 8
  %398 = load i32, ptr %397, align 4
  %399 = lshr i32 %398, 1
  %400 = and i32 %399, 1
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %449

402:                                              ; preds = %396, %393
  %403 = load i32, ptr %12, align 4
  %404 = and i32 %403, 8388607
  store i32 %404, ptr %12, align 4
  %405 = load ptr, ptr %9, align 8
  %406 = load i32, ptr %405, align 4
  %407 = lshr i32 %406, 9
  %408 = and i32 %407, 3
  switch i32 %408, label %440 [
    i32 2, label %409
    i32 3, label %417
    i32 0, label %425
  ]

409:                                              ; preds = %402
  %410 = load i32, ptr %13, align 4
  %411 = and i32 %410, -2147483648
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %409
  %414 = load i32, ptr %12, align 4
  %415 = add i32 %414, 1
  store i32 %415, ptr %12, align 4
  br label %416

416:                                              ; preds = %413, %409
  br label %440

417:                                              ; preds = %402
  %418 = load i32, ptr %13, align 4
  %419 = and i32 %418, -2147483648
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %417
  %422 = load i32, ptr %12, align 4
  %423 = add i32 %422, 1
  store i32 %423, ptr %12, align 4
  br label %424

424:                                              ; preds = %421, %417
  br label %440

425:                                              ; preds = %402
  %426 = load i64, ptr %17, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %439

428:                                              ; preds = %425
  %429 = load i64, ptr %18, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %435, label %431

431:                                              ; preds = %428
  %432 = load i32, ptr %12, align 4
  %433 = and i32 %432, 1
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %431, %428
  %436 = load i32, ptr %12, align 4
  %437 = add i32 %436, 1
  store i32 %437, ptr %12, align 4
  br label %438

438:                                              ; preds = %435, %431
  br label %439

439:                                              ; preds = %438, %425
  br label %440

440:                                              ; preds = %439, %402, %424, %416
  %441 = load i32, ptr %12, align 4
  %442 = lshr i32 %441, 23
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %440
  %446 = load i32, ptr %14, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, ptr %14, align 4
  br label %448

448:                                              ; preds = %445, %440
  br label %449

449:                                              ; preds = %448, %396, %376
  %450 = load i32, ptr %13, align 4
  %451 = and i32 %450, -8388608
  %452 = load i32, ptr %12, align 4
  %453 = and i32 %452, 8388607
  %454 = shl i32 %453, 0
  %455 = or i32 %451, %454
  store i32 %455, ptr %13, align 4
  %456 = load i32, ptr %14, align 4
  %457 = icmp sge i32 %456, 255
  br i1 %457, label %458, label %524

458:                                              ; preds = %449
  %459 = load ptr, ptr %9, align 8
  %460 = load i32, ptr %459, align 4
  %461 = lshr i32 %460, 2
  %462 = and i32 %461, 1
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %491

464:                                              ; preds = %458
  %465 = load i32, ptr %13, align 4
  %466 = and i32 %465, -2139095041
  %467 = load i32, ptr %14, align 4
  %468 = sub nsw i32 %467, 192
  %469 = and i32 %468, 255
  %470 = shl i32 %469, 23
  %471 = or i32 %466, %470
  store i32 %471, ptr %13, align 4
  %472 = load i32, ptr %13, align 4
  %473 = load ptr, ptr %8, align 8
  store i32 %472, ptr %473, align 4
  %474 = load i64, ptr %16, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %490

476:                                              ; preds = %464
  %477 = load ptr, ptr %9, align 8
  %478 = load i32, ptr %477, align 4
  %479 = lshr i32 %478, 0
  %480 = and i32 %479, 1
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %476
  store i32 10, ptr %5, align 4
  br label %744

483:                                              ; preds = %476
  %484 = load ptr, ptr %9, align 8
  %485 = load i32, ptr %484, align 4
  %486 = and i32 %485, -134217729
  %487 = or i32 %486, 134217728
  %488 = load ptr, ptr %9, align 8
  store i32 %487, ptr %488, align 4
  br label %489

489:                                              ; preds = %483
  br label %490

490:                                              ; preds = %489, %464
  store i32 8, ptr %5, align 4
  br label %744

491:                                              ; preds = %458
  store i64 1, ptr %16, align 8
  %492 = load ptr, ptr %9, align 8
  %493 = load i32, ptr %492, align 4
  %494 = and i32 %493, -536870913
  %495 = or i32 %494, 536870912
  %496 = load ptr, ptr %9, align 8
  store i32 %495, ptr %496, align 4
  %497 = load ptr, ptr %9, align 8
  %498 = load i32, ptr %497, align 4
  %499 = lshr i32 %498, 9
  %500 = and i32 %499, 3
  switch i32 %500, label %523 [
    i32 2, label %501
    i32 3, label %508
    i32 0, label %515
    i32 1, label %519
  ]

501:                                              ; preds = %491
  %502 = load i32, ptr %13, align 4
  %503 = and i32 %502, -2147483648
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %506

505:                                              ; preds = %501
  store i32 -8388609, ptr %13, align 4
  br label %507

506:                                              ; preds = %501
  store i32 2139095040, ptr %13, align 4
  br label %507

507:                                              ; preds = %506, %505
  br label %523

508:                                              ; preds = %491
  %509 = load i32, ptr %13, align 4
  %510 = and i32 %509, -2147483648
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %508
  store i32 2139095039, ptr %13, align 4
  br label %514

513:                                              ; preds = %508
  store i32 -8388608, ptr %13, align 4
  br label %514

514:                                              ; preds = %513, %512
  br label %523

515:                                              ; preds = %491
  %516 = load i32, ptr %13, align 4
  %517 = and i32 %516, -2147483648
  %518 = or i32 %517, 2139095040
  store i32 %518, ptr %13, align 4
  br label %523

519:                                              ; preds = %491
  %520 = load i32, ptr %13, align 4
  %521 = and i32 %520, -2147483648
  %522 = or i32 %521, 2139095039
  store i32 %522, ptr %13, align 4
  br label %523

523:                                              ; preds = %519, %491, %515, %514, %507
  br label %724

524:                                              ; preds = %449
  %525 = load i32, ptr %14, align 4
  %526 = icmp sle i32 %525, 0
  br i1 %526, label %527, label %716

527:                                              ; preds = %524
  %528 = load ptr, ptr %9, align 8
  %529 = load i32, ptr %528, align 4
  %530 = lshr i32 %529, 1
  %531 = and i32 %530, 1
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %560

533:                                              ; preds = %527
  %534 = load i32, ptr %13, align 4
  %535 = and i32 %534, -2139095041
  %536 = load i32, ptr %14, align 4
  %537 = add nsw i32 %536, 192
  %538 = and i32 %537, 255
  %539 = shl i32 %538, 23
  %540 = or i32 %535, %539
  store i32 %540, ptr %13, align 4
  %541 = load i32, ptr %13, align 4
  %542 = load ptr, ptr %8, align 8
  store i32 %541, ptr %542, align 4
  %543 = load i64, ptr %16, align 8
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %559

545:                                              ; preds = %533
  %546 = load ptr, ptr %9, align 8
  %547 = load i32, ptr %546, align 4
  %548 = lshr i32 %547, 0
  %549 = and i32 %548, 1
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %545
  store i32 6, ptr %5, align 4
  br label %744

552:                                              ; preds = %545
  %553 = load ptr, ptr %9, align 8
  %554 = load i32, ptr %553, align 4
  %555 = and i32 %554, -134217729
  %556 = or i32 %555, 134217728
  %557 = load ptr, ptr %9, align 8
  store i32 %556, ptr %557, align 4
  br label %558

558:                                              ; preds = %552
  br label %559

559:                                              ; preds = %558, %533
  store i32 4, ptr %5, align 4
  br label %744

560:                                              ; preds = %527
  store i64 1, ptr %19, align 8
  %561 = load i32, ptr %14, align 4
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %623

563:                                              ; preds = %560
  %564 = load i64, ptr %16, align 8
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %623

566:                                              ; preds = %563
  %567 = load ptr, ptr %9, align 8
  %568 = load i32, ptr %567, align 4
  %569 = lshr i32 %568, 9
  %570 = and i32 %569, 3
  switch i32 %570, label %622 [
    i32 2, label %571
    i32 3, label %586
    i32 0, label %601
  ]

571:                                              ; preds = %566
  %572 = load i32, ptr %13, align 4
  %573 = and i32 %572, -2147483648
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %585

575:                                              ; preds = %571
  %576 = load i32, ptr %12, align 4
  %577 = add i32 %576, 1
  store i32 %577, ptr %12, align 4
  %578 = load i32, ptr %12, align 4
  %579 = and i32 %578, 16777216
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %582

581:                                              ; preds = %575
  store i64 0, ptr %19, align 8
  br label %582

582:                                              ; preds = %581, %575
  %583 = load i32, ptr %12, align 4
  %584 = sub i32 %583, 1
  store i32 %584, ptr %12, align 4
  br label %585

585:                                              ; preds = %582, %571
  br label %622

586:                                              ; preds = %566
  %587 = load i32, ptr %13, align 4
  %588 = and i32 %587, -2147483648
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %600

590:                                              ; preds = %586
  %591 = load i32, ptr %12, align 4
  %592 = add i32 %591, 1
  store i32 %592, ptr %12, align 4
  %593 = load i32, ptr %12, align 4
  %594 = and i32 %593, 16777216
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %590
  store i64 0, ptr %19, align 8
  br label %597

597:                                              ; preds = %596, %590
  %598 = load i32, ptr %12, align 4
  %599 = sub i32 %598, 1
  store i32 %599, ptr %12, align 4
  br label %600

600:                                              ; preds = %597, %586
  br label %622

601:                                              ; preds = %566
  %602 = load i64, ptr %17, align 8
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %621

604:                                              ; preds = %601
  %605 = load i64, ptr %18, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %611, label %607

607:                                              ; preds = %604
  %608 = load i32, ptr %12, align 4
  %609 = and i32 %608, 1
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %621

611:                                              ; preds = %607, %604
  %612 = load i32, ptr %12, align 4
  %613 = add i32 %612, 1
  store i32 %613, ptr %12, align 4
  %614 = load i32, ptr %12, align 4
  %615 = and i32 %614, 16777216
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %618

617:                                              ; preds = %611
  store i64 0, ptr %19, align 8
  br label %618

618:                                              ; preds = %617, %611
  %619 = load i32, ptr %12, align 4
  %620 = sub i32 %619, 1
  store i32 %620, ptr %12, align 4
  br label %621

621:                                              ; preds = %618, %607, %601
  br label %622

622:                                              ; preds = %566, %621, %600, %585
  br label %623

623:                                              ; preds = %622, %563, %560
  %624 = load i64, ptr %16, align 8
  store i64 %624, ptr %18, align 8
  %625 = load i32, ptr %12, align 4
  %626 = and i32 %625, 8388607
  %627 = or i32 %626, 8388608
  store i32 %627, ptr %12, align 4
  %628 = load i32, ptr %14, align 4
  %629 = icmp sge i32 %628, -23
  br i1 %629, label %630, label %655

630:                                              ; preds = %623
  %631 = load i32, ptr %12, align 4
  %632 = load i32, ptr %14, align 4
  %633 = sub nsw i32 0, %632
  %634 = lshr i32 %631, %633
  %635 = and i32 %634, 1
  %636 = zext i32 %635 to i64
  store i64 %636, ptr %17, align 8
  %637 = load i32, ptr %14, align 4
  %638 = icmp slt i32 %637, 0
  br i1 %638, label %639, label %647

639:                                              ; preds = %630
  %640 = load i32, ptr %12, align 4
  %641 = load i32, ptr %14, align 4
  %642 = add nsw i32 32, %641
  %643 = shl i32 %640, %642
  %644 = zext i32 %643 to i64
  %645 = load i64, ptr %18, align 8
  %646 = or i64 %645, %644
  store i64 %646, ptr %18, align 8
  br label %647

647:                                              ; preds = %639, %630
  %648 = load i64, ptr %17, align 8
  %649 = load i64, ptr %18, align 8
  %650 = or i64 %648, %649
  store i64 %650, ptr %16, align 8
  %651 = load i32, ptr %14, align 4
  %652 = sub nsw i32 1, %651
  %653 = load i32, ptr %12, align 4
  %654 = lshr i32 %653, %652
  store i32 %654, ptr %12, align 4
  br label %661

655:                                              ; preds = %623
  store i64 0, ptr %17, align 8
  %656 = load i32, ptr %12, align 4
  %657 = zext i32 %656 to i64
  %658 = load i64, ptr %18, align 8
  %659 = or i64 %658, %657
  store i64 %659, ptr %18, align 8
  %660 = load i64, ptr %18, align 8
  store i64 %660, ptr %16, align 8
  store i32 0, ptr %12, align 4
  br label %661

661:                                              ; preds = %655, %647
  %662 = load i64, ptr %16, align 8
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %664, label %709

664:                                              ; preds = %661
  %665 = load ptr, ptr %9, align 8
  %666 = load i32, ptr %665, align 4
  %667 = lshr i32 %666, 9
  %668 = and i32 %667, 3
  switch i32 %668, label %699 [
    i32 2, label %669
    i32 3, label %677
    i32 0, label %685
  ]

669:                                              ; preds = %664
  %670 = load i32, ptr %13, align 4
  %671 = and i32 %670, -2147483648
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %676

673:                                              ; preds = %669
  %674 = load i32, ptr %12, align 4
  %675 = add i32 %674, 1
  store i32 %675, ptr %12, align 4
  br label %676

676:                                              ; preds = %673, %669
  br label %699

677:                                              ; preds = %664
  %678 = load i32, ptr %13, align 4
  %679 = and i32 %678, -2147483648
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %684

681:                                              ; preds = %677
  %682 = load i32, ptr %12, align 4
  %683 = add i32 %682, 1
  store i32 %683, ptr %12, align 4
  br label %684

684:                                              ; preds = %681, %677
  br label %699

685:                                              ; preds = %664
  %686 = load i64, ptr %17, align 8
  %687 = icmp ne i64 %686, 0
  br i1 %687, label %688, label %698

688:                                              ; preds = %685
  %689 = load i64, ptr %18, align 8
  %690 = icmp ne i64 %689, 0
  br i1 %690, label %695, label %691

691:                                              ; preds = %688
  %692 = load i32, ptr %12, align 4
  %693 = and i32 %692, 1
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %698

695:                                              ; preds = %691, %688
  %696 = load i32, ptr %12, align 4
  %697 = add i32 %696, 1
  store i32 %697, ptr %12, align 4
  br label %698

698:                                              ; preds = %695, %691, %685
  br label %699

699:                                              ; preds = %664, %698, %684, %676
  %700 = load i64, ptr %19, align 8
  %701 = icmp ne i64 %700, 0
  br i1 %701, label %702, label %708

702:                                              ; preds = %699
  %703 = load ptr, ptr %9, align 8
  %704 = load i32, ptr %703, align 4
  %705 = and i32 %704, -268435457
  %706 = or i32 %705, 268435456
  %707 = load ptr, ptr %9, align 8
  store i32 %706, ptr %707, align 4
  br label %708

708:                                              ; preds = %702, %699
  br label %709

709:                                              ; preds = %708, %661
  %710 = load i32, ptr %13, align 4
  %711 = and i32 %710, -2147483648
  %712 = load i32, ptr %12, align 4
  %713 = and i32 %712, 2147483647
  %714 = shl i32 %713, 0
  %715 = or i32 %711, %714
  store i32 %715, ptr %13, align 4
  br label %723

716:                                              ; preds = %524
  %717 = load i32, ptr %13, align 4
  %718 = and i32 %717, -2139095041
  %719 = load i32, ptr %14, align 4
  %720 = and i32 %719, 255
  %721 = shl i32 %720, 23
  %722 = or i32 %718, %721
  store i32 %722, ptr %13, align 4
  br label %723

723:                                              ; preds = %716, %709
  br label %724

724:                                              ; preds = %723, %523
  %725 = load i32, ptr %13, align 4
  %726 = load ptr, ptr %8, align 8
  store i32 %725, ptr %726, align 4
  %727 = load i64, ptr %16, align 8
  %728 = icmp ne i64 %727, 0
  br i1 %728, label %729, label %743

729:                                              ; preds = %724
  %730 = load ptr, ptr %9, align 8
  %731 = load i32, ptr %730, align 4
  %732 = lshr i32 %731, 0
  %733 = and i32 %732, 1
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %736

735:                                              ; preds = %729
  store i32 2, ptr %5, align 4
  br label %744

736:                                              ; preds = %729
  %737 = load ptr, ptr %9, align 8
  %738 = load i32, ptr %737, align 4
  %739 = and i32 %738, -134217729
  %740 = or i32 %739, 134217728
  %741 = load ptr, ptr %9, align 8
  store i32 %740, ptr %741, align 4
  br label %742

742:                                              ; preds = %736
  br label %743

743:                                              ; preds = %742, %724
  store i32 0, ptr %5, align 4
  br label %744

744:                                              ; preds = %743, %735, %559, %551, %490, %482, %258, %204, %180, %170, %154, %146, %145, %122, %110, %109, %88, %71, %63, %62
  %745 = load i32, ptr %5, align 4
  ret i32 %745
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
