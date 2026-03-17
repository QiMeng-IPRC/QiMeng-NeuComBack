; ModuleID = '../benchmarks/fine_grained/exebench/kernel310.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel310.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @sgl_fmpy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %0, align 4, !tbaa !5
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %7 = xor i32 %6, %5
  %8 = icmp sgt i32 %7, -1
  %9 = and i32 %7, -2147483648
  %10 = lshr i32 %5, 23
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %57

13:                                               ; preds = %4
  %14 = and i32 %5, 8388607
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = and i32 %6, 2139095040
  %18 = icmp ne i32 %17, 2139095040
  %19 = and i32 %6, 8388607
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = and i32 %6, 2147483647
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, ptr %3, align 4, !tbaa !5
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %485

29:                                               ; preds = %25
  %30 = or i32 %26, -2147483648
  store i32 %30, ptr %3, align 4, !tbaa !5
  store i32 2141192192, ptr %2, align 4, !tbaa !5
  br label %485

31:                                               ; preds = %22
  %32 = or i32 %9, 2139095040
  store i32 %32, ptr %2, align 4, !tbaa !5
  br label %485

33:                                               ; preds = %13
  %34 = and i32 %5, 4194304
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %3, align 4, !tbaa !5
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %485

40:                                               ; preds = %36
  %41 = or i32 %37, -2147483648
  store i32 %41, ptr %3, align 4, !tbaa !5
  %42 = and i32 %5, -6291457
  %43 = or i32 %42, 2097152
  br label %55

44:                                               ; preds = %33
  %45 = and i32 %6, 2143289344
  %46 = icmp eq i32 %45, 2143289344
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, ptr %3, align 4, !tbaa !5
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %485

51:                                               ; preds = %47
  %52 = or i32 %48, -2147483648
  store i32 %52, ptr %3, align 4, !tbaa !5
  %53 = and i32 %6, -6291457
  %54 = or i32 %53, 2097152
  store i32 %54, ptr %2, align 4, !tbaa !5
  br label %485

55:                                               ; preds = %44, %40
  %56 = phi i32 [ %43, %40 ], [ %5, %44 ]
  store i32 %56, ptr %2, align 4, !tbaa !5
  br label %485

57:                                               ; preds = %4
  %58 = lshr i32 %6, 23
  %59 = and i32 %58, 255
  %60 = icmp eq i32 %59, 255
  br i1 %60, label %67, label %94

61:                                               ; preds = %16
  %62 = lshr i32 %6, 23
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %63, 255
  br i1 %64, label %81, label %65

65:                                               ; preds = %61
  %66 = add nuw nsw i32 %63, 128
  br label %99

67:                                               ; preds = %57
  %68 = and i32 %6, 8388607
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = and i32 %5, 2147483647
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, ptr %3, align 4, !tbaa !5
  %75 = and i32 %74, 16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %485

77:                                               ; preds = %73
  %78 = or i32 %74, -2147483648
  store i32 %78, ptr %3, align 4, !tbaa !5
  store i32 2141192192, ptr %2, align 4, !tbaa !5
  br label %485

79:                                               ; preds = %70
  %80 = or i32 %9, 2139095040
  store i32 %80, ptr %2, align 4, !tbaa !5
  br label %485

81:                                               ; preds = %61, %67
  %82 = and i32 %6, 4194304
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %3, align 4, !tbaa !5
  %86 = and i32 %85, 16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %485

88:                                               ; preds = %84
  %89 = or i32 %85, -2147483648
  store i32 %89, ptr %3, align 4, !tbaa !5
  %90 = and i32 %6, -6291457
  %91 = or i32 %90, 2097152
  br label %92

92:                                               ; preds = %88, %81
  %93 = phi i32 [ %91, %88 ], [ %6, %81 ]
  store i32 %93, ptr %2, align 4, !tbaa !5
  br label %485

94:                                               ; preds = %57
  %95 = add nsw i32 %11, -127
  %96 = add nsw i32 %95, %59
  %97 = icmp eq i32 %11, 0
  %98 = and i32 %5, 8388607
  br i1 %97, label %104, label %99

99:                                               ; preds = %94, %65
  %100 = phi i32 [ 0, %65 ], [ %98, %94 ]
  %101 = phi i32 [ %66, %65 ], [ %96, %94 ]
  %102 = phi i32 [ %63, %65 ], [ %59, %94 ]
  %103 = or i32 %100, 8388608
  br label %135

