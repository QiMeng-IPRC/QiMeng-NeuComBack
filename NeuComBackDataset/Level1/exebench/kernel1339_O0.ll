; ModuleID = '../benchmarks/fine_grained/exebench/kernel1339.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1339.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@drotmg_.zero = internal global i64 0, align 8
@drotmg_.one = internal global i64 1, align 8
@drotmg_.two = internal global i64 2, align 8
@drotmg_.gam = internal global i64 4096, align 8
@drotmg_.gamsq = internal global i64 16777216, align 8
@drotmg_.rgamsq = internal global i64 0, align 8
@drotmg_.fmt_120 = internal global [1 x i8] zeroinitializer, align 1
@drotmg_.fmt_150 = internal global [1 x i8] zeroinitializer, align 1
@drotmg_.fmt_180 = internal global [1 x i8] zeroinitializer, align 1
@drotmg_.fmt_210 = internal global [1 x i8] zeroinitializer, align 1
@drotmg_.igo_fmt = internal global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drotmg_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %24 = load ptr, ptr %10, align 8
  %25 = getelementptr inbounds i64, ptr %24, i32 -1
  store ptr %25, ptr %10, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load i64, ptr %26, align 8
  %28 = load i64, ptr @drotmg_.zero, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %32

31:                                               ; preds = %5
  br label %150

32:                                               ; preds = %30
  %33 = load ptr, ptr %7, align 8
  %34 = load i64, ptr %33, align 8
  %35 = load ptr, ptr %9, align 8
  %36 = load i64, ptr %35, align 8
  %37 = mul nsw i64 %34, %36
  store i64 %37, ptr %14, align 8
  %38 = load i64, ptr %14, align 8
  %39 = load i64, ptr @drotmg_.zero, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %45

42:                                               ; preds = %32
  %43 = load i64, ptr @drotmg_.two, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, ptr %22, align 8
  br label %356

45:                                               ; preds = %41
  %46 = load ptr, ptr %6, align 8
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %8, align 8
  %49 = load i64, ptr %48, align 8
  %50 = mul nsw i64 %47, %49
  store i64 %50, ptr %13, align 8
  %51 = load i64, ptr %14, align 8
  %52 = load ptr, ptr %9, align 8
  %53 = load i64, ptr %52, align 8
  %54 = mul nsw i64 %51, %53
  store i64 %54, ptr %16, align 8
  %55 = load i64, ptr %13, align 8
  %56 = load ptr, ptr %8, align 8
  %57 = load i64, ptr %56, align 8
  %58 = mul nsw i64 %55, %57
  store i64 %58, ptr %15, align 8
  %59 = load i64, ptr %15, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i64, ptr %15, align 8
  br label %66

63:                                               ; preds = %45
  %64 = load i64, ptr %15, align 8
  %65 = sub nsw i64 0, %64
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i64 [ %62, %61 ], [ %65, %63 ]
  %68 = load i64, ptr %16, align 8
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, ptr %16, align 8
  br label %75

72:                                               ; preds = %66
  %73 = load i64, ptr %16, align 8
  %74 = sub nsw i64 0, %73
  br label %75

75:                                               ; preds = %72, %70
  %76 = phi i64 [ %71, %70 ], [ %74, %72 ]
  %77 = icmp sgt i64 %67, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %113

79:                                               ; preds = %75
  %80 = load ptr, ptr %9, align 8
  %81 = load i64, ptr %80, align 8
  %82 = sub nsw i64 0, %81
  %83 = load ptr, ptr %8, align 8
  %84 = load i64, ptr %83, align 8
  %85 = sdiv i64 %82, %84
  store i64 %85, ptr %19, align 8
  %86 = load i64, ptr %14, align 8
  %87 = load i64, ptr %13, align 8
  %88 = sdiv i64 %86, %87
  store i64 %88, ptr %18, align 8
  %89 = load i64, ptr @drotmg_.one, align 8
  %90 = load i64, ptr %18, align 8
  %91 = load i64, ptr %19, align 8
  %92 = mul nsw i64 %90, %91
  %93 = sub nsw i64 %89, %92
  store i64 %93, ptr %12, align 8
  %94 = load i64, ptr %12, align 8
  %95 = load i64, ptr @drotmg_.zero, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %98, label %97

