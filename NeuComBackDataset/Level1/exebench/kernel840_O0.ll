; ModuleID = '../benchmarks/fine_grained/exebench/kernel840.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel840.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EXTEND = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mul_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i16], align 2
  %10 = alloca [4 x i16], align 2
  %11 = alloca [8 x i16], align 16
  %12 = alloca ptr, align 8
  %13 = alloca i16, align 2
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.EXTEND, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.EXTEND, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8
  %22 = xor i32 %18, %21
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.EXTEND, ptr %23, i32 0, i32 0
  store i32 %22, ptr %24, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.EXTEND, ptr %25, i32 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.EXTEND, ptr %28, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = add nsw i64 %31, 1
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.EXTEND, ptr %33, i32 0, i32 1
  store i64 %32, ptr %34, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.EXTEND, ptr %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8
  %39 = ashr i32 %38, 16
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds [4 x i16], ptr %9, i64 0, i64 0
  store i16 %40, ptr %41, align 2
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.EXTEND, ptr %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, ptr %43, i32 0, i32 0
  %45 = load i32, ptr %44, align 8
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds [4 x i16], ptr %9, i64 0, i64 1
  store i16 %46, ptr %47, align 2
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.EXTEND, ptr %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = ashr i32 %51, 16
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds [4 x i16], ptr %9, i64 0, i64 2
  store i16 %53, ptr %54, align 2
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct.EXTEND, ptr %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds [4 x i16], ptr %9, i64 0, i64 3
  store i16 %59, ptr %60, align 2
  %61 = load ptr, ptr %5, align 8
  %62 = getelementptr inbounds %struct.EXTEND, ptr %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 8
  %65 = ashr i32 %64, 16
  %66 = trunc i32 %65 to i16
  %67 = getelementptr inbounds [4 x i16], ptr %10, i64 0, i64 0
  store i16 %66, ptr %67, align 2
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds %struct.EXTEND, ptr %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, ptr %69, i32 0, i32 0
  %71 = load i32, ptr %70, align 8
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds [4 x i16], ptr %10, i64 0, i64 1
  store i16 %72, ptr %73, align 2
  %74 = load ptr, ptr %5, align 8
  %75 = getelementptr inbounds %struct.EXTEND, ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = ashr i32 %77, 16
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds [4 x i16], ptr %10, i64 0, i64 2
  store i16 %79, ptr %80, align 2
  %81 = load ptr, ptr %5, align 8
  %82 = getelementptr inbounds %struct.EXTEND, ptr %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = trunc i32 %84 to i16
  %86 = getelementptr inbounds [4 x i16], ptr %10, i64 0, i64 3
  store i16 %85, ptr %86, align 2
  store i32 8, ptr %7, align 4
  br label %87

87:                                               ; preds = %91, %3
  %88 = load i32, ptr %7, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, ptr %7, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, ptr %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 %93
  store i16 0, ptr %94, align 2
  br label %87, !llvm.loop !6

95:                                               ; preds = %87
  store i32 4, ptr %7, align 4
  %96 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 4
  store ptr %96, ptr %12, align 8
  br label %97

97:                                               ; preds = %157, %95
  %98 = load i32, ptr %7, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, ptr %7, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %160

101:                                              ; preds = %97
  %102 = load i32, ptr %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i16], ptr %9, i64 0, i64 %103
  %105 = load i16, ptr %104, align 2
  %106 = icmp ne i16 %105, 0
  br i1 %106, label %107, label %156

107:                                              ; preds = %101
  store i16 0, ptr %13, align 2
  %108 = load i32, ptr %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i16], ptr %9, i64 0, i64 %109
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %111 to i64
  store i64 %112, ptr %14, align 8
  store i32 4, ptr %8, align 4
  br label %113

113:                                              ; preds = %142, %107
  %114 = load i32, ptr %8, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, ptr %8, align 4
  %116 = icmp ne i32 %114, 0
  br i1 %116, label %117, label %152

117:                                              ; preds = %113
  %118 = load ptr, ptr %12, align 8
  %119 = load i32, ptr %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i16, ptr %118, i64 %120
  %122 = load i16, ptr %121, align 2
  %123 = zext i16 %122 to i64
  %124 = load i16, ptr %13, align 2
  %125 = zext i16 %124 to i64
  %126 = add i64 %123, %125
  store i64 %126, ptr %15, align 8
  %127 = load i32, ptr %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i16], ptr %10, i64 0, i64 %128
  %130 = load i16, ptr %129, align 2
  %131 = icmp ne i16 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %117
  %133 = load i64, ptr %14, align 8
  %134 = load i32, ptr %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i16], ptr %10, i64 0, i64 %135
  %137 = load i16, ptr %136, align 2
  %138 = zext i16 %137 to i64
  %139 = mul i64 %133, %138
  %140 = load i64, ptr %15, align 8
  %141 = add i64 %140, %139
  store i64 %141, ptr %15, align 8
  br label %142

142:                                              ; preds = %132, %117
  %143 = load i64, ptr %15, align 8
  %144 = trunc i64 %143 to i16
  %145 = load ptr, ptr %12, align 8
  %146 = load i32, ptr %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i16, ptr %145, i64 %147
  store i16 %144, ptr %148, align 2
  %149 = load i64, ptr %15, align 8
  %150 = lshr i64 %149, 16
  %151 = trunc i64 %150 to i16
  store i16 %151, ptr %13, align 2
  br label %113, !llvm.loop !8