104:                                              ; preds = %94
  %105 = icmp eq i32 %98, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  store i32 %9, ptr %2, align 4, !tbaa !5
  br label %485

107:                                              ; preds = %104
  %108 = shl nuw nsw i32 %98, 1
  %109 = icmp ult i32 %98, 32768
  br i1 %109, label %110, label %117

110:                                              ; preds = %107, %110
  %111 = phi i32 [ %114, %110 ], [ %96, %107 ]
  %112 = phi i32 [ %113, %110 ], [ %108, %107 ]
  %113 = shl i32 %112, 8
  %114 = add nsw i32 %111, -8
  %115 = and i32 %112, 65280
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %110, label %117, !llvm.loop !9

117:                                              ; preds = %110, %107
  %118 = phi i32 [ %108, %107 ], [ %113, %110 ]
  %119 = phi i32 [ %96, %107 ], [ %114, %110 ]
  %120 = and i32 %118, 15728640
  %121 = icmp eq i32 %120, 0
  %122 = shl i32 %118, 4
  %123 = add nsw i32 %119, -4
  %124 = select i1 %121, i32 %122, i32 %118
  %125 = select i1 %121, i32 %123, i32 %119
  %126 = and i32 %124, 8388608
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %117
  %129 = and i32 %124, 8388606
  %130 = tail call i32 @llvm.ctlz.i32(i32 %129, i1 true), !range !11
  %131 = add nsw i32 %130, -8
  %132 = shl i32 %124, %131
  %133 = add nsw i32 %125, 8
  %134 = sub i32 %133, %130
  br label %135

135:                                              ; preds = %128, %117, %99
  %136 = phi i32 [ %102, %99 ], [ %59, %117 ], [ %59, %128 ]
  %137 = phi i32 [ %103, %99 ], [ %124, %117 ], [ %132, %128 ]
  %138 = phi i32 [ %101, %99 ], [ %125, %117 ], [ %134, %128 ]
  %139 = icmp eq i32 %136, 0
  %140 = and i32 %6, 8388607
  br i1 %139, label %143, label %141

141:                                              ; preds = %135
  %142 = or i32 %140, 8388608
  br label %174

143:                                              ; preds = %135
  %144 = icmp eq i32 %140, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  store i32 %9, ptr %2, align 4, !tbaa !5
  br label %485

146:                                              ; preds = %143
  %147 = shl nuw nsw i32 %140, 1
  %148 = icmp ult i32 %140, 32768
  br i1 %148, label %149, label %156

149:                                              ; preds = %146, %149
  %150 = phi i32 [ %153, %149 ], [ %138, %146 ]
  %151 = phi i32 [ %152, %149 ], [ %147, %146 ]
  %152 = shl i32 %151, 8
  %153 = add nsw i32 %150, -8
  %154 = and i32 %151, 65280
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %149, label %156, !llvm.loop !12

156:                                              ; preds = %149, %146
  %157 = phi i32 [ %147, %146 ], [ %152, %149 ]
  %158 = phi i32 [ %138, %146 ], [ %153, %149 ]
  %159 = and i32 %157, 15728640
  %160 = icmp eq i32 %159, 0
  %161 = shl i32 %157, 4
  %162 = add nsw i32 %158, -4
  %163 = select i1 %160, i32 %161, i32 %157
  %164 = select i1 %160, i32 %162, i32 %158
  %165 = and i32 %163, 8388608
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %156
  %168 = and i32 %163, 8388606
  %169 = tail call i32 @llvm.ctlz.i32(i32 %168, i1 true), !range !11
  %170 = add nsw i32 %169, -8
  %171 = shl i32 %163, %170
  %172 = add i32 %164, 8
  %173 = sub i32 %172, %169
  br label %174