97:                                               ; preds = %79
  br label %99

98:                                               ; preds = %79
  br label %150

99:                                               ; preds = %97
  %100 = load i64, ptr @drotmg_.zero, align 8
  store i64 %100, ptr %22, align 8
  %101 = load i64, ptr %12, align 8
  %102 = load ptr, ptr %6, align 8
  %103 = load i64, ptr %102, align 8
  %104 = sdiv i64 %103, %101
  store i64 %104, ptr %102, align 8
  %105 = load i64, ptr %12, align 8
  %106 = load ptr, ptr %7, align 8
  %107 = load i64, ptr %106, align 8
  %108 = sdiv i64 %107, %105
  store i64 %108, ptr %106, align 8
  %109 = load i64, ptr %12, align 8
  %110 = load ptr, ptr %8, align 8
  %111 = load i64, ptr %110, align 8
  %112 = mul nsw i64 %111, %109
  store i64 %112, ptr %110, align 8
  br label %191

113:                                              ; preds = %78
  %114 = load i64, ptr %16, align 8
  %115 = load i64, ptr @drotmg_.zero, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %119

118:                                              ; preds = %113
  br label %150

119:                                              ; preds = %117
  %120 = load i64, ptr @drotmg_.one, align 8
  store i64 %120, ptr %22, align 8
  %121 = load i64, ptr %13, align 8
  %122 = load i64, ptr %14, align 8
  %123 = sdiv i64 %121, %122
  store i64 %123, ptr %17, align 8
  %124 = load ptr, ptr %8, align 8
  %125 = load i64, ptr %124, align 8
  %126 = load ptr, ptr %9, align 8
  %127 = load i64, ptr %126, align 8
  %128 = sdiv i64 %125, %127
  store i64 %128, ptr %20, align 8
  %129 = load i64, ptr @drotmg_.one, align 8
  %130 = load i64, ptr %17, align 8
  %131 = load i64, ptr %20, align 8
  %132 = mul nsw i64 %130, %131
  %133 = add nsw i64 %129, %132
  store i64 %133, ptr %12, align 8
  %134 = load ptr, ptr %7, align 8
  %135 = load i64, ptr %134, align 8
  %136 = load i64, ptr %12, align 8
  %137 = sdiv i64 %135, %136
  store i64 %137, ptr %23, align 8
  %138 = load ptr, ptr %6, align 8
  %139 = load i64, ptr %138, align 8
  %140 = load i64, ptr %12, align 8
  %141 = sdiv i64 %139, %140
  %142 = load ptr, ptr %7, align 8
  store i64 %141, ptr %142, align 8
  %143 = load i64, ptr %23, align 8
  %144 = load ptr, ptr %6, align 8
  store i64 %143, ptr %144, align 8
  %145 = load ptr, ptr %9, align 8
  %146 = load i64, ptr %145, align 8
  %147 = load i64, ptr %12, align 8
  %148 = mul nsw i64 %146, %147
  %149 = load ptr, ptr %8, align 8
  store i64 %148, ptr %149, align 8
  br label %191

150:                                              ; preds = %118, %98, %31
  %151 = load i64, ptr @drotmg_.one, align 8
  %152 = sub nsw i64 0, %151
  store i64 %152, ptr %22, align 8
  %153 = load i64, ptr @drotmg_.zero, align 8
  store i64 %153, ptr %17, align 8
  %154 = load i64, ptr @drotmg_.zero, align 8
  store i64 %154, ptr %18, align 8
  %155 = load i64, ptr @drotmg_.zero, align 8
  store i64 %155, ptr %19, align 8
  %156 = load i64, ptr @drotmg_.zero, align 8
  store i64 %156, ptr %20, align 8
  %157 = load i64, ptr @drotmg_.zero, align 8
  %158 = load ptr, ptr %6, align 8
  store i64 %157, ptr %158, align 8
  %159 = load i64, ptr @drotmg_.zero, align 8
  %160 = load ptr, ptr %7, align 8
  store i64 %159, ptr %160, align 8
  %161 = load i64, ptr @drotmg_.zero, align 8
  %162 = load ptr, ptr %8, align 8
  store i64 %161, ptr %162, align 8
  br label %319

