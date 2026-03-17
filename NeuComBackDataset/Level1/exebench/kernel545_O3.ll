; ModuleID = '../benchmarks/fine_grained/exebench/kernel545.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel545.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@psr = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bics(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [20 x i32], align 16
  %4 = alloca [20 x i32], align 16
  %5 = alloca [32 x i32], align 16
  %6 = load ptr, ptr @reg, align 8, !tbaa !5
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !9
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %3, i8 0, i64 80, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %4, i8 0, i64 80, i1 false), !tbaa !9
  %13 = icmp sgt i32 %9, -1
  br i1 %13, label %14, label %107

14:                                               ; preds = %2
  %15 = and i32 %9, 1
  %16 = getelementptr inbounds i8, ptr %3, i64 76
  store i32 %15, ptr %16, align 4, !tbaa !9
  %17 = lshr i32 %9, 1
  %18 = and i32 %17, 1
  %19 = getelementptr inbounds i8, ptr %3, i64 72
  store i32 %18, ptr %19, align 8, !tbaa !9
  %20 = lshr i32 %9, 2
  %21 = and i32 %20, 1
  %22 = getelementptr inbounds i8, ptr %3, i64 68
  store i32 %21, ptr %22, align 4, !tbaa !9
  %23 = lshr i32 %9, 3
  %24 = and i32 %23, 1
  %25 = getelementptr inbounds i8, ptr %3, i64 64
  store i32 %24, ptr %25, align 16, !tbaa !9
  %26 = lshr i32 %9, 4
  %27 = and i32 %26, 1
  %28 = getelementptr inbounds i8, ptr %3, i64 60
  store i32 %27, ptr %28, align 4, !tbaa !9
  %29 = lshr i32 %9, 5
  %30 = and i32 %29, 1
  %31 = getelementptr inbounds i8, ptr %3, i64 56
  store i32 %30, ptr %31, align 8, !tbaa !9
  %32 = lshr i32 %9, 6
  %33 = and i32 %32, 1
  %34 = getelementptr inbounds i8, ptr %3, i64 52
  store i32 %33, ptr %34, align 4, !tbaa !9
  %35 = lshr i32 %9, 7
  %36 = and i32 %35, 1
  %37 = getelementptr inbounds i8, ptr %3, i64 48
  store i32 %36, ptr %37, align 16, !tbaa !9
  %38 = lshr i32 %9, 8
  %39 = and i32 %38, 1
  %40 = getelementptr inbounds i8, ptr %3, i64 44
  store i32 %39, ptr %40, align 4, !tbaa !9
  %41 = lshr i32 %9, 9
  %42 = and i32 %41, 1
  %43 = getelementptr inbounds i8, ptr %3, i64 40
  store i32 %42, ptr %43, align 8, !tbaa !9
  %44 = lshr i32 %9, 10
  %45 = and i32 %44, 1
  %46 = getelementptr inbounds i8, ptr %3, i64 36
  store i32 %45, ptr %46, align 4, !tbaa !9
  %47 = lshr i32 %9, 11
  %48 = and i32 %47, 1
  %49 = getelementptr inbounds i8, ptr %3, i64 32
  store i32 %48, ptr %49, align 16, !tbaa !9
  %50 = lshr i32 %9, 12
  %51 = and i32 %50, 1
  %52 = getelementptr inbounds i8, ptr %3, i64 28
  store i32 %51, ptr %52, align 4, !tbaa !9
  %53 = lshr i32 %9, 13
  %54 = and i32 %53, 1
  %55 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 %54, ptr %55, align 8, !tbaa !9
  %56 = lshr i32 %9, 14
  %57 = and i32 %56, 1
  %58 = getelementptr inbounds i8, ptr %3, i64 20
  store i32 %57, ptr %58, align 4, !tbaa !9
  %59 = lshr i32 %9, 15
  %60 = and i32 %59, 1
  %61 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 %60, ptr %61, align 16, !tbaa !9
  %62 = lshr i32 %9, 16
  %63 = and i32 %62, 1
  %64 = getelementptr inbounds i8, ptr %3, i64 12
  store i32 %63, ptr %64, align 4, !tbaa !9
  %65 = lshr i32 %9, 17
  %66 = and i32 %65, 1
  %67 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %66, ptr %67, align 8, !tbaa !9
  %68 = lshr i32 %9, 18
  %69 = and i32 %68, 1
  %70 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 %69, ptr %70, align 4, !tbaa !9
  %71 = lshr i32 %9, 19
  %72 = and i32 %71, 1
  store i32 %72, ptr %3, align 16, !tbaa !9
  %73 = lshr i32 %9, 20
  %74 = and i32 %73, 1
  %75 = lshr i32 %9, 21
  %76 = and i32 %75, 1
  %77 = lshr i32 %9, 22
  %78 = and i32 %77, 1
  %79 = lshr i32 %9, 23
  %80 = and i32 %79, 1
  %81 = insertelement <4 x i32> poison, i32 %80, i64 0
  %82 = insertelement <4 x i32> %81, i32 %78, i64 1
  %83 = insertelement <4 x i32> %82, i32 %76, i64 2
  %84 = insertelement <4 x i32> %83, i32 %74, i64 3
  %85 = lshr i32 %9, 24
  %86 = and i32 %85, 1
  %87 = lshr i32 %9, 25
  %88 = and i32 %87, 1
  %89 = lshr i32 %9, 26
  %90 = and i32 %89, 1
  %91 = lshr i32 %9, 27
  %92 = and i32 %91, 1
  %93 = insertelement <4 x i32> poison, i32 %92, i64 0
  %94 = insertelement <4 x i32> %93, i32 %90, i64 1
  %95 = insertelement <4 x i32> %94, i32 %88, i64 2
  %96 = insertelement <4 x i32> %95, i32 %86, i64 3
  %97 = lshr i32 %9, 28
  %98 = and i32 %97, 1
  %99 = lshr i32 %9, 29
  %100 = and i32 %99, 1
  %101 = lshr i32 %9, 30
  %102 = lshr i32 %9, 31
  %103 = insertelement <4 x i32> poison, i32 %102, i64 0
  %104 = insertelement <4 x i32> %103, i32 %101, i64 1
  %105 = insertelement <4 x i32> %104, i32 %100, i64 2
  %106 = insertelement <4 x i32> %105, i32 %98, i64 3
  br label %238

