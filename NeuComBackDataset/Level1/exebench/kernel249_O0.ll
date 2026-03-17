; ModuleID = '../benchmarks/fine_grained/exebench/kernel249.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel249.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pc2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, ptr %5, i32 0, i32 0
  store i32 0, ptr %6, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16384
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 8388608
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %12, %2
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2048
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 4194304
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %23, %17
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 131072
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, ptr %35, i32 0, i32 0
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, 2097152
  store i32 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 16
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, 1048576
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %45, %39
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, ptr %51, i32 0, i32 0
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 134217728
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, 524288
  store i32 %60, ptr %58, align 4
  br label %61

61:                                               ; preds = %56, %50
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 8388608
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, 262144
  store i32 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, ptr %73, i32 0, i32 0
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 33554432
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load ptr, ptr %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, ptr %79, i32 0, i32 0
  %81 = load i32, ptr %80, align 4
  %82 = or i32 %81, 131072
  store i32 %82, ptr %80, align 4
  br label %83

83:                                               ; preds = %78, %72
  %84 = load ptr, ptr %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, ptr %84, i32 0, i32 0
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load ptr, ptr %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, ptr %90, i32 0, i32 0
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 65536
  store i32 %93, ptr %91, align 4
  br label %94

94:                                               ; preds = %89, %83
  %95 = load ptr, ptr %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, ptr %95, i32 0, i32 0
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 8192
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load ptr, ptr %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, ptr %101, i32 0, i32 0
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, 32768
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %100, %94
  %106 = load ptr, ptr %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, ptr %106, i32 0, i32 0
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 4194304
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load ptr, ptr %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, ptr %112, i32 0, i32 0
  %114 = load i32, ptr %113, align 4
  %115 = or i32 %114, 16384
  store i32 %115, ptr %113, align 4
  br label %116

116:                                              ; preds = %111, %105
  %117 = load ptr, ptr %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, ptr %117, i32 0, i32 0
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 128
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load ptr, ptr %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, ptr %123, i32 0, i32 0
  %125 = load i32, ptr %124, align 4
  %126 = or i32 %125, 8192
  store i32 %126, ptr %124, align 4
  br label %127

127:                                              ; preds = %122, %116
  %128 = load ptr, ptr %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, ptr %128, i32 0, i32 0
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 262144
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load ptr, ptr %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, ptr %134, i32 0, i32 0
  %136 = load i32, ptr %135, align 4
  %137 = or i32 %136, 4096
  store i32 %137, ptr %135, align 4
  br label %138

138:                                              ; preds = %133, %127
  %139 = load ptr, ptr %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, ptr %139, i32 0, i32 0
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load ptr, ptr %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, ptr %145, i32 0, i32 0
  %147 = load i32, ptr %146, align 4
  %148 = or i32 %147, 2048
  store i32 %148, ptr %146, align 4
  br label %149

149:                                              ; preds = %144, %138
  %150 = load ptr, ptr %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, ptr %150, i32 0, i32 0
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %152, 512
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load ptr, ptr %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, ptr %156, i32 0, i32 0
  %158 = load i32, ptr %157, align 4
  %159 = or i32 %158, 1024
  store i32 %159, ptr %157, align 4
  br label %160

160:                                              ; preds = %155, %149
  %161 = load ptr, ptr %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, ptr %161, i32 0, i32 0
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 65536
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load ptr, ptr %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, ptr %167, i32 0, i32 0
  %169 = load i32, ptr %168, align 4
  %170 = or i32 %169, 512
  store i32 %170, ptr %168, align 4
  br label %171

171:                                              ; preds = %166, %160
  %172 = load ptr, ptr %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, ptr %172, i32 0, i32 0
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, 16777216
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load ptr, ptr %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, ptr %178, i32 0, i32 0
  %180 = load i32, ptr %179, align 4
  %181 = or i32 %180, 256
  store i32 %181, ptr %179, align 4
  br label %182

182:                                              ; preds = %177, %171
  %183 = load ptr, ptr %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, ptr %183, i32 0, i32 0
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = load ptr, ptr %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, ptr %189, i32 0, i32 0
  %191 = load i32, ptr %190, align 4
  %192 = or i32 %191, 128
  store i32 %192, ptr %190, align 4
  br label %193

193:                                              ; preds = %188, %182
  %194 = load ptr, ptr %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, ptr %194, i32 0, i32 0
  %196 = load i32, ptr %195, align 4
  %197 = and i32 %196, 1048576
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load ptr, ptr %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, ptr %200, i32 0, i32 0
  %202 = load i32, ptr %201, align 4
  %203 = or i32 %202, 64
  store i32 %203, ptr %201, align 4
  br label %204