163:                                              ; preds = %304, %272, %230, %204
  %164 = load i64, ptr %22, align 8
  %165 = load i64, ptr @drotmg_.zero, align 8
  %166 = icmp sge i64 %164, %165
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  br label %184

168:                                              ; preds = %163
  %169 = load i64, ptr %22, align 8
  %170 = load i64, ptr @drotmg_.zero, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  br label %178

173:                                              ; preds = %168
  %174 = load i64, ptr @drotmg_.one, align 8
  store i64 %174, ptr %17, align 8
  %175 = load i64, ptr @drotmg_.one, align 8
  store i64 %175, ptr %20, align 8
  %176 = load i64, ptr @drotmg_.one, align 8
  %177 = sub nsw i64 0, %176
  store i64 %177, ptr %22, align 8
  br label %184

178:                                              ; preds = %172
  %179 = load i64, ptr @drotmg_.one, align 8
  %180 = sub nsw i64 0, %179
  store i64 %180, ptr %19, align 8
  %181 = load i64, ptr @drotmg_.one, align 8
  store i64 %181, ptr %18, align 8
  %182 = load i64, ptr @drotmg_.one, align 8
  %183 = sub nsw i64 0, %182
  store i64 %183, ptr %22, align 8
  br label %184

184:                                              ; preds = %178, %173, %167
  %185 = load i32, ptr %21, align 4
  switch i32 %185, label %190 [
    i32 0, label %186
    i32 1, label %187
    i32 2, label %188
    i32 3, label %189
  ]

186:                                              ; preds = %184
  br label %205

187:                                              ; preds = %184
  br label %231

188:                                              ; preds = %184
  br label %273

189:                                              ; preds = %184
  br label %305

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %190, %119, %99
  br label %192

192:                                              ; preds = %205, %191
  %193 = load ptr, ptr %6, align 8
  %194 = load i64, ptr %193, align 8
  %195 = load i64, ptr @drotmg_.rgamsq, align 8
  %196 = icmp sle i64 %194, %195
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  br label %223

198:                                              ; preds = %192
  %199 = load ptr, ptr %6, align 8
  %200 = load i64, ptr %199, align 8
  %201 = load i64, ptr @drotmg_.zero, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %249

204:                                              ; preds = %198
  store i32 0, ptr %21, align 4
  store ptr @drotmg_.fmt_120, ptr @drotmg_.igo_fmt, align 8
  br label %163

205:                                              ; preds = %186
  %206 = load i64, ptr @drotmg_.gam, align 8
  store i64 %206, ptr %11, align 8
  %207 = load i64, ptr %11, align 8
  %208 = load i64, ptr %11, align 8
  %209 = mul nsw i64 %207, %208
  %210 = load ptr, ptr %6, align 8
  %211 = load i64, ptr %210, align 8
  %212 = mul nsw i64 %211, %209
  store i64 %212, ptr %210, align 8
  %213 = load i64, ptr @drotmg_.gam, align 8
  %214 = load ptr, ptr %8, align 8
  %215 = load i64, ptr %214, align 8
  %216 = sdiv i64 %215, %213
  store i64 %216, ptr %214, align 8
  %217 = load i64, ptr @drotmg_.gam, align 8
  %218 = load i64, ptr %17, align 8
  %219 = sdiv i64 %218, %217
  store i64 %219, ptr %17, align 8
  %220 = load i64, ptr @drotmg_.gam, align 8
  %221 = load i64, ptr %18, align 8
  %222 = sdiv i64 %221, %220
  store i64 %222, ptr %18, align 8
  br label %192

223:                                              ; preds = %197
  br label %224