107:                                              ; preds = %2
  %108 = xor i32 %9, -1
  %109 = and i32 %108, 1
  %110 = getelementptr inbounds i8, ptr %3, i64 76
  store i32 %109, ptr %110, align 4, !tbaa !9
  %111 = lshr i32 %108, 1
  %112 = and i32 %111, 1
  %113 = getelementptr inbounds i8, ptr %3, i64 72
  store i32 %112, ptr %113, align 8, !tbaa !9
  %114 = lshr i32 %108, 2
  %115 = and i32 %114, 1
  %116 = getelementptr inbounds i8, ptr %3, i64 68
  store i32 %115, ptr %116, align 4, !tbaa !9
  %117 = lshr i32 %108, 3
  %118 = and i32 %117, 1
  %119 = getelementptr inbounds i8, ptr %3, i64 64
  store i32 %118, ptr %119, align 16, !tbaa !9
  %120 = lshr i32 %108, 4
  %121 = and i32 %120, 1
  %122 = getelementptr inbounds i8, ptr %3, i64 60
  store i32 %121, ptr %122, align 4, !tbaa !9
  %123 = lshr i32 %108, 5
  %124 = and i32 %123, 1
  %125 = getelementptr inbounds i8, ptr %3, i64 56
  store i32 %124, ptr %125, align 8, !tbaa !9
  %126 = lshr i32 %108, 6
  %127 = and i32 %126, 1
  %128 = getelementptr inbounds i8, ptr %3, i64 52
  store i32 %127, ptr %128, align 4, !tbaa !9
  %129 = lshr i32 %108, 7
  %130 = and i32 %129, 1
  %131 = getelementptr inbounds i8, ptr %3, i64 48
  store i32 %130, ptr %131, align 16, !tbaa !9
  %132 = lshr i32 %108, 8
  %133 = and i32 %132, 1
  %134 = getelementptr inbounds i8, ptr %3, i64 44
  store i32 %133, ptr %134, align 4, !tbaa !9
  %135 = lshr i32 %108, 9
  %136 = and i32 %135, 1
  %137 = getelementptr inbounds i8, ptr %3, i64 40
  store i32 %136, ptr %137, align 8, !tbaa !9
  %138 = lshr i32 %108, 10
  %139 = and i32 %138, 1
  %140 = getelementptr inbounds i8, ptr %3, i64 36
  store i32 %139, ptr %140, align 4, !tbaa !9
  %141 = lshr i32 %108, 11
  %142 = and i32 %141, 1
  %143 = getelementptr inbounds i8, ptr %3, i64 32
  store i32 %142, ptr %143, align 16, !tbaa !9
  %144 = lshr i32 %108, 12
  %145 = and i32 %144, 1
  %146 = getelementptr inbounds i8, ptr %3, i64 28
  store i32 %145, ptr %146, align 4, !tbaa !9
  %147 = lshr i32 %108, 13
  %148 = and i32 %147, 1
  %149 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 %148, ptr %149, align 8, !tbaa !9
  %150 = lshr i32 %108, 14
  %151 = and i32 %150, 1
  %152 = getelementptr inbounds i8, ptr %3, i64 20
  store i32 %151, ptr %152, align 4, !tbaa !9
  %153 = lshr i32 %108, 15
  %154 = and i32 %153, 1
  %155 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 %154, ptr %155, align 16, !tbaa !9
  %156 = lshr i32 %108, 16
  %157 = and i32 %156, 1
  %158 = getelementptr inbounds i8, ptr %3, i64 12
  store i32 %157, ptr %158, align 4, !tbaa !9
  %159 = lshr i32 %108, 17
  %160 = and i32 %159, 1
  %161 = lshr i32 %108, 18
  %162 = and i32 %161, 1
  %163 = lshr i32 %108, 19
  %164 = and i32 %163, 1
  %165 = lshr i32 %108, 20
  %166 = and i32 %165, 1
  %167 = lshr i32 %108, 21
  %168 = and i32 %167, 1
  %169 = lshr i32 %108, 22
  %170 = and i32 %169, 1
  %171 = lshr i32 %108, 23
  %172 = and i32 %171, 1
  %173 = lshr i32 %108, 24
  %174 = and i32 %173, 1
  %175 = lshr i32 %108, 25
  %176 = and i32 %175, 1
  %177 = lshr i32 %108, 26
  %178 = and i32 %177, 1
  %179 = lshr i32 %108, 27
  %180 = and i32 %179, 1
  %181 = lshr i32 %108, 28
  %182 = and i32 %181, 1
  %183 = lshr i32 %108, 29
  %184 = and i32 %183, 1
  %185 = lshr i32 %9, 30
  %186 = xor i32 %185, 2
  %187 = insertelement <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>, i32 %186, i64 1
  %188 = xor i32 %184, 1
  %189 = insertelement <4 x i32> %187, i32 %188, i64 2
  %190 = xor i32 %182, 1
  %191 = insertelement <4 x i32> %189, i32 %190, i64 3
  %192 = xor i32 %180, 1
  %193 = insertelement <4 x i32> poison, i32 %192, i64 0
  %194 = xor i32 %178, 1
  %195 = insertelement <4 x i32> %193, i32 %194, i64 1
  %196 = xor i32 %176, 1
  %197 = insertelement <4 x i32> %195, i32 %196, i64 2
  %198 = xor i32 %174, 1
  %199 = insertelement <4 x i32> %197, i32 %198, i64 3
  %200 = xor i32 %172, 1
  %201 = insertelement <4 x i32> poison, i32 %200, i64 0
  %202 = xor i32 %170, 1
  %203 = insertelement <4 x i32> %201, i32 %202, i64 1
  %204 = xor i32 %168, 1
  %205 = insertelement <4 x i32> %203, i32 %204, i64 2
  %206 = xor i32 %166, 1
  %207 = insertelement <4 x i32> %205, i32 %206, i64 3
  %208 = xor i32 %164, 1
  store i32 %208, ptr %3, align 16, !tbaa !9
  %209 = xor i32 %162, 1
  %210 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 %209, ptr %210, align 4, !tbaa !9
  %211 = xor i32 %160, 1
  %212 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %211, ptr %212, align 8, !tbaa !9
  %213 = getelementptr inbounds i8, ptr %3, i64 12
  %214 = load <4 x i32>, ptr %213, align 4, !tbaa !9
  %215 = icmp eq <4 x i32> %214, zeroinitializer
  %216 = zext <4 x i1> %215 to <4 x i32>
  %217 = getelementptr inbounds i8, ptr %3, i64 12
  store <4 x i32> %216, ptr %217, align 4, !tbaa !9
  %218 = getelementptr inbounds i8, ptr %3, i64 28
  %219 = load <4 x i32>, ptr %218, align 4, !tbaa !9
  %220 = icmp eq <4 x i32> %219, zeroinitializer
  %221 = zext <4 x i1> %220 to <4 x i32>
  %222 = getelementptr inbounds i8, ptr %3, i64 28
  store <4 x i32> %221, ptr %222, align 4, !tbaa !9
  %223 = getelementptr inbounds i8, ptr %3, i64 44
  %224 = load <4 x i32>, ptr %223, align 4, !tbaa !9
  %225 = icmp eq <4 x i32> %224, zeroinitializer
  %226 = zext <4 x i1> %225 to <4 x i32>
  %227 = getelementptr inbounds i8, ptr %3, i64 44
  store <4 x i32> %226, ptr %227, align 4, !tbaa !9
  %228 = getelementptr inbounds i8, ptr %3, i64 60
  %229 = load <4 x i32>, ptr %228, align 4, !tbaa !9
  %230 = icmp eq <4 x i32> %229, zeroinitializer
  %231 = zext <4 x i1> %230 to <4 x i32>
  %232 = getelementptr inbounds i8, ptr %3, i64 60
  store <4 x i32> %231, ptr %232, align 4, !tbaa !9
  %233 = getelementptr inbounds i8, ptr %3, i64 76
  %234 = load i32, ptr %233, align 4, !tbaa !9
  %235 = icmp eq i32 %234, 0
  %236 = zext i1 %235 to i32
  %237 = getelementptr inbounds i8, ptr %3, i64 76
  store i32 %236, ptr %237, align 4, !tbaa !9
  br label %238