204:                                              ; preds = %199, %193
  %205 = load ptr, ptr %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, ptr %205, i32 0, i32 0
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 4096
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load ptr, ptr %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, ptr %211, i32 0, i32 0
  %213 = load i32, ptr %212, align 4
  %214 = or i32 %213, 32
  store i32 %214, ptr %212, align 4
  br label %215

215:                                              ; preds = %210, %204
  %216 = load ptr, ptr %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, ptr %216, i32 0, i32 0
  %218 = load i32, ptr %217, align 4
  %219 = and i32 %218, 2097152
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %215
  %222 = load ptr, ptr %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, ptr %222, i32 0, i32 0
  %224 = load i32, ptr %223, align 4
  %225 = or i32 %224, 16
  store i32 %225, ptr %223, align 4
  br label %226

226:                                              ; preds = %221, %215
  %227 = load ptr, ptr %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, ptr %227, i32 0, i32 0
  %229 = load i32, ptr %228, align 4
  %230 = and i32 %229, 2
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %226
  %233 = load ptr, ptr %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, ptr %233, i32 0, i32 0
  %235 = load i32, ptr %234, align 4
  %236 = or i32 %235, 8
  store i32 %236, ptr %234, align 4
  br label %237

237:                                              ; preds = %232, %226
  %238 = load ptr, ptr %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, ptr %238, i32 0, i32 0
  %240 = load i32, ptr %239, align 4
  %241 = and i32 %240, 256
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %237
  %244 = load ptr, ptr %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, ptr %244, i32 0, i32 0
  %246 = load i32, ptr %245, align 4
  %247 = or i32 %246, 4
  store i32 %247, ptr %245, align 4
  br label %248

248:                                              ; preds = %243, %237
  %249 = load ptr, ptr %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, ptr %249, i32 0, i32 0
  %251 = load i32, ptr %250, align 4
  %252 = and i32 %251, 32768
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %248
  %255 = load ptr, ptr %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, ptr %255, i32 0, i32 0
  %257 = load i32, ptr %256, align 4
  %258 = or i32 %257, 2
  store i32 %258, ptr %256, align 4
  br label %259

259:                                              ; preds = %254, %248
  %260 = load ptr, ptr %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, ptr %260, i32 0, i32 0
  %262 = load i32, ptr %261, align 4
  %263 = and i32 %262, 67108864
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %259
  %266 = load ptr, ptr %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, ptr %266, i32 0, i32 0
  %268 = load i32, ptr %267, align 4
  %269 = or i32 %268, 1
  store i32 %269, ptr %267, align 4
  br label %270

270:                                              ; preds = %265, %259
  %271 = load ptr, ptr %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, ptr %271, i32 0, i32 1
  store i32 0, ptr %272, align 4
  %273 = load ptr, ptr %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, ptr %273, i32 0, i32 1
  %275 = load i32, ptr %274, align 4
  %276 = and i32 %275, 32768
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %270
  %279 = load ptr, ptr %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, ptr %279, i32 0, i32 1
  %281 = load i32, ptr %280, align 4
  %282 = or i32 %281, 8388608
  store i32 %282, ptr %280, align 4
  br label %283

283:                                              ; preds = %278, %270
  %284 = load ptr, ptr %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, ptr %284, i32 0, i32 1
  %286 = load i32, ptr %285, align 4
  %287 = and i32 %286, 16
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %283
  %290 = load ptr, ptr %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, ptr %290, i32 0, i32 1
  %292 = load i32, ptr %291, align 4
  %293 = or i32 %292, 4194304
  store i32 %293, ptr %291, align 4
  br label %294

294:                                              ; preds = %289, %283
  %295 = load ptr, ptr %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, ptr %295, i32 0, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = and i32 %297, 33554432
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %294
  %301 = load ptr, ptr %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, ptr %301, i32 0, i32 1
  %303 = load i32, ptr %302, align 4
  %304 = or i32 %303, 2097152
  store i32 %304, ptr %302, align 4
  br label %305

305:                                              ; preds = %300, %294
  %306 = load ptr, ptr %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, ptr %306, i32 0, i32 1
  %308 = load i32, ptr %307, align 4
  %309 = and i32 %308, 524288
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %305
  %312 = load ptr, ptr %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, ptr %312, i32 0, i32 1
  %314 = load i32, ptr %313, align 4
  %315 = or i32 %314, 1048576
  store i32 %315, ptr %313, align 4
  br label %316

316:                                              ; preds = %311, %305
  %317 = load ptr, ptr %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, ptr %317, i32 0, i32 1
  %319 = load i32, ptr %318, align 4
  %320 = and i32 %319, 512
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %316
  %323 = load ptr, ptr %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, ptr %323, i32 0, i32 1
  %325 = load i32, ptr %324, align 4
  %326 = or i32 %325, 524288
  store i32 %326, ptr %324, align 4
  br label %327