224:                                              ; preds = %231, %223
  %225 = load ptr, ptr %6, align 8
  %226 = load i64, ptr %225, align 8
  %227 = load i64, ptr @drotmg_.gamsq, align 8
  %228 = icmp sge i64 %226, %227
  br i1 %228, label %230, label %229

229:                                              ; preds = %224
  br label %249

230:                                              ; preds = %224
  store i32 1, ptr %21, align 4
  store ptr @drotmg_.fmt_150, ptr @drotmg_.igo_fmt, align 8
  br label %163

231:                                              ; preds = %187
  %232 = load i64, ptr @drotmg_.gam, align 8
  store i64 %232, ptr %11, align 8
  %233 = load i64, ptr %11, align 8
  %234 = load i64, ptr %11, align 8
  %235 = mul nsw i64 %233, %234
  %236 = load ptr, ptr %6, align 8
  %237 = load i64, ptr %236, align 8
  %238 = sdiv i64 %237, %235
  store i64 %238, ptr %236, align 8
  %239 = load i64, ptr @drotmg_.gam, align 8
  %240 = load ptr, ptr %8, align 8
  %241 = load i64, ptr %240, align 8
  %242 = mul nsw i64 %241, %239
  store i64 %242, ptr %240, align 8
  %243 = load i64, ptr @drotmg_.gam, align 8
  %244 = load i64, ptr %17, align 8
  %245 = mul nsw i64 %244, %243
  store i64 %245, ptr %17, align 8
  %246 = load i64, ptr @drotmg_.gam, align 8
  %247 = load i64, ptr %18, align 8
  %248 = mul nsw i64 %247, %246
  store i64 %248, ptr %18, align 8
  br label %224

249:                                              ; preds = %229, %203
  br label %250

250:                                              ; preds = %273, %249
  %251 = load ptr, ptr %7, align 8
  %252 = load i64, ptr %251, align 8
  %253 = icmp sge i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  %255 = load ptr, ptr %7, align 8
  %256 = load i64, ptr %255, align 8
  br label %261

257:                                              ; preds = %250
  %258 = load ptr, ptr %7, align 8
  %259 = load i64, ptr %258, align 8
  %260 = sub nsw i64 0, %259
  br label %261

261:                                              ; preds = %257, %254
  %262 = phi i64 [ %256, %254 ], [ %260, %257 ]
  %263 = load i64, ptr @drotmg_.rgamsq, align 8
  %264 = icmp sle i64 %262, %263
  br i1 %264, label %266, label %265

265:                                              ; preds = %261
  br label %287

266:                                              ; preds = %261
  %267 = load ptr, ptr %7, align 8
  %268 = load i64, ptr %267, align 8
  %269 = load i64, ptr @drotmg_.zero, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %266
  br label %319

272:                                              ; preds = %266
  store i32 2, ptr %21, align 4
  store ptr @drotmg_.fmt_180, ptr @drotmg_.igo_fmt, align 8
  br label %163

273:                                              ; preds = %188
  %274 = load i64, ptr @drotmg_.gam, align 8
  store i64 %274, ptr %11, align 8
  %275 = load i64, ptr %11, align 8
  %276 = load i64, ptr %11, align 8
  %277 = mul nsw i64 %275, %276
  %278 = load ptr, ptr %7, align 8
  %279 = load i64, ptr %278, align 8
  %280 = mul nsw i64 %279, %277
  store i64 %280, ptr %278, align 8
  %281 = load i64, ptr @drotmg_.gam, align 8
  %282 = load i64, ptr %19, align 8
  %283 = sdiv i64 %282, %281
  store i64 %283, ptr %19, align 8
  %284 = load i64, ptr @drotmg_.gam, align 8
  %285 = load i64, ptr %20, align 8
  %286 = sdiv i64 %285, %284
  store i64 %286, ptr %20, align 8
  br label %250

287:                                              ; preds = %265
  br label %288

288:                                              ; preds = %305, %287
  %289 = load ptr, ptr %7, align 8
  %290 = load i64, ptr %289, align 8
  %291 = icmp sge i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = load ptr, ptr %7, align 8
  %294 = load i64, ptr %293, align 8
  br label %299