152:                                              ; preds = %113
  %153 = load i16, ptr %13, align 2
  %154 = load ptr, ptr %12, align 8
  %155 = getelementptr inbounds i16, ptr %154, i64 -1
  store i16 %153, ptr %155, align 2
  br label %156

156:                                              ; preds = %152, %101
  br label %157

157:                                              ; preds = %156
  %158 = load ptr, ptr %12, align 8
  %159 = getelementptr inbounds i16, ptr %158, i32 -1
  store ptr %159, ptr %12, align 8
  br label %97, !llvm.loop !9

160:                                              ; preds = %97
  %161 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 0
  %162 = load i16, ptr %161, align 16
  %163 = zext i16 %162 to i32
  %164 = and i32 %163, 32768
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %208, label %166

166:                                              ; preds = %160
  %167 = load ptr, ptr %6, align 8
  %168 = getelementptr inbounds %struct.EXTEND, ptr %167, i32 0, i32 1
  %169 = load i64, ptr %168, align 8
  %170 = add nsw i64 %169, -1
  store i64 %170, ptr %168, align 8
  store i32 0, ptr %7, align 4
  br label %171

171:                                              ; preds = %199, %166
  %172 = load i32, ptr %7, align 4
  %173 = icmp sle i32 %172, 3
  br i1 %173, label %174, label %202

174:                                              ; preds = %171
  %175 = load i32, ptr %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 %176
  %178 = load i16, ptr %177, align 2
  %179 = zext i16 %178 to i32
  %180 = shl i32 %179, 1
  %181 = trunc i32 %180 to i16
  store i16 %181, ptr %177, align 2
  %182 = load i32, ptr %7, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 %184
  %186 = load i16, ptr %185, align 2
  %187 = zext i16 %186 to i32
  %188 = and i32 %187, 32768
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %174
  %191 = load i32, ptr %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 %192
  %194 = load i16, ptr %193, align 2
  %195 = zext i16 %194 to i32
  %196 = or i32 %195, 1
  %197 = trunc i32 %196 to i16
  store i16 %197, ptr %193, align 2
  br label %198

198:                                              ; preds = %190, %174
  br label %199

199:                                              ; preds = %198
  %200 = load i32, ptr %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %7, align 4
  br label %171, !llvm.loop !10

202:                                              ; preds = %171
  %203 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 4
  %204 = load i16, ptr %203, align 8
  %205 = zext i16 %204 to i32
  %206 = shl i32 %205, 1
  %207 = trunc i32 %206 to i16
  store i16 %207, ptr %203, align 8
  br label %208

208:                                              ; preds = %202, %160
  %209 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 0
  %210 = load i16, ptr %209, align 16
  %211 = zext i16 %210 to i64
  %212 = shl i64 %211, 16
  %213 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 1
  %214 = load i16, ptr %213, align 2
  %215 = zext i16 %214 to i64
  %216 = add i64 %212, %215
  %217 = trunc i64 %216 to i32
  %218 = load ptr, ptr %6, align 8
  %219 = getelementptr inbounds %struct.EXTEND, ptr %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_2__, ptr %219, i32 0, i32 0
  store i32 %217, ptr %220, align 8
  %221 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 2
  %222 = load i16, ptr %221, align 4
  %223 = zext i16 %222 to i64
  %224 = shl i64 %223, 16
  %225 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 3
  %226 = load i16, ptr %225, align 2
  %227 = zext i16 %226 to i64
  %228 = add i64 %224, %227
  %229 = trunc i64 %228 to i32
  %230 = load ptr, ptr %6, align 8
  %231 = getelementptr inbounds %struct.EXTEND, ptr %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_2__, ptr %231, i32 0, i32 1
  store i32 %229, ptr %232, align 4
  %233 = getelementptr inbounds [8 x i16], ptr %11, i64 0, i64 4
  %234 = load i16, ptr %233, align 8
  %235 = zext i16 %234 to i32
  %236 = and i32 %235, 32768
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %262

238:                                              ; preds = %208
  %239 = load ptr, ptr %6, align 8
  %240 = getelementptr inbounds %struct.EXTEND, ptr %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_2__, ptr %240, i32 0, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, ptr %241, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %238
  %246 = load ptr, ptr %6, align 8
  %247 = getelementptr inbounds %struct.EXTEND, ptr %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_2__, ptr %247, i32 0, i32 0
  %249 = load i32, ptr %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr %248, align 8
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %245
  %253 = load ptr, ptr %6, align 8
  %254 = getelementptr inbounds %struct.EXTEND, ptr %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_2__, ptr %254, i32 0, i32 0
  store i32 -2147483648, ptr %255, align 8
  %256 = load ptr, ptr %6, align 8
  %257 = getelementptr inbounds %struct.EXTEND, ptr %256, i32 0, i32 1
  %258 = load i64, ptr %257, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, ptr %257, align 8
  br label %260

260:                                              ; preds = %252, %245
  br label %261

261:                                              ; preds = %260, %238
  br label %262

262:                                              ; preds = %261, %208
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