327:                                              ; preds = %322, %316
  %328 = load ptr, ptr %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, ptr %328, i32 0, i32 1
  %330 = load i32, ptr %329, align 4
  %331 = and i32 %330, 2
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %327
  %334 = load ptr, ptr %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, ptr %334, i32 0, i32 1
  %336 = load i32, ptr %335, align 4
  %337 = or i32 %336, 262144
  store i32 %337, ptr %335, align 4
  br label %338

338:                                              ; preds = %333, %327
  %339 = load ptr, ptr %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, ptr %339, i32 0, i32 1
  %341 = load i32, ptr %340, align 4
  %342 = and i32 %341, 67108864
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %338
  %345 = load ptr, ptr %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, ptr %345, i32 0, i32 1
  %347 = load i32, ptr %346, align 4
  %348 = or i32 %347, 131072
  store i32 %348, ptr %346, align 4
  br label %349

349:                                              ; preds = %344, %338
  %350 = load ptr, ptr %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, ptr %350, i32 0, i32 1
  %352 = load i32, ptr %351, align 4
  %353 = and i32 %352, 65536
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %349
  %356 = load ptr, ptr %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, ptr %356, i32 0, i32 1
  %358 = load i32, ptr %357, align 4
  %359 = or i32 %358, 65536
  store i32 %359, ptr %357, align 4
  br label %360

360:                                              ; preds = %355, %349
  %361 = load ptr, ptr %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, ptr %361, i32 0, i32 1
  %363 = load i32, ptr %362, align 4
  %364 = and i32 %363, 32
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %360
  %367 = load ptr, ptr %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_5__, ptr %367, i32 0, i32 1
  %369 = load i32, ptr %368, align 4
  %370 = or i32 %369, 32768
  store i32 %370, ptr %368, align 4
  br label %371

371:                                              ; preds = %366, %360
  %372 = load ptr, ptr %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, ptr %372, i32 0, i32 1
  %374 = load i32, ptr %373, align 4
  %375 = and i32 %374, 2048
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %371
  %378 = load ptr, ptr %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, ptr %378, i32 0, i32 1
  %380 = load i32, ptr %379, align 4
  %381 = or i32 %380, 16384
  store i32 %381, ptr %379, align 4
  br label %382

382:                                              ; preds = %377, %371
  %383 = load ptr, ptr %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, ptr %383, i32 0, i32 1
  %385 = load i32, ptr %384, align 4
  %386 = and i32 %385, 8388608
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %382
  %389 = load ptr, ptr %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, ptr %389, i32 0, i32 1
  %391 = load i32, ptr %390, align 4
  %392 = or i32 %391, 8192
  store i32 %392, ptr %390, align 4
  br label %393

393:                                              ; preds = %388, %382
  %394 = load ptr, ptr %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, ptr %394, i32 0, i32 1
  %396 = load i32, ptr %395, align 4
  %397 = and i32 %396, 256
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %404

399:                                              ; preds = %393
  %400 = load ptr, ptr %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, ptr %400, i32 0, i32 1
  %402 = load i32, ptr %401, align 4
  %403 = or i32 %402, 4096
  store i32 %403, ptr %401, align 4
  br label %404

404:                                              ; preds = %399, %393
  %405 = load ptr, ptr %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_6__, ptr %405, i32 0, i32 1
  %407 = load i32, ptr %406, align 4
  %408 = and i32 %407, 4096
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %404
  %411 = load ptr, ptr %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_5__, ptr %411, i32 0, i32 1
  %413 = load i32, ptr %412, align 4
  %414 = or i32 %413, 2048
  store i32 %414, ptr %412, align 4
  br label %415

415:                                              ; preds = %410, %404
  %416 = load ptr, ptr %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, ptr %416, i32 0, i32 1
  %418 = load i32, ptr %417, align 4
  %419 = and i32 %418, 128
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %426

421:                                              ; preds = %415
  %422 = load ptr, ptr %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, ptr %422, i32 0, i32 1
  %424 = load i32, ptr %423, align 4
  %425 = or i32 %424, 1024
  store i32 %425, ptr %423, align 4
  br label %426

426:                                              ; preds = %421, %415
  %427 = load ptr, ptr %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, ptr %427, i32 0, i32 1
  %429 = load i32, ptr %428, align 4
  %430 = and i32 %429, 131072
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %426
  %433 = load ptr, ptr %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, ptr %433, i32 0, i32 1
  %435 = load i32, ptr %434, align 4
  %436 = or i32 %435, 512
  store i32 %436, ptr %434, align 4
  br label %437

