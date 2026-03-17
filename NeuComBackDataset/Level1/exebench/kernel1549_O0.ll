; ModuleID = '../benchmarks/fine_grained/exebench/kernel1549.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1549.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TRIG_NOW = dso_local global i32 0, align 4
@TRIG_EXT = dso_local global i32 0, align 4
@TRIG_TIMER = dso_local global i32 0, align 4
@TRIG_FOLLOW = dso_local global i32 0, align 4
@TRIG_COUNT = dso_local global i32 0, align 4
@TRIG_NONE = dso_local global i32 0, align 4
@this_board = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3120_CommandTestAnalogInput(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i32 0, ptr %8, align 4
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr inbounds %struct.comedi_cmd, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  store i32 %12, ptr %9, align 4
  %13 = load i32, ptr @TRIG_NOW, align 4
  %14 = load i32, ptr @TRIG_EXT, align 4
  %15 = or i32 %13, %14
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, ptr %17, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, ptr %9, align 4
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %3
  %31 = load i32, ptr %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %8, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %9, align 4
  %37 = load i32, ptr @TRIG_TIMER, align 4
  %38 = load i32, ptr @TRIG_FOLLOW, align 4
  %39 = or i32 %37, %38
  %40 = load ptr, ptr %7, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, ptr %41, align 4
  %44 = load ptr, ptr %7, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = load i32, ptr %9, align 4
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %33
  %55 = load i32, ptr %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %8, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load ptr, ptr %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  store i32 %60, ptr %9, align 4
  %61 = load i32, ptr @TRIG_TIMER, align 4
  %62 = load ptr, ptr %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, ptr %63, align 8
  %66 = load ptr, ptr %7, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %57
  %71 = load i32, ptr %9, align 4
  %72 = load ptr, ptr %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %57
  %77 = load i32, ptr %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %8, align 4
  br label %79

79:                                               ; preds = %76, %70
  %80 = load ptr, ptr %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, ptr %80, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  store i32 %82, ptr %9, align 4
  %83 = load i32, ptr @TRIG_COUNT, align 4
  %84 = load ptr, ptr %7, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, ptr %84, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, ptr %85, align 4
  %88 = load ptr, ptr %7, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, ptr %88, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %79
  %93 = load i32, ptr %9, align 4
  %94 = load ptr, ptr %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, ptr %94, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92, %79
  %99 = load i32, ptr %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %8, align 4
  br label %101

101:                                              ; preds = %98, %92
  %102 = load ptr, ptr %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, ptr %102, i32 0, i32 4
  %104 = load i32, ptr %103, align 8
  store i32 %104, ptr %9, align 4
  %105 = load i32, ptr @TRIG_COUNT, align 4
  %106 = load i32, ptr @TRIG_NONE, align 4
  %107 = or i32 %105, %106
  %108 = load ptr, ptr %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, ptr %108, i32 0, i32 4
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, ptr %109, align 8
  %112 = load ptr, ptr %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, ptr %112, i32 0, i32 4
  %114 = load i32, ptr %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %101
  %117 = load i32, ptr %9, align 4
  %118 = load ptr, ptr %7, align 8
  %119 = getelementptr inbounds %struct.comedi_cmd, ptr %118, i32 0, i32 4
  %120 = load i32, ptr %119, align 8
  %121 = icmp ne i32 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116, %101
  %123 = load i32, ptr %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %8, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = load i32, ptr %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 1, ptr %4, align 4
  br label %384

129:                                              ; preds = %125
  %130 = load ptr, ptr %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, ptr %130, i32 0, i32 0
  %132 = load i32, ptr %131, align 8
  %133 = load i32, ptr @TRIG_NOW, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load ptr, ptr %7, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, ptr %136, i32 0, i32 0
  %138 = load i32, ptr %137, align 8
  %139 = load i32, ptr @TRIG_EXT, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, ptr %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %8, align 4
  br label %144

144:                                              ; preds = %141, %135, %129
  %145 = load ptr, ptr %7, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, ptr %145, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = load i32, ptr @TRIG_TIMER, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load ptr, ptr %7, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, ptr %151, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = load i32, ptr @TRIG_FOLLOW, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32, ptr %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, ptr %8, align 4
  br label %159

159:                                              ; preds = %156, %150, %144
  %160 = load ptr, ptr %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, ptr %160, i32 0, i32 2
  %162 = load i32, ptr %161, align 8
  %163 = load i32, ptr @TRIG_TIMER, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, ptr %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %8, align 4
  br label %168

168:                                              ; preds = %165, %159
  %169 = load ptr, ptr %7, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, ptr %169, i32 0, i32 3
  %171 = load i32, ptr %170, align 4
  %172 = load i32, ptr @TRIG_COUNT, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load i32, ptr @TRIG_COUNT, align 4
  %176 = load ptr, ptr %7, align 8
  %177 = getelementptr inbounds %struct.comedi_cmd, ptr %176, i32 0, i32 3
  store i32 %175, ptr %177, align 4
  %178 = load i32, ptr %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %8, align 4
  br label %180

180:                                              ; preds = %174, %168
  %181 = load ptr, ptr %7, align 8
  %182 = getelementptr inbounds %struct.comedi_cmd, ptr %181, i32 0, i32 4
  %183 = load i32, ptr %182, align 8
  %184 = load i32, ptr @TRIG_NONE, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load ptr, ptr %7, align 8
  %188 = getelementptr inbounds %struct.comedi_cmd, ptr %187, i32 0, i32 4
  %189 = load i32, ptr %188, align 8
  %190 = load i32, ptr @TRIG_COUNT, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i32, ptr %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, ptr %8, align 4
  br label %195

195:                                              ; preds = %192, %186, %180
  %196 = load i32, ptr %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 2, ptr %4, align 4
  br label %384

199:                                              ; preds = %195
  %200 = load ptr, ptr %7, align 8
  %201 = getelementptr inbounds %struct.comedi_cmd, ptr %200, i32 0, i32 5
  %202 = load i64, ptr %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load ptr, ptr %7, align 8
  %206 = getelementptr inbounds %struct.comedi_cmd, ptr %205, i32 0, i32 5
  store i64 0, ptr %206, align 8
  %207 = load i32, ptr %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr %8, align 4
  br label %209

209:                                              ; preds = %204, %199
  %210 = load ptr, ptr %7, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, ptr %210, i32 0, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = load i32, ptr @TRIG_TIMER, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %232

215:                                              ; preds = %209
  %216 = load ptr, ptr %7, align 8
  %217 = getelementptr inbounds %struct.comedi_cmd, ptr %216, i32 0, i32 6
  %218 = load i32, ptr %217, align 8
  %219 = load ptr, ptr @this_board, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, ptr %219, i32 0, i32 0
  %221 = load i32, ptr %220, align 4
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %231

223:                                              ; preds = %215
  %224 = load ptr, ptr @this_board, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, ptr %224, i32 0, i32 0
  %226 = load i32, ptr %225, align 4
  %227 = load ptr, ptr %7, align 8
  %228 = getelementptr inbounds %struct.comedi_cmd, ptr %227, i32 0, i32 6
  store i32 %226, ptr %228, align 8
  %229 = load i32, ptr %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr %8, align 4
  br label %231

231:                                              ; preds = %223, %215
  br label %232

232:                                              ; preds = %231, %209
  %233 = load ptr, ptr %7, align 8
  %234 = getelementptr inbounds %struct.comedi_cmd, ptr %233, i32 0, i32 2
  %235 = load i32, ptr %234, align 8
  %236 = load i32, ptr @TRIG_TIMER, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %284

238:                                              ; preds = %232
  %239 = load ptr, ptr %7, align 8
  %240 = getelementptr inbounds %struct.comedi_cmd, ptr %239, i32 0, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = load i32, ptr @TRIG_TIMER, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %266

244:                                              ; preds = %238
  %245 = load ptr, ptr %7, align 8
  %246 = getelementptr inbounds %struct.comedi_cmd, ptr %245, i32 0, i32 7
  %247 = load i32, ptr %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %265

249:                                              ; preds = %244
  %250 = load ptr, ptr %7, align 8
  %251 = getelementptr inbounds %struct.comedi_cmd, ptr %250, i32 0, i32 7
  %252 = load i32, ptr %251, align 4
  %253 = load ptr, ptr @this_board, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, ptr %253, i32 0, i32 1
  %255 = load i32, ptr %254, align 4
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %249
  %258 = load ptr, ptr @this_board, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, ptr %258, i32 0, i32 1
  %260 = load i32, ptr %259, align 4
  %261 = load ptr, ptr %7, align 8
  %262 = getelementptr inbounds %struct.comedi_cmd, ptr %261, i32 0, i32 7
  store i32 %260, ptr %262, align 4
  %263 = load i32, ptr %8, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %8, align 4
  br label %265

265:                                              ; preds = %257, %249, %244
  br label %283

266:                                              ; preds = %238
  %267 = load ptr, ptr %7, align 8
  %268 = getelementptr inbounds %struct.comedi_cmd, ptr %267, i32 0, i32 7
  %269 = load i32, ptr %268, align 4
  %270 = load ptr, ptr @this_board, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, ptr %270, i32 0, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %282

274:                                              ; preds = %266
  %275 = load ptr, ptr @this_board, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, ptr %275, i32 0, i32 1
  %277 = load i32, ptr %276, align 4
  %278 = load ptr, ptr %7, align 8
  %279 = getelementptr inbounds %struct.comedi_cmd, ptr %278, i32 0, i32 7
  store i32 %277, ptr %279, align 4
  %280 = load i32, ptr %8, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, ptr %8, align 4
  br label %282

282:                                              ; preds = %274, %266
  br label %283

283:                                              ; preds = %282, %265
  br label %284

284:                                              ; preds = %283, %232
  %285 = load ptr, ptr %7, align 8
  %286 = getelementptr inbounds %struct.comedi_cmd, ptr %285, i32 0, i32 8
  %287 = load i32, ptr %286, align 8
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %284
  %290 = load ptr, ptr %7, align 8
  %291 = getelementptr inbounds %struct.comedi_cmd, ptr %290, i32 0, i32 8
  store i32 1, ptr %291, align 8
  %292 = load i32, ptr %8, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, ptr %8, align 4
  br label %294

294:                                              ; preds = %289, %284
  %295 = load ptr, ptr %7, align 8
  %296 = getelementptr inbounds %struct.comedi_cmd, ptr %295, i32 0, i32 8
  %297 = load i32, ptr %296, align 8
  %298 = load ptr, ptr @this_board, align 8
  %299 = getelementptr inbounds %struct.TYPE_2__, ptr %298, i32 0, i32 2
  %300 = load i32, ptr %299, align 4
  %301 = icmp sgt i32 %297, %300
  br i1 %301, label %302, label %310

302:                                              ; preds = %294
  %303 = load ptr, ptr @this_board, align 8
  %304 = getelementptr inbounds %struct.TYPE_2__, ptr %303, i32 0, i32 2
  %305 = load i32, ptr %304, align 4
  %306 = load ptr, ptr %7, align 8
  %307 = getelementptr inbounds %struct.comedi_cmd, ptr %306, i32 0, i32 8
  store i32 %305, ptr %307, align 8
  %308 = load i32, ptr %8, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, ptr %8, align 4
  br label %310

310:                                              ; preds = %302, %294
  %311 = load ptr, ptr %7, align 8
  %312 = getelementptr inbounds %struct.comedi_cmd, ptr %311, i32 0, i32 4
  %313 = load i32, ptr %312, align 8
  %314 = load i32, ptr @TRIG_COUNT, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %327

316:                                              ; preds = %310
  %317 = load ptr, ptr %7, align 8
  %318 = getelementptr inbounds %struct.comedi_cmd, ptr %317, i32 0, i32 9
  %319 = load i32, ptr %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %326, label %321

321:                                              ; preds = %316
  %322 = load ptr, ptr %7, align 8
  %323 = getelementptr inbounds %struct.comedi_cmd, ptr %322, i32 0, i32 9
  store i32 1, ptr %323, align 4
  %324 = load i32, ptr %8, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %8, align 4
  br label %326

326:                                              ; preds = %321, %316
  br label %338

327:                                              ; preds = %310
  %328 = load ptr, ptr %7, align 8
  %329 = getelementptr inbounds %struct.comedi_cmd, ptr %328, i32 0, i32 9
  %330 = load i32, ptr %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = load ptr, ptr %7, align 8
  %334 = getelementptr inbounds %struct.comedi_cmd, ptr %333, i32 0, i32 9
  store i32 0, ptr %334, align 4
  %335 = load i32, ptr %8, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, ptr %8, align 4
  br label %337

337:                                              ; preds = %332, %327
  br label %338

338:                                              ; preds = %337, %326
  %339 = load i32, ptr %8, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  store i32 3, ptr %4, align 4
  br label %384

342:                                              ; preds = %338
  %343 = load ptr, ptr %7, align 8
  %344 = getelementptr inbounds %struct.comedi_cmd, ptr %343, i32 0, i32 2
  %345 = load i32, ptr %344, align 8
  %346 = load i32, ptr @TRIG_TIMER, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %379

348:                                              ; preds = %342
  %349 = load ptr, ptr %7, align 8
  %350 = getelementptr inbounds %struct.comedi_cmd, ptr %349, i32 0, i32 1
  %351 = load i32, ptr %350, align 4
  %352 = load i32, ptr @TRIG_TIMER, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %378

354:                                              ; preds = %348
  %355 = load ptr, ptr %7, align 8
  %356 = getelementptr inbounds %struct.comedi_cmd, ptr %355, i32 0, i32 6
  %357 = load i32, ptr %356, align 8
  %358 = load ptr, ptr %7, align 8
  %359 = getelementptr inbounds %struct.comedi_cmd, ptr %358, i32 0, i32 7
  %360 = load i32, ptr %359, align 4
  %361 = load ptr, ptr %7, align 8
  %362 = getelementptr inbounds %struct.comedi_cmd, ptr %361, i32 0, i32 10
  %363 = load i32, ptr %362, align 8
  %364 = mul nsw i32 %360, %363
  %365 = icmp slt i32 %357, %364
  br i1 %365, label %366, label %378

366:                                              ; preds = %354
  %367 = load ptr, ptr %7, align 8
  %368 = getelementptr inbounds %struct.comedi_cmd, ptr %367, i32 0, i32 7
  %369 = load i32, ptr %368, align 4
  %370 = load ptr, ptr %7, align 8
  %371 = getelementptr inbounds %struct.comedi_cmd, ptr %370, i32 0, i32 10
  %372 = load i32, ptr %371, align 8
  %373 = mul nsw i32 %369, %372
  %374 = load ptr, ptr %7, align 8
  %375 = getelementptr inbounds %struct.comedi_cmd, ptr %374, i32 0, i32 6
  store i32 %373, ptr %375, align 8
  %376 = load i32, ptr %8, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, ptr %8, align 4
  br label %378

378:                                              ; preds = %366, %354, %348
  br label %379

379:                                              ; preds = %378, %342
  %380 = load i32, ptr %8, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %379
  store i32 4, ptr %4, align 4
  br label %384

383:                                              ; preds = %379
  store i32 0, ptr %4, align 4
  br label %384

384:                                              ; preds = %383, %382, %341, %198, %128
  %385 = load i32, ptr %4, align 4
  ret i32 %385
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