295:                                              ; preds = %288
  %296 = load ptr, ptr %7, align 8
  %297 = load i64, ptr %296, align 8
  %298 = sub nsw i64 0, %297
  br label %299

299:                                              ; preds = %295, %292
  %300 = phi i64 [ %294, %292 ], [ %298, %295 ]
  %301 = load i64, ptr @drotmg_.gamsq, align 8
  %302 = icmp sge i64 %300, %301
  br i1 %302, label %304, label %303

303:                                              ; preds = %299
  br label %319

304:                                              ; preds = %299
  store i32 3, ptr %21, align 4
  store ptr @drotmg_.fmt_210, ptr @drotmg_.igo_fmt, align 8
  br label %163

305:                                              ; preds = %189
  %306 = load i64, ptr @drotmg_.gam, align 8
  store i64 %306, ptr %11, align 8
  %307 = load i64, ptr %11, align 8
  %308 = load i64, ptr %11, align 8
  %309 = mul nsw i64 %307, %308
  %310 = load ptr, ptr %7, align 8
  %311 = load i64, ptr %310, align 8
  %312 = sdiv i64 %311, %309
  store i64 %312, ptr %310, align 8
  %313 = load i64, ptr @drotmg_.gam, align 8
  %314 = load i64, ptr %19, align 8
  %315 = mul nsw i64 %314, %313
  store i64 %315, ptr %19, align 8
  %316 = load i64, ptr @drotmg_.gam, align 8
  %317 = load i64, ptr %20, align 8
  %318 = mul nsw i64 %317, %316
  store i64 %318, ptr %20, align 8
  br label %288

319:                                              ; preds = %303, %271, %150
  %320 = load i64, ptr %22, align 8
  %321 = sitofp i64 %320 to double
  %322 = fcmp olt double %321, 0.000000e+00
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  br label %343

324:                                              ; preds = %319
  %325 = load i64, ptr %22, align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %324
  br label %329

328:                                              ; preds = %324
  br label %336

329:                                              ; preds = %327
  %330 = load i64, ptr %19, align 8
  %331 = load ptr, ptr %10, align 8
  %332 = getelementptr inbounds i64, ptr %331, i64 3
  store i64 %330, ptr %332, align 8
  %333 = load i64, ptr %18, align 8
  %334 = load ptr, ptr %10, align 8
  %335 = getelementptr inbounds i64, ptr %334, i64 4
  store i64 %333, ptr %335, align 8
  br label %356

336:                                              ; preds = %328
  %337 = load i64, ptr %17, align 8
  %338 = load ptr, ptr %10, align 8
  %339 = getelementptr inbounds i64, ptr %338, i64 2
  store i64 %337, ptr %339, align 8
  %340 = load i64, ptr %20, align 8
  %341 = load ptr, ptr %10, align 8
  %342 = getelementptr inbounds i64, ptr %341, i64 5
  store i64 %340, ptr %342, align 8
  br label %356

343:                                              ; preds = %323
  %344 = load i64, ptr %17, align 8
  %345 = load ptr, ptr %10, align 8
  %346 = getelementptr inbounds i64, ptr %345, i64 2
  store i64 %344, ptr %346, align 8
  %347 = load i64, ptr %19, align 8
  %348 = load ptr, ptr %10, align 8
  %349 = getelementptr inbounds i64, ptr %348, i64 3
  store i64 %347, ptr %349, align 8
  %350 = load i64, ptr %18, align 8
  %351 = load ptr, ptr %10, align 8
  %352 = getelementptr inbounds i64, ptr %351, i64 4
  store i64 %350, ptr %352, align 8
  %353 = load i64, ptr %20, align 8
  %354 = load ptr, ptr %10, align 8
  %355 = getelementptr inbounds i64, ptr %354, i64 5
  store i64 %353, ptr %355, align 8
  br label %356

356:                                              ; preds = %343, %336, %329, %42
  %357 = load i64, ptr %22, align 8
  %358 = load ptr, ptr %10, align 8
  %359 = getelementptr inbounds i64, ptr %358, i64 1
  store i64 %357, ptr %359, align 8
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