174:                                              ; preds = %167, %156, %141
  %175 = phi i32 [ %142, %141 ], [ %163, %156 ], [ %171, %167 ]
  %176 = phi i32 [ %138, %141 ], [ %164, %156 ], [ %173, %167 ]
  %177 = shl i32 %175, 4
  %178 = shl i32 %175, 7
  %179 = shl i32 %175, 6
  %180 = shl i32 %175, 5
  %181 = and i32 %137, 8
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 0, i32 %178
  %184 = and i32 %137, 4
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %185, i32 0, i32 %179
  %187 = add i32 %183, %186
  %188 = and i32 %137, 2
  %189 = icmp eq i32 %188, 0
  %190 = select i1 %189, i32 0, i32 %180
  %191 = add i32 %187, %190
  %192 = and i32 %137, 1
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %193, i32 0, i32 %177
  %195 = add i32 %191, %194
  %196 = lshr exact i32 %195, 4
  %197 = and i32 %137, 128
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, i32 0, i32 %178
  %200 = add i32 %199, %196
  %201 = and i32 %137, 64
  %202 = icmp eq i32 %201, 0
  %203 = select i1 %202, i32 0, i32 %179
  %204 = add i32 %200, %203
  %205 = and i32 %137, 32
  %206 = icmp eq i32 %205, 0
  %207 = select i1 %206, i32 0, i32 %180
  %208 = add i32 %204, %207
  %209 = and i32 %137, 16
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i32 0, i32 %177
  %212 = add i32 %208, %211
  %213 = lshr i32 %212, 4
  %214 = insertelement <16 x i32> poison, i32 %137, i64 0
  %215 = shufflevector <16 x i32> %214, <16 x i32> poison, <16 x i32> zeroinitializer
  %216 = and <16 x i32> %215, <i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 65536, i32 131072, i32 262144, i32 524288, i32 4096, i32 8192, i32 16384, i32 32768, i32 256, i32 512, i32 1024, i32 2048>
  %217 = or i32 %196, %213
  %218 = icmp eq <16 x i32> %216, zeroinitializer
  %219 = extractelement <16 x i1> %218, i64 15
  %220 = select i1 %219, i32 0, i32 %178
  %221 = add i32 %220, %213
  %222 = extractelement <16 x i1> %218, i64 14
  %223 = select i1 %222, i32 0, i32 %179
  %224 = add i32 %221, %223
  %225 = extractelement <16 x i1> %218, i64 13
  %226 = select i1 %225, i32 0, i32 %180
  %227 = add i32 %224, %226
  %228 = extractelement <16 x i1> %218, i64 12
  %229 = select i1 %228, i32 0, i32 %177
  %230 = add i32 %227, %229
  %231 = lshr i32 %230, 4
  %232 = extractelement <16 x i1> %218, i64 11
  %233 = select i1 %232, i32 0, i32 %178
  %234 = add i32 %233, %231
  %235 = extractelement <16 x i1> %218, i64 10
  %236 = select i1 %235, i32 0, i32 %179
  %237 = add i32 %234, %236
  %238 = extractelement <16 x i1> %218, i64 9
  %239 = select i1 %238, i32 0, i32 %180
  %240 = add i32 %237, %239
  %241 = extractelement <16 x i1> %218, i64 8
  %242 = select i1 %241, i32 0, i32 %177
  %243 = add i32 %240, %242
  %244 = or i32 %217, %231
  %245 = lshr i32 %243, 4
  %246 = extractelement <16 x i1> %218, i64 7
  %247 = select i1 %246, i32 0, i32 %178
  %248 = add i32 %247, %245
  %249 = extractelement <16 x i1> %218, i64 6
  %250 = select i1 %249, i32 0, i32 %179
  %251 = add i32 %248, %250
  %252 = extractelement <16 x i1> %218, i64 5
  %253 = select i1 %252, i32 0, i32 %180
  %254 = add i32 %251, %253
  %255 = extractelement <16 x i1> %218, i64 4
  %256 = select i1 %255, i32 0, i32 %177
  %257 = add i32 %254, %256
  %258 = or i32 %244, %245
  %259 = and i32 %258, 15
  %260 = lshr i32 %257, 4
  %261 = extractelement <16 x i1> %218, i64 3
  %262 = select i1 %261, i32 0, i32 %178
  %263 = add i32 %262, %260
  %264 = extractelement <16 x i1> %218, i64 2
  %265 = select i1 %264, i32 0, i32 %179
  %266 = add i32 %263, %265
  %267 = extractelement <16 x i1> %218, i64 1
  %268 = select i1 %267, i32 0, i32 %180
  %269 = add i32 %266, %268
  %270 = extractelement <16 x i1> %218, i64 0
  %271 = select i1 %270, i32 0, i32 %177
  %272 = add i32 %269, %271
  %273 = icmp sgt i32 %272, -1
  %274 = zext i1 %273 to i32
  %275 = shl i32 %272, %274
  %276 = xor i1 %273, true
  %277 = zext i1 %276 to i32
  %278 = add nsw i32 %176, %277
  %279 = icmp sgt i32 %275, -1
  br i1 %279, label %280, label %286