238:                                              ; preds = %107, %14
  %239 = phi <4 x i32> [ %84, %14 ], [ %207, %107 ]
  %240 = phi <4 x i32> [ %96, %14 ], [ %199, %107 ]
  %241 = phi <4 x i32> [ %106, %14 ], [ %191, %107 ]
  %242 = icmp sgt i32 %12, -1
  br i1 %242, label %243, label %336

243:                                              ; preds = %238
  %244 = and i32 %12, 1
  %245 = getelementptr inbounds i8, ptr %4, i64 76
  store i32 %244, ptr %245, align 4, !tbaa !9
  %246 = lshr i32 %12, 1
  %247 = and i32 %246, 1
  %248 = getelementptr inbounds i8, ptr %4, i64 72
  store i32 %247, ptr %248, align 8, !tbaa !9
  %249 = lshr i32 %12, 2
  %250 = and i32 %249, 1
  %251 = getelementptr inbounds i8, ptr %4, i64 68
  store i32 %250, ptr %251, align 4, !tbaa !9
  %252 = lshr i32 %12, 3
  %253 = and i32 %252, 1
  %254 = getelementptr inbounds i8, ptr %4, i64 64
  store i32 %253, ptr %254, align 16, !tbaa !9
  %255 = lshr i32 %12, 4
  %256 = and i32 %255, 1
  %257 = getelementptr inbounds i8, ptr %4, i64 60
  store i32 %256, ptr %257, align 4, !tbaa !9
  %258 = lshr i32 %12, 5
  %259 = and i32 %258, 1
  %260 = getelementptr inbounds i8, ptr %4, i64 56
  store i32 %259, ptr %260, align 8, !tbaa !9
  %261 = lshr i32 %12, 6
  %262 = and i32 %261, 1
  %263 = getelementptr inbounds i8, ptr %4, i64 52
  store i32 %262, ptr %263, align 4, !tbaa !9
  %264 = lshr i32 %12, 7
  %265 = and i32 %264, 1
  %266 = getelementptr inbounds i8, ptr %4, i64 48
  store i32 %265, ptr %266, align 16, !tbaa !9
  %267 = lshr i32 %12, 8
  %268 = and i32 %267, 1
  %269 = getelementptr inbounds i8, ptr %4, i64 44
  store i32 %268, ptr %269, align 4, !tbaa !9
  %270 = lshr i32 %12, 9
  %271 = and i32 %270, 1
  %272 = getelementptr inbounds i8, ptr %4, i64 40
  store i32 %271, ptr %272, align 8, !tbaa !9
  %273 = lshr i32 %12, 10
  %274 = and i32 %273, 1
  %275 = getelementptr inbounds i8, ptr %4, i64 36
  store i32 %274, ptr %275, align 4, !tbaa !9
  %276 = lshr i32 %12, 11
  %277 = and i32 %276, 1
  %278 = getelementptr inbounds i8, ptr %4, i64 32
  store i32 %277, ptr %278, align 16, !tbaa !9
  %279 = lshr i32 %12, 12
  %280 = and i32 %279, 1
  %281 = getelementptr inbounds i8, ptr %4, i64 28
  store i32 %280, ptr %281, align 4, !tbaa !9
  %282 = lshr i32 %12, 13
  %283 = and i32 %282, 1
  %284 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 %283, ptr %284, align 8, !tbaa !9
  %285 = lshr i32 %12, 14
  %286 = and i32 %285, 1
  %287 = getelementptr inbounds i8, ptr %4, i64 20
  store i32 %286, ptr %287, align 4, !tbaa !9
  %288 = lshr i32 %12, 15
  %289 = and i32 %288, 1
  %290 = getelementptr inbounds i8, ptr %4, i64 16
  store i32 %289, ptr %290, align 16, !tbaa !9
  %291 = lshr i32 %12, 16
  %292 = and i32 %291, 1
  %293 = getelementptr inbounds i8, ptr %4, i64 12
  store i32 %292, ptr %293, align 4, !tbaa !9
  %294 = lshr i32 %12, 17
  %295 = and i32 %294, 1
  %296 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %295, ptr %296, align 8, !tbaa !9
  %297 = lshr i32 %12, 18
  %298 = and i32 %297, 1
  %299 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %298, ptr %299, align 4, !tbaa !9
  %300 = lshr i32 %12, 19
  %301 = and i32 %300, 1
  store i32 %301, ptr %4, align 16, !tbaa !9
  %302 = lshr i32 %12, 20
  %303 = and i32 %302, 1
  %304 = lshr i32 %12, 21
  %305 = and i32 %304, 1
  %306 = lshr i32 %12, 22
  %307 = and i32 %306, 1
  %308 = lshr i32 %12, 23
  %309 = and i32 %308, 1
  %310 = insertelement <4 x i32> poison, i32 %309, i64 0
  %311 = insertelement <4 x i32> %310, i32 %307, i64 1
  %312 = insertelement <4 x i32> %311, i32 %305, i64 2
  %313 = insertelement <4 x i32> %312, i32 %303, i64 3
  %314 = lshr i32 %12, 24
  %315 = and i32 %314, 1
  %316 = lshr i32 %12, 25
  %317 = and i32 %316, 1
  %318 = lshr i32 %12, 26
  %319 = and i32 %318, 1
  %320 = lshr i32 %12, 27
  %321 = and i32 %320, 1
  %322 = insertelement <4 x i32> poison, i32 %321, i64 0
  %323 = insertelement <4 x i32> %322, i32 %319, i64 1
  %324 = insertelement <4 x i32> %323, i32 %317, i64 2
  %325 = insertelement <4 x i32> %324, i32 %315, i64 3
  %326 = lshr i32 %12, 28
  %327 = and i32 %326, 1
  %328 = lshr i32 %12, 29
  %329 = and i32 %328, 1
  %330 = lshr i32 %12, 30
  %331 = lshr i32 %12, 31
  %332 = insertelement <4 x i32> poison, i32 %331, i64 0
  %333 = insertelement <4 x i32> %332, i32 %330, i64 1
  %334 = insertelement <4 x i32> %333, i32 %329, i64 2
  %335 = insertelement <4 x i32> %334, i32 %327, i64 3
  br label %467