437:                                              ; preds = %432, %426
  %438 = load ptr, ptr %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_6__, ptr %438, i32 0, i32 1
  %440 = load i32, ptr %439, align 4
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %448

443:                                              ; preds = %437
  %444 = load ptr, ptr %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_5__, ptr %444, i32 0, i32 1
  %446 = load i32, ptr %445, align 4
  %447 = or i32 %446, 256
  store i32 %447, ptr %445, align 4
  br label %448

448:                                              ; preds = %443, %437
  %449 = load ptr, ptr %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, ptr %449, i32 0, i32 1
  %451 = load i32, ptr %450, align 4
  %452 = and i32 %451, 4194304
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %448
  %455 = load ptr, ptr %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_5__, ptr %455, i32 0, i32 1
  %457 = load i32, ptr %456, align 4
  %458 = or i32 %457, 128
  store i32 %458, ptr %456, align 4
  br label %459

459:                                              ; preds = %454, %448
  %460 = load ptr, ptr %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, ptr %460, i32 0, i32 1
  %462 = load i32, ptr %461, align 4
  %463 = and i32 %462, 8
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %470

465:                                              ; preds = %459
  %466 = load ptr, ptr %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_5__, ptr %466, i32 0, i32 1
  %468 = load i32, ptr %467, align 4
  %469 = or i32 %468, 64
  store i32 %469, ptr %467, align 4
  br label %470

470:                                              ; preds = %465, %459
  %471 = load ptr, ptr %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_6__, ptr %471, i32 0, i32 1
  %473 = load i32, ptr %472, align 4
  %474 = and i32 %473, 1024
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %481

476:                                              ; preds = %470
  %477 = load ptr, ptr %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_5__, ptr %477, i32 0, i32 1
  %479 = load i32, ptr %478, align 4
  %480 = or i32 %479, 32
  store i32 %480, ptr %478, align 4
  br label %481

481:                                              ; preds = %476, %470
  %482 = load ptr, ptr %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, ptr %482, i32 0, i32 1
  %484 = load i32, ptr %483, align 4
  %485 = and i32 %484, 16384
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %481
  %488 = load ptr, ptr %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_5__, ptr %488, i32 0, i32 1
  %490 = load i32, ptr %489, align 4
  %491 = or i32 %490, 16
  store i32 %491, ptr %489, align 4
  br label %492

492:                                              ; preds = %487, %481
  %493 = load ptr, ptr %3, align 8
  %494 = getelementptr inbounds %struct.TYPE_6__, ptr %493, i32 0, i32 1
  %495 = load i32, ptr %494, align 4
  %496 = and i32 %495, 64
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %492
  %499 = load ptr, ptr %4, align 8
  %500 = getelementptr inbounds %struct.TYPE_5__, ptr %499, i32 0, i32 1
  %501 = load i32, ptr %500, align 4
  %502 = or i32 %501, 8
  store i32 %502, ptr %500, align 4
  br label %503

503:                                              ; preds = %498, %492
  %504 = load ptr, ptr %3, align 8
  %505 = getelementptr inbounds %struct.TYPE_6__, ptr %504, i32 0, i32 1
  %506 = load i32, ptr %505, align 4
  %507 = and i32 %506, 1048576
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %503
  %510 = load ptr, ptr %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_5__, ptr %510, i32 0, i32 1
  %512 = load i32, ptr %511, align 4
  %513 = or i32 %512, 4
  store i32 %513, ptr %511, align 4
  br label %514

514:                                              ; preds = %509, %503
  %515 = load ptr, ptr %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_6__, ptr %515, i32 0, i32 1
  %517 = load i32, ptr %516, align 4
  %518 = and i32 %517, 134217728
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %525

520:                                              ; preds = %514
  %521 = load ptr, ptr %4, align 8
  %522 = getelementptr inbounds %struct.TYPE_5__, ptr %521, i32 0, i32 1
  %523 = load i32, ptr %522, align 4
  %524 = or i32 %523, 2
  store i32 %524, ptr %522, align 4
  br label %525

525:                                              ; preds = %520, %514
  %526 = load ptr, ptr %3, align 8
  %527 = getelementptr inbounds %struct.TYPE_6__, ptr %526, i32 0, i32 1
  %528 = load i32, ptr %527, align 4
  %529 = and i32 %528, 16777216
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %536

531:                                              ; preds = %525
  %532 = load ptr, ptr %4, align 8
  %533 = getelementptr inbounds %struct.TYPE_5__, ptr %532, i32 0, i32 1
  %534 = load i32, ptr %533, align 4
  %535 = or i32 %534, 1
  store i32 %535, ptr %533, align 4
  br label %536

536:                                              ; preds = %531, %525
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
