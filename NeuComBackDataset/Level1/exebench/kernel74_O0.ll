; ModuleID = '../benchmarks/fine_grained/exebench/kernel74.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel74.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@HwVIPET = dso_local global ptr null, align 8
@RET_VIQE_EN_DI_DNSP = dso_local global i32 0, align 4
@RET_VIQE_EN_ERRREG = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @viqe_set_modes(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load ptr, ptr @HwVIPET, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, ptr %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 64
  br label %25

19:                                               ; preds = %1
  %20 = load ptr, ptr @HwVIPET, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, -65
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi i32 [ %18, %13 ], [ %24, %19 ]
  %27 = load ptr, ptr @HwVIPET, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, ptr %28, i32 0, i32 0
  store i32 %26, ptr %29, align 4
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load ptr, ptr @HwVIPET, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, ptr %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, 32
  br label %46

40:                                               ; preds = %25
  %41 = load ptr, ptr @HwVIPET, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, ptr %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, ptr %42, i32 0, i32 0
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, -33
  br label %46

46:                                               ; preds = %40, %34
  %47 = phi i32 [ %39, %34 ], [ %45, %40 ]
  %48 = load ptr, ptr @HwVIPET, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, ptr %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, ptr %49, i32 0, i32 0
  store i32 %47, ptr %50, align 4
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load ptr, ptr @HwVIPET, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, ptr %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, 16
  br label %67

61:                                               ; preds = %46
  %62 = load ptr, ptr @HwVIPET, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, ptr %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, ptr %63, i32 0, i32 0
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, -17
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i32 [ %60, %55 ], [ %66, %61 ]
  %69 = load ptr, ptr @HwVIPET, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, ptr %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, ptr %70, i32 0, i32 0
  store i32 %68, ptr %71, align 4
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load ptr, ptr @HwVIPET, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, ptr %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, ptr %78, i32 0, i32 0
  %80 = load i32, ptr %79, align 4
  %81 = or i32 %80, 1024
  br label %88

82:                                               ; preds = %67
  %83 = load ptr, ptr @HwVIPET, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, ptr %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, ptr %84, i32 0, i32 0
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, -1025
  br label %88

88:                                               ; preds = %82, %76
  %89 = phi i32 [ %81, %76 ], [ %87, %82 ]
  %90 = load ptr, ptr @HwVIPET, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, ptr %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, ptr %91, i32 0, i32 0
  store i32 %89, ptr %92, align 4
  %93 = load ptr, ptr %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, ptr %93, i32 0, i32 4
  %95 = load i64, ptr %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load ptr, ptr @HwVIPET, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, ptr %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, ptr %99, i32 0, i32 0
  %101 = load i32, ptr %100, align 4
  %102 = or i32 %101, 4096
  br label %109

103:                                              ; preds = %88
  %104 = load ptr, ptr @HwVIPET, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, ptr %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, ptr %105, i32 0, i32 0
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, -4097
  br label %109

109:                                              ; preds = %103, %97
  %110 = phi i32 [ %102, %97 ], [ %108, %103 ]
  %111 = load ptr, ptr @HwVIPET, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, ptr %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, ptr %112, i32 0, i32 0
  store i32 %110, ptr %113, align 4
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, ptr %114, i32 0, i32 6
  %116 = load i64, ptr %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load ptr, ptr @HwVIPET, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, ptr %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, ptr %120, i32 0, i32 0
  %122 = load i32, ptr %121, align 4
  %123 = or i32 %122, 262144
  br label %130

124:                                              ; preds = %109
  %125 = load ptr, ptr @HwVIPET, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, ptr %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, ptr %126, i32 0, i32 0
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, -262145
  br label %130

130:                                              ; preds = %124, %118
  %131 = phi i32 [ %123, %118 ], [ %129, %124 ]
  %132 = load ptr, ptr @HwVIPET, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, ptr %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, ptr %133, i32 0, i32 0
  store i32 %131, ptr %134, align 4
  %135 = load ptr, ptr %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, ptr %135, i32 0, i32 5
  %137 = load i64, ptr %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %130
  %140 = load ptr, ptr @HwVIPET, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, ptr %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, ptr %141, i32 0, i32 0
  %143 = load i32, ptr %142, align 4
  %144 = or i32 %143, 131072
  br label %151

145:                                              ; preds = %130
  %146 = load ptr, ptr @HwVIPET, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, ptr %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, ptr %147, i32 0, i32 0
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, -131073
  br label %151

151:                                              ; preds = %145, %139
  %152 = phi i32 [ %144, %139 ], [ %150, %145 ]
  %153 = load ptr, ptr @HwVIPET, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, ptr %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, ptr %154, i32 0, i32 0
  store i32 %152, ptr %155, align 4
  %156 = load ptr, ptr %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, ptr %156, i32 0, i32 3
  %158 = load i32, ptr %157, align 4
  %159 = load ptr, ptr %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, ptr %159, i32 0, i32 4
  %161 = load i64, ptr %160, align 8
  %162 = icmp ne i64 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = and i32 %158, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %151
  %168 = load ptr, ptr %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, ptr %168, i32 0, i32 0
  %170 = load i32, ptr %169, align 8
  %171 = load ptr, ptr %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, ptr %171, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = or i32 %170, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i32, ptr @RET_VIQE_EN_DI_DNSP, align 4
  store i32 %177, ptr %2, align 4
  br label %373

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178, %151
  %180 = load ptr, ptr %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, ptr %180, i32 0, i32 2
  %182 = load i32, ptr %181, align 8
  %183 = load ptr, ptr %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, ptr %183, i32 0, i32 0
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %182, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %179
  %189 = load ptr, ptr @HwVIPET, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, ptr %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_6__, ptr %190, i32 0, i32 0
  %192 = load i32, ptr %191, align 4
  %193 = and i32 %192, -769
  store i32 %193, ptr %191, align 4
  %194 = load ptr, ptr @HwVIPET, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, ptr %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, ptr %195, i32 0, i32 0
  %197 = load i32, ptr %196, align 4
  %198 = or i32 %197, 512
  store i32 %198, ptr %196, align 4
  br label %253

199:                                              ; preds = %179
  %200 = load ptr, ptr %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, ptr %200, i32 0, i32 2
  %202 = load i32, ptr %201, align 8
  %203 = load ptr, ptr %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, ptr %203, i32 0, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %202, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %199
  %209 = load ptr, ptr @HwVIPET, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, ptr %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_6__, ptr %210, i32 0, i32 0
  %212 = load i32, ptr %211, align 4
  %213 = and i32 %212, -769
  store i32 %213, ptr %211, align 4
  %214 = load ptr, ptr @HwVIPET, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, ptr %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_6__, ptr %215, i32 0, i32 0
  %217 = load i32, ptr %216, align 4
  %218 = or i32 %217, 512
  store i32 %218, ptr %216, align 4
  br label %252

219:                                              ; preds = %199
  %220 = load ptr, ptr %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, ptr %220, i32 0, i32 2
  %222 = load i32, ptr %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load ptr, ptr @HwVIPET, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, ptr %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_6__, ptr %226, i32 0, i32 0
  %228 = load i32, ptr %227, align 4
  %229 = and i32 %228, -769
  store i32 %229, ptr %227, align 4
  br label %251

230:                                              ; preds = %219
  %231 = load ptr, ptr %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, ptr %231, i32 0, i32 0
  %233 = load i32, ptr %232, align 8
  %234 = load ptr, ptr %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, ptr %234, i32 0, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = or i32 %233, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %250

239:                                              ; preds = %230
  %240 = load ptr, ptr @HwVIPET, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, ptr %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_6__, ptr %241, i32 0, i32 0
  %243 = load i32, ptr %242, align 4
  %244 = and i32 %243, -769
  store i32 %244, ptr %242, align 4
  %245 = load ptr, ptr @HwVIPET, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, ptr %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_6__, ptr %246, i32 0, i32 0
  %248 = load i32, ptr %247, align 4
  %249 = or i32 %248, 256
  store i32 %249, ptr %247, align 4
  br label %250

250:                                              ; preds = %239, %230
  br label %251

251:                                              ; preds = %250, %224
  br label %252

252:                                              ; preds = %251, %208
  br label %253

253:                                              ; preds = %252, %188
  %254 = load ptr, ptr %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, ptr %254, i32 0, i32 3
  %256 = load i32, ptr %255, align 4
  %257 = load ptr, ptr %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, ptr %257, i32 0, i32 4
  %259 = load i64, ptr %258, align 8
  %260 = icmp ne i64 %259, 0
  %261 = xor i1 %260, true
  %262 = zext i1 %261 to i32
  %263 = and i32 %256, %262
  %264 = load ptr, ptr %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, ptr %264, i32 0, i32 1
  %266 = load i32, ptr %265, align 4
  %267 = and i32 %263, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %253
  %270 = load ptr, ptr @HwVIPET, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, ptr %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_6__, ptr %271, i32 0, i32 0
  %273 = load i32, ptr %272, align 4
  %274 = or i32 %273, 8192
  store i32 %274, ptr %272, align 4
  br label %281

275:                                              ; preds = %253
  %276 = load ptr, ptr @HwVIPET, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, ptr %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_6__, ptr %277, i32 0, i32 0
  %279 = load i32, ptr %278, align 4
  %280 = and i32 %279, -8193
  store i32 %280, ptr %278, align 4
  br label %281

281:                                              ; preds = %275, %269
  %282 = load ptr, ptr %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, ptr %282, i32 0, i32 3
  %284 = load i32, ptr %283, align 4
  %285 = load ptr, ptr %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, ptr %285, i32 0, i32 4
  %287 = load i64, ptr %286, align 8
  %288 = icmp ne i64 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  %291 = and i32 %284, %290
  %292 = load ptr, ptr %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, ptr %292, i32 0, i32 2
  %294 = load i32, ptr %293, align 8
  %295 = or i32 %291, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %281
  %298 = load ptr, ptr @HwVIPET, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, ptr %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_6__, ptr %299, i32 0, i32 0
  %301 = load i32, ptr %300, align 4
  %302 = or i32 %301, 4
  store i32 %302, ptr %300, align 4
  br label %309

303:                                              ; preds = %281
  %304 = load ptr, ptr @HwVIPET, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, ptr %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_6__, ptr %305, i32 0, i32 0
  %307 = load i32, ptr %306, align 4
  %308 = and i32 %307, -5
  store i32 %308, ptr %306, align 4
  br label %309

309:                                              ; preds = %303, %297
  %310 = load ptr, ptr %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, ptr %310, i32 0, i32 2
  %312 = load i32, ptr %311, align 8
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %325

314:                                              ; preds = %309
  %315 = load ptr, ptr @HwVIPET, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, ptr %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_6__, ptr %316, i32 0, i32 0
  %318 = load i32, ptr %317, align 4
  %319 = or i32 %318, 8
  store i32 %319, ptr %317, align 4
  %320 = load ptr, ptr @HwVIPET, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, ptr %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_6__, ptr %321, i32 0, i32 0
  %323 = load i32, ptr %322, align 4
  %324 = or i32 %323, 128
  store i32 %324, ptr %322, align 4
  br label %336

325:                                              ; preds = %309
  %326 = load ptr, ptr @HwVIPET, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, ptr %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_6__, ptr %327, i32 0, i32 0
  %329 = load i32, ptr %328, align 4
  %330 = and i32 %329, -9
  store i32 %330, ptr %328, align 4
  %331 = load ptr, ptr @HwVIPET, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, ptr %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_6__, ptr %332, i32 0, i32 0
  %334 = load i32, ptr %333, align 4
  %335 = and i32 %334, -129
  store i32 %335, ptr %333, align 4
  br label %336

336:                                              ; preds = %325, %314
  store i32 1, ptr %4, align 4
  %337 = load ptr, ptr @HwVIPET, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, ptr %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_6__, ptr %338, i32 0, i32 0
  %340 = load i32, ptr %339, align 4
  %341 = or i32 %340, 65536
  %342 = load ptr, ptr @HwVIPET, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, ptr %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_6__, ptr %343, i32 0, i32 0
  store i32 %341, ptr %344, align 4
  %345 = load ptr, ptr @HwVIPET, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, ptr %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_6__, ptr %346, i32 0, i32 0
  %348 = load i32, ptr %347, align 4
  %349 = or i32 %348, 2
  %350 = load ptr, ptr @HwVIPET, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, ptr %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_6__, ptr %351, i32 0, i32 0
  store i32 %349, ptr %352, align 4
  %353 = load ptr, ptr @HwVIPET, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, ptr %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_6__, ptr %354, i32 0, i32 0
  %356 = load i32, ptr %355, align 4
  %357 = or i32 %356, 1
  %358 = load ptr, ptr @HwVIPET, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, ptr %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_6__, ptr %359, i32 0, i32 0
  store i32 %357, ptr %360, align 4
  %361 = load ptr, ptr @HwVIPET, align 8
  %362 = getelementptr inbounds %struct.TYPE_9__, ptr %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_7__, ptr %362, i32 0, i32 0
  %364 = load i32, ptr %363, align 4
  %365 = and i32 %364, 61440
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %336
  br label %370

368:                                              ; preds = %336
  %369 = load i32, ptr @RET_VIQE_EN_ERRREG, align 4
  br label %370

370:                                              ; preds = %368, %367
  %371 = phi i32 [ 1, %367 ], [ %369, %368 ]
  store i32 %371, ptr %4, align 4
  %372 = load i32, ptr %4, align 4
  store i32 %372, ptr %2, align 4
  br label %373

373:                                              ; preds = %370, %176
  %374 = load i32, ptr %2, align 4
  ret i32 %374
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