336:                                              ; preds = %238
  %337 = xor i32 %12, -1
  %338 = and i32 %337, 1
  %339 = getelementptr inbounds i8, ptr %4, i64 76
  store i32 %338, ptr %339, align 4, !tbaa !9
  %340 = lshr i32 %337, 1
  %341 = and i32 %340, 1
  %342 = getelementptr inbounds i8, ptr %4, i64 72
  store i32 %341, ptr %342, align 8, !tbaa !9
  %343 = lshr i32 %337, 2
  %344 = and i32 %343, 1
  %345 = getelementptr inbounds i8, ptr %4, i64 68
  store i32 %344, ptr %345, align 4, !tbaa !9
  %346 = lshr i32 %337, 3
  %347 = and i32 %346, 1
  %348 = getelementptr inbounds i8, ptr %4, i64 64
  store i32 %347, ptr %348, align 16, !tbaa !9
  %349 = lshr i32 %337, 4
  %350 = and i32 %349, 1
  %351 = getelementptr inbounds i8, ptr %4, i64 60
  store i32 %350, ptr %351, align 4, !tbaa !9
  %352 = lshr i32 %337, 5
  %353 = and i32 %352, 1
  %354 = getelementptr inbounds i8, ptr %4, i64 56
  store i32 %353, ptr %354, align 8, !tbaa !9
  %355 = lshr i32 %337, 6
  %356 = and i32 %355, 1
  %357 = getelementptr inbounds i8, ptr %4, i64 52
  store i32 %356, ptr %357, align 4, !tbaa !9
  %358 = lshr i32 %337, 7
  %359 = and i32 %358, 1
  %360 = getelementptr inbounds i8, ptr %4, i64 48
  store i32 %359, ptr %360, align 16, !tbaa !9
  %361 = lshr i32 %337, 8
  %362 = and i32 %361, 1
  %363 = getelementptr inbounds i8, ptr %4, i64 44
  store i32 %362, ptr %363, align 4, !tbaa !9
  %364 = lshr i32 %337, 9
  %365 = and i32 %364, 1
  %366 = getelementptr inbounds i8, ptr %4, i64 40
  store i32 %365, ptr %366, align 8, !tbaa !9
  %367 = lshr i32 %337, 10
  %368 = and i32 %367, 1
  %369 = getelementptr inbounds i8, ptr %4, i64 36
  store i32 %368, ptr %369, align 4, !tbaa !9
  %370 = lshr i32 %337, 11
  %371 = and i32 %370, 1
  %372 = getelementptr inbounds i8, ptr %4, i64 32
  store i32 %371, ptr %372, align 16, !tbaa !9
  %373 = lshr i32 %337, 12
  %374 = and i32 %373, 1
  %375 = getelementptr inbounds i8, ptr %4, i64 28
  store i32 %374, ptr %375, align 4, !tbaa !9
  %376 = lshr i32 %337, 13
  %377 = and i32 %376, 1
  %378 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 %377, ptr %378, align 8, !tbaa !9
  %379 = lshr i32 %337, 14
  %380 = and i32 %379, 1
  %381 = getelementptr inbounds i8, ptr %4, i64 20
  store i32 %380, ptr %381, align 4, !tbaa !9
  %382 = lshr i32 %337, 15
  %383 = and i32 %382, 1
  %384 = getelementptr inbounds i8, ptr %4, i64 16
  store i32 %383, ptr %384, align 16, !tbaa !9
  %385 = lshr i32 %337, 16
  %386 = and i32 %385, 1
  %387 = getelementptr inbounds i8, ptr %4, i64 12
  store i32 %386, ptr %387, align 4, !tbaa !9
  %388 = lshr i32 %337, 17
  %389 = and i32 %388, 1
  %390 = lshr i32 %337, 18
  %391 = and i32 %390, 1
  %392 = lshr i32 %337, 19
  %393 = and i32 %392, 1
  %394 = lshr i32 %337, 20
  %395 = and i32 %394, 1
  %396 = lshr i32 %337, 21
  %397 = and i32 %396, 1
  %398 = lshr i32 %337, 22
  %399 = and i32 %398, 1
  %400 = lshr i32 %337, 23
  %401 = and i32 %400, 1
  %402 = lshr i32 %337, 24
  %403 = and i32 %402, 1
  %404 = lshr i32 %337, 25
  %405 = and i32 %404, 1
  %406 = lshr i32 %337, 26
  %407 = and i32 %406, 1
  %408 = lshr i32 %337, 27
  %409 = and i32 %408, 1
  %410 = lshr i32 %337, 28
  %411 = and i32 %410, 1
  %412 = lshr i32 %337, 29
  %413 = and i32 %412, 1
  %414 = lshr i32 %12, 30
  %415 = xor i32 %414, 2
  %416 = insertelement <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>, i32 %415, i64 1
  %417 = xor i32 %413, 1
  %418 = insertelement <4 x i32> %416, i32 %417, i64 2
  %419 = xor i32 %411, 1
  %420 = insertelement <4 x i32> %418, i32 %419, i64 3
  %421 = xor i32 %409, 1
  %422 = insertelement <4 x i32> poison, i32 %421, i64 0
  %423 = xor i32 %407, 1
  %424 = insertelement <4 x i32> %422, i32 %423, i64 1
  %425 = xor i32 %405, 1
  %426 = insertelement <4 x i32> %424, i32 %425, i64 2
  %427 = xor i32 %403, 1
  %428 = insertelement <4 x i32> %426, i32 %427, i64 3
  %429 = xor i32 %401, 1
  %430 = insertelement <4 x i32> poison, i32 %429, i64 0
  %431 = xor i32 %399, 1
  %432 = insertelement <4 x i32> %430, i32 %431, i64 1
  %433 = xor i32 %397, 1
  %434 = insertelement <4 x i32> %432, i32 %433, i64 2
  %435 = xor i32 %395, 1
  %436 = insertelement <4 x i32> %434, i32 %435, i64 3
  %437 = xor i32 %393, 1
  store i32 %437, ptr %4, align 16, !tbaa !9
  %438 = xor i32 %391, 1
  %439 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %438, ptr %439, align 4, !tbaa !9
  %440 = xor i32 %389, 1
  %441 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %440, ptr %441, align 8, !tbaa !9
  %442 = getelementptr inbounds i8, ptr %4, i64 12
  %443 = load <4 x i32>, ptr %442, align 4, !tbaa !9
  %444 = icmp eq <4 x i32> %443, zeroinitializer
  %445 = zext <4 x i1> %444 to <4 x i32>
  %446 = getelementptr inbounds i8, ptr %4, i64 12
  store <4 x i32> %445, ptr %446, align 4, !tbaa !9
  %447 = getelementptr inbounds i8, ptr %4, i64 28
  %448 = load <4 x i32>, ptr %447, align 4, !tbaa !9
  %449 = icmp eq <4 x i32> %448, zeroinitializer
  %450 = zext <4 x i1> %449 to <4 x i32>
  %451 = getelementptr inbounds i8, ptr %4, i64 28
  store <4 x i32> %450, ptr %451, align 4, !tbaa !9
  %452 = getelementptr inbounds i8, ptr %4, i64 44
  %453 = load <4 x i32>, ptr %452, align 4, !tbaa !9
  %454 = icmp eq <4 x i32> %453, zeroinitializer
  %455 = zext <4 x i1> %454 to <4 x i32>
  %456 = getelementptr inbounds i8, ptr %4, i64 44
  store <4 x i32> %455, ptr %456, align 4, !tbaa !9
  %457 = getelementptr inbounds i8, ptr %4, i64 60
  %458 = load <4 x i32>, ptr %457, align 4, !tbaa !9
  %459 = icmp eq <4 x i32> %458, zeroinitializer
  %460 = zext <4 x i1> %459 to <4 x i32>
  %461 = getelementptr inbounds i8, ptr %4, i64 60
  store <4 x i32> %460, ptr %461, align 4, !tbaa !9
  %462 = getelementptr inbounds i8, ptr %4, i64 76
  %463 = load i32, ptr %462, align 4, !tbaa !9
  %464 = icmp eq i32 %463, 0
  %465 = zext i1 %464 to i32
  %466 = getelementptr inbounds i8, ptr %4, i64 76
  store i32 %465, ptr %466, align 4, !tbaa !9
  br label %467