280:                                              ; preds = %174, %280
  %281 = phi i32 [ %284, %280 ], [ %278, %174 ]
  %282 = phi i32 [ %283, %280 ], [ %275, %174 ]
  %283 = shl nuw i32 %282, 1
  %284 = add nsw i32 %281, -1
  %285 = icmp sgt i32 %283, -1
  br i1 %285, label %280, label %286, !llvm.loop !13

286:                                              ; preds = %280, %174
  %287 = phi i32 [ %275, %174 ], [ %283, %280 ]
  %288 = phi i32 [ %278, %174 ], [ %284, %280 ]
  %289 = shl i32 %287, 25
  %290 = or i32 %259, %289
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 1
  %293 = or i32 %290, %292
  %294 = zext i32 %293 to i64
  %295 = lshr i32 %287, 8
  %296 = icmp ne i32 %293, 0
  br i1 %296, label %297, label %328

297:                                              ; preds = %286
  %298 = icmp slt i32 %288, 1
  %299 = load i32, ptr %3, align 4, !tbaa !5
  %300 = and i32 %299, 2
  %301 = icmp eq i32 %300, 0
  %302 = select i1 %298, i1 %301, i1 false
  %303 = and i32 %295, 8388607
  br i1 %302, label %304, label %306

304:                                              ; preds = %297
  %305 = or i32 %303, %9
  br label %366

306:                                              ; preds = %297
  %307 = lshr i32 %299, 9
  %308 = and i32 %307, 3
  switch i32 %308, label %324 [
    i32 2, label %309
    i32 3, label %312
    i32 0, label %316
  ]

309:                                              ; preds = %306
  %310 = zext i1 %8 to i32
  %311 = add nuw nsw i32 %303, %310
  br label %324

312:                                              ; preds = %306
  %313 = xor i1 %8, true
  %314 = zext i1 %313 to i32
  %315 = add nuw nsw i32 %303, %314
  br label %324

316:                                              ; preds = %306
  %317 = icmp eq i32 %292, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %316
  %319 = and i32 %287, 256
  %320 = or i32 %319, %290
  %321 = icmp ne i32 %320, 0
  %322 = zext i1 %321 to i32
  %323 = add nuw nsw i32 %303, %322
  br label %324

324:                                              ; preds = %318, %312, %309, %316, %306
  %325 = phi i32 [ %303, %306 ], [ %303, %316 ], [ %311, %309 ], [ %315, %312 ], [ %323, %318 ]
  %326 = lshr i32 %325, 23
  %327 = add nsw i32 %326, %288
  br label %328

328:                                              ; preds = %324, %286
  %329 = phi i32 [ %295, %286 ], [ %325, %324 ]
  %330 = phi i32 [ %288, %286 ], [ %327, %324 ]
  %331 = and i32 %329, 8388607
  %332 = or i32 %331, %9
  %333 = icmp sgt i32 %330, 254
  br i1 %333, label %334, label %362

334:                                              ; preds = %328
  %335 = load i32, ptr %3, align 4, !tbaa !5
  %336 = and i32 %335, 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %349, label %338

338:                                              ; preds = %334
  %339 = shl i32 %330, 23
  %340 = add i32 %339, 536870912
  %341 = and i32 %340, 2139095040
  %342 = or i32 %341, %332
  store i32 %342, ptr %2, align 4, !tbaa !5
  br i1 %296, label %343, label %485

343:                                              ; preds = %338
  %344 = load i32, ptr %3, align 4, !tbaa !5
  %345 = and i32 %344, 1
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %485

347:                                              ; preds = %343
  %348 = or i32 %344, 134217728
  store i32 %348, ptr %3, align 4, !tbaa !5
  br label %485

349:                                              ; preds = %334
  %350 = or i32 %335, 536870912
  store i32 %350, ptr %3, align 4, !tbaa !5
  %351 = lshr i32 %335, 9
  %352 = and i32 %351, 3
  switch i32 %352, label %361 [
    i32 2, label %353
    i32 3, label %355
    i32 0, label %357
    i32 1, label %359
  ]