467:                                              ; preds = %336, %243
  %468 = phi <4 x i32> [ %313, %243 ], [ %436, %336 ]
  %469 = phi <4 x i32> [ %325, %243 ], [ %428, %336 ]
  %470 = phi <4 x i32> [ %335, %243 ], [ %420, %336 ]
  %471 = icmp eq <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %472 = icmp eq <4 x i32> %470, zeroinitializer
  %473 = select <4 x i1> %471, <4 x i1> %472, <4 x i1> zeroinitializer
  %474 = zext <4 x i1> %473 to <4 x i32>
  store <4 x i32> %474, ptr %5, align 16, !tbaa !9
  %475 = icmp eq <4 x i32> %240, <i32 1, i32 1, i32 1, i32 1>
  %476 = icmp eq <4 x i32> %469, zeroinitializer
  %477 = select <4 x i1> %475, <4 x i1> %476, <4 x i1> zeroinitializer
  %478 = zext <4 x i1> %477 to <4 x i32>
  %479 = getelementptr inbounds i8, ptr %5, i64 16
  store <4 x i32> %478, ptr %479, align 16, !tbaa !9
  %480 = icmp eq <4 x i32> %239, <i32 1, i32 1, i32 1, i32 1>
  %481 = icmp eq <4 x i32> %468, zeroinitializer
  %482 = select <4 x i1> %480, <4 x i1> %481, <4 x i1> zeroinitializer
  %483 = zext <4 x i1> %482 to <4 x i32>
  %484 = getelementptr inbounds i8, ptr %5, i64 32
  store <4 x i32> %483, ptr %484, align 16, !tbaa !9
  %485 = load <4 x i32>, ptr %3, align 16, !tbaa !9
  %486 = icmp eq <4 x i32> %485, <i32 1, i32 1, i32 1, i32 1>
  %487 = load <4 x i32>, ptr %4, align 16, !tbaa !9
  %488 = icmp eq <4 x i32> %487, zeroinitializer
  %489 = select <4 x i1> %486, <4 x i1> %488, <4 x i1> zeroinitializer
  %490 = zext <4 x i1> %489 to <4 x i32>
  %491 = getelementptr inbounds i8, ptr %5, i64 48
  store <4 x i32> %490, ptr %491, align 16, !tbaa !9
  %492 = getelementptr inbounds i8, ptr %3, i64 16
  %493 = load <4 x i32>, ptr %492, align 16, !tbaa !9
  %494 = icmp eq <4 x i32> %493, <i32 1, i32 1, i32 1, i32 1>
  %495 = getelementptr inbounds i8, ptr %4, i64 16
  %496 = load <4 x i32>, ptr %495, align 16, !tbaa !9
  %497 = icmp eq <4 x i32> %496, zeroinitializer
  %498 = select <4 x i1> %494, <4 x i1> %497, <4 x i1> zeroinitializer
  %499 = zext <4 x i1> %498 to <4 x i32>
  %500 = getelementptr inbounds i8, ptr %5, i64 64
  store <4 x i32> %499, ptr %500, align 16, !tbaa !9
  %501 = getelementptr inbounds i8, ptr %3, i64 32
  %502 = load <4 x i32>, ptr %501, align 16, !tbaa !9
  %503 = icmp eq <4 x i32> %502, <i32 1, i32 1, i32 1, i32 1>
  %504 = getelementptr inbounds i8, ptr %4, i64 32
  %505 = load <4 x i32>, ptr %504, align 16, !tbaa !9
  %506 = icmp eq <4 x i32> %505, zeroinitializer
  %507 = select <4 x i1> %503, <4 x i1> %506, <4 x i1> zeroinitializer
  %508 = zext <4 x i1> %507 to <4 x i32>
  %509 = getelementptr inbounds i8, ptr %5, i64 80
  store <4 x i32> %508, ptr %509, align 16, !tbaa !9
  %510 = getelementptr inbounds i8, ptr %3, i64 48
  %511 = load <4 x i32>, ptr %510, align 16, !tbaa !9
  %512 = icmp eq <4 x i32> %511, <i32 1, i32 1, i32 1, i32 1>
  %513 = getelementptr inbounds i8, ptr %4, i64 48
  %514 = load <4 x i32>, ptr %513, align 16, !tbaa !9
  %515 = icmp eq <4 x i32> %514, zeroinitializer
  %516 = select <4 x i1> %512, <4 x i1> %515, <4 x i1> zeroinitializer
  %517 = zext <4 x i1> %516 to <4 x i32>
  %518 = getelementptr inbounds i8, ptr %5, i64 96
  store <4 x i32> %517, ptr %518, align 16, !tbaa !9
  %519 = getelementptr inbounds i8, ptr %3, i64 64
  %520 = load <4 x i32>, ptr %519, align 16, !tbaa !9
  %521 = icmp eq <4 x i32> %520, <i32 1, i32 1, i32 1, i32 1>
  %522 = getelementptr inbounds i8, ptr %4, i64 64
  %523 = load <4 x i32>, ptr %522, align 16, !tbaa !9
  %524 = icmp eq <4 x i32> %523, zeroinitializer
  %525 = select <4 x i1> %521, <4 x i1> %524, <4 x i1> zeroinitializer
  %526 = zext <4 x i1> %525 to <4 x i32>
  %527 = getelementptr inbounds i8, ptr %5, i64 112
  store <4 x i32> %526, ptr %527, align 16, !tbaa !9
  %528 = getelementptr inbounds i8, ptr %5, i64 124
  %529 = load i32, ptr %528, align 4, !tbaa !9
  %530 = getelementptr inbounds i8, ptr %5, i64 60
  %531 = load <16 x i32>, ptr %530, align 4, !tbaa !9
  %532 = shl nsw <16 x i32> %531, <i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1>
  %533 = getelementptr inbounds i8, ptr %5, i64 28
  %534 = load <8 x i32>, ptr %533, align 4, !tbaa !9
  %535 = shl nsw <8 x i32> %534, <i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17>
  %536 = getelementptr inbounds i8, ptr %5, i64 12
  %537 = load <4 x i32>, ptr %536, align 4, !tbaa !9
  %538 = shl nsw <4 x i32> %537, <i32 28, i32 27, i32 26, i32 25>
  %539 = getelementptr inbounds i8, ptr %5, i64 8
  %540 = load i32, ptr %539, align 8, !tbaa !9
  %541 = shl nsw i32 %540, 29
  %542 = getelementptr inbounds i8, ptr %5, i64 4
  %543 = load i32, ptr %542, align 4, !tbaa !9
  %544 = shl nsw i32 %543, 30
  %545 = load i32, ptr %5, align 16, !tbaa !9
  %546 = shl i32 %545, 31
  %547 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %532)
  %548 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %535)
  %549 = add i32 %547, %548
  %550 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %538)
  %551 = add i32 %549, %550
  %552 = add i32 %551, %541
  %553 = add i32 %544, %546
  %554 = add i32 %552, %553
  %555 = add i32 %554, %529
  store i32 %555, ptr %8, align 4, !tbaa !9
  %556 = icmp sgt i32 %555, -1
  br i1 %556, label %561, label %557

557:                                              ; preds = %467
  %558 = load i32, ptr @psr, align 4, !tbaa !9
  %559 = or i32 %558, -2147483648
  store i32 %559, ptr @psr, align 4, !tbaa !9
  %560 = load i32, ptr %8, align 4, !tbaa !9
  br label %561

561:                                              ; preds = %557, %467
  %562 = phi i32 [ %560, %557 ], [ %555, %467 ]
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %569

564:                                              ; preds = %561
  %565 = icmp sgt i32 %555, 0
  %566 = load i32, ptr @psr, align 4, !tbaa !9
  %567 = select i1 %565, i32 1610612736, i32 1073741824
  %568 = or i32 %566, %567
  store i32 %568, ptr @psr, align 4, !tbaa !9
  br label %569

569:                                              ; preds = %564, %561
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