353:                                              ; preds = %349
  %354 = select i1 %8, i32 2139095040, i32 -8388609
  br label %473

355:                                              ; preds = %349
  %356 = select i1 %8, i32 2139095039, i32 -8388608
  br label %473

357:                                              ; preds = %349
  %358 = or i32 %9, 2139095040
  br label %473

359:                                              ; preds = %349
  %360 = or i32 %9, 2139095039
  br label %473

361:                                              ; preds = %349
  unreachable

362:                                              ; preds = %328
  %363 = icmp slt i32 %330, 1
  br i1 %363, label %364, label %470

364:                                              ; preds = %362
  %365 = load i32, ptr %3, align 4, !tbaa !5
  br label %366

366:                                              ; preds = %364, %304
  %367 = phi i32 [ %299, %304 ], [ %365, %364 ]
  %368 = phi i32 [ %295, %304 ], [ %329, %364 ]
  %369 = phi i32 [ %288, %304 ], [ %330, %364 ]
  %370 = phi i32 [ %303, %304 ], [ %331, %364 ]
  %371 = phi i32 [ %305, %304 ], [ %332, %364 ]
  %372 = and i32 %367, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %385, label %374

374:                                              ; preds = %366
  %375 = shl i32 %369, 23
  %376 = add i32 %375, 1610612736
  %377 = and i32 %376, 2139095040
  %378 = or i32 %377, %371
  store i32 %378, ptr %2, align 4, !tbaa !5
  br i1 %296, label %379, label %485

379:                                              ; preds = %374
  %380 = load i32, ptr %3, align 4, !tbaa !5
  %381 = and i32 %380, 1
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %485

383:                                              ; preds = %379
  %384 = or i32 %380, 134217728
  store i32 %384, ptr %3, align 4, !tbaa !5
  br label %485

385:                                              ; preds = %366
  %386 = icmp eq i32 %369, 0
  %387 = and i1 %296, %386
  br i1 %387, label %388, label %415

388:                                              ; preds = %385
  %389 = lshr i32 %367, 9
  %390 = and i32 %389, 3
  switch i32 %390, label %411 [
    i32 2, label %391
    i32 3, label %396
    i32 0, label %401
  ]

391:                                              ; preds = %388
  br i1 %8, label %392, label %411

392:                                              ; preds = %391
  %393 = add nuw nsw i32 %368, 1
  %394 = and i32 %393, 16777216
  %395 = icmp eq i32 %394, 0
  br label %411

396:                                              ; preds = %388
  br i1 %8, label %411, label %397

397:                                              ; preds = %396
  %398 = add nuw nsw i32 %368, 1
  %399 = and i32 %398, 16777216
  %400 = icmp eq i32 %399, 0
  br label %411

401:                                              ; preds = %388
  %402 = icmp eq i32 %292, 0
  br i1 %402, label %411, label %403

403:                                              ; preds = %401
  %404 = and i32 %368, 1
  %405 = or i32 %290, %404
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %411, label %407

407:                                              ; preds = %403
  %408 = add nuw nsw i32 %368, 1
  %409 = and i32 %408, 16777216
  %410 = icmp eq i32 %409, 0
  br label %411

411:                                              ; preds = %403, %388, %392, %391, %397, %396, %407, %401
  %412 = phi i1 [ true, %403 ], [ true, %391 ], [ %395, %392 ], [ true, %396 ], [ %400, %397 ], [ true, %401 ], [ %410, %407 ], [ true, %388 ]
  %413 = zext i1 %412 to i64
  %414 = or i32 %370, 8388608
  br label %421

415:                                              ; preds = %385
  %416 = or i32 %370, 8388608
  %417 = icmp sgt i32 %369, -24
  br i1 %417, label %421, label %418

418:                                              ; preds = %415
  %419 = or i32 %293, %416
  %420 = zext i32 %419 to i64
  br label %438

421:                                              ; preds = %415, %411
  %422 = phi i32 [ %414, %411 ], [ %416, %415 ]
  %423 = phi i64 [ %413, %411 ], [ 1, %415 ]
  %424 = sub nsw i32 0, %369
  %425 = lshr i32 %422, %424
  %426 = and i32 %425, 1
  %427 = zext i32 %426 to i64
  %428 = icmp slt i32 %369, 0
  %429 = add nsw i32 %369, 32
  %430 = shl i32 %422, %429
  %431 = select i1 %428, i32 %430, i32 0
  %432 = or i32 %293, %431
  %433 = zext i32 %432 to i64
  %434 = or i64 %433, %427
  %435 = sub nsw i32 1, %369
  %436 = lshr i32 %422, %435
  %437 = icmp eq i64 %434, 0
  br i1 %437, label %466, label %438

438:                                              ; preds = %418, %421
  %439 = phi i64 [ 1, %418 ], [ %433, %421 ]
  %440 = phi i64 [ 0, %418 ], [ %427, %421 ]
  %441 = phi i64 [ %420, %418 ], [ %434, %421 ]
  %442 = phi i32 [ 0, %418 ], [ %436, %421 ]
  %443 = phi i64 [ 1, %418 ], [ %423, %421 ]
  %444 = lshr i32 %367, 9
  %445 = and i32 %444, 3
  switch i32 %445, label %461 [
    i32 2, label %446
    i32 3, label %449
    i32 0, label %452
  ]

446:                                              ; preds = %438
  %447 = zext i1 %8 to i32
  %448 = add nuw nsw i32 %442, %447
  br label %461

449:                                              ; preds = %438
  %450 = lshr i32 %7, 31
  %451 = add nuw nsw i32 %442, %450
  br label %461

452:                                              ; preds = %438
  %453 = icmp eq i64 %440, 0
  br i1 %453, label %461, label %454

454:                                              ; preds = %452
  %455 = icmp ne i64 %439, 0
  %456 = and i32 %442, 1
  %457 = icmp ne i32 %456, 0
  %458 = select i1 %455, i1 true, i1 %457
  %459 = zext i1 %458 to i32
  %460 = add nuw nsw i32 %442, %459
  br label %461

461:                                              ; preds = %454, %449, %446, %452, %438
  %462 = phi i32 [ %442, %438 ], [ %442, %452 ], [ %448, %446 ], [ %451, %449 ], [ %460, %454 ]
  %463 = icmp eq i64 %443, 0
  br i1 %463, label %466, label %464

464:                                              ; preds = %461
  %465 = or i32 %367, 268435456
  store i32 %465, ptr %3, align 4, !tbaa !5
  br label %466

466:                                              ; preds = %461, %464, %421
  %467 = phi i64 [ %441, %464 ], [ %441, %461 ], [ 0, %421 ]
  %468 = phi i32 [ %462, %464 ], [ %462, %461 ], [ %436, %421 ]
  %469 = or i32 %468, %9
  br label %475

470:                                              ; preds = %362
  %471 = shl nuw nsw i32 %330, 23
  %472 = or i32 %332, %471
  br label %475

473:                                              ; preds = %359, %357, %353, %355
  %474 = phi i32 [ %356, %355 ], [ %354, %353 ], [ %358, %357 ], [ %360, %359 ]
  store i32 %474, ptr %2, align 4, !tbaa !5
  br label %479

475:                                              ; preds = %466, %470
  %476 = phi i32 [ %469, %466 ], [ %472, %470 ]
  %477 = phi i64 [ %467, %466 ], [ %294, %470 ]
  store i32 %476, ptr %2, align 4, !tbaa !5
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %485, label %479

479:                                              ; preds = %473, %475
  %480 = load i32, ptr %3, align 4, !tbaa !5
  %481 = and i32 %480, 1
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %479
  %484 = or i32 %480, 134217728
  store i32 %484, ptr %3, align 4, !tbaa !5
  br label %485

485:                                              ; preds = %475, %483, %479, %374, %383, %379, %338, %347, %343, %84, %73, %47, %36, %25, %145, %106, %92, %79, %77, %55, %51, %31, %29
  %486 = phi i32 [ 0, %29 ], [ 0, %31 ], [ 0, %77 ], [ 0, %79 ], [ 0, %92 ], [ 0, %145 ], [ 0, %106 ], [ 0, %55 ], [ 0, %51 ], [ 32, %25 ], [ 32, %36 ], [ 32, %47 ], [ 32, %73 ], [ 32, %84 ], [ 10, %343 ], [ 8, %347 ], [ 8, %338 ], [ 6, %379 ], [ 4, %383 ], [ 4, %374 ], [ 2, %479 ], [ 0, %483 ], [ 0, %475 ]
  ret i32 %486
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i32 9, i32 33}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
