; ModuleID = '../benchmarks/fine_grained/exebench/kernel545.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel545.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@psr = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bics(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i32], align 16
  %8 = alloca [32 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca [32 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %19 = load ptr, ptr @reg, align 8
  %20 = load i32, ptr %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %5, align 4
  %24 = load ptr, ptr @reg, align 8
  %25 = load i32, ptr %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %6, align 4
  store i32 0, ptr %9, align 4
  %29 = load i32, ptr %9, align 4
  br label %30

30:                                               ; preds = %40, %2
  %31 = load i32, ptr %9, align 4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, ptr %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32 x i32], ptr %7, i64 0, i64 %35
  store i32 0, ptr %36, align 4
  %37 = load i32, ptr %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32 x i32], ptr %8, i64 0, i64 %38
  store i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, ptr %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %9, align 4
  br label %30, !llvm.loop !6

43:                                               ; preds = %30
  %44 = load i32, ptr %5, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  store i32 31, ptr %11, align 4
  %47 = load i32, ptr %11, align 4
  br label %48

48:                                               ; preds = %59, %46
  %49 = load i32, ptr %11, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, ptr %5, align 4
  %53 = srem i32 %52, 2
  %54 = load i32, ptr %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32 x i32], ptr %7, i64 0, i64 %55
  store i32 %53, ptr %56, align 4
  %57 = load i32, ptr %5, align 4
  %58 = sdiv i32 %57, 2
  store i32 %58, ptr %5, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, ptr %11, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr %11, align 4
  br label %48, !llvm.loop !8

62:                                               ; preds = %48
  br label %107

63:                                               ; preds = %43
  store i32 31, ptr %12, align 4
  %64 = load i32, ptr %5, align 4
  %65 = mul nsw i32 -1, %64
  store i32 %65, ptr %5, align 4
  %66 = load i32, ptr %5, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, ptr %5, align 4
  %68 = load i32, ptr %12, align 4
  br label %69

69:                                               ; preds = %80, %63
  %70 = load i32, ptr %12, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32, ptr %5, align 4
  %74 = srem i32 %73, 2
  %75 = load i32, ptr %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [32 x i32], ptr %7, i64 0, i64 %76
  store i32 %74, ptr %77, align 4
  %78 = load i32, ptr %5, align 4
  %79 = sdiv i32 %78, 2
  store i32 %79, ptr %5, align 4
  br label %80

80:                                               ; preds = %72
  %81 = load i32, ptr %12, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, ptr %12, align 4
  br label %69, !llvm.loop !9

83:                                               ; preds = %69
  store i32 0, ptr %12, align 4
  %84 = load i32, ptr %12, align 4
  br label %85

85:                                               ; preds = %103, %83
  %86 = load i32, ptr %12, align 4
  %87 = icmp slt i32 %86, 32
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load i32, ptr %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [32 x i32], ptr %7, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, ptr %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [32 x i32], ptr %7, i64 0, i64 %96
  store i32 1, ptr %97, align 4
  br label %102

98:                                               ; preds = %88
  %99 = load i32, ptr %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i32], ptr %7, i64 0, i64 %100
  store i32 0, ptr %101, align 4
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %12, align 4
  br label %85, !llvm.loop !10

106:                                              ; preds = %85
  br label %107

107:                                              ; preds = %106, %62
  %108 = load i32, ptr %6, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  store i32 31, ptr %13, align 4
  %111 = load i32, ptr %13, align 4
  br label %112

112:                                              ; preds = %123, %110
  %113 = load i32, ptr %13, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i32, ptr %6, align 4
  %117 = srem i32 %116, 2
  %118 = load i32, ptr %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [32 x i32], ptr %8, i64 0, i64 %119
  store i32 %117, ptr %120, align 4
  %121 = load i32, ptr %6, align 4
  %122 = sdiv i32 %121, 2
  store i32 %122, ptr %6, align 4
  br label %123

123:                                              ; preds = %115
  %124 = load i32, ptr %13, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, ptr %13, align 4
  br label %112, !llvm.loop !11

126:                                              ; preds = %112
  br label %171

127:                                              ; preds = %107
  store i32 31, ptr %14, align 4
  %128 = load i32, ptr %6, align 4
  %129 = mul nsw i32 -1, %128
  store i32 %129, ptr %6, align 4
  %130 = load i32, ptr %6, align 4
  %131 = sub nsw i32 %130, 1
  store i32 %131, ptr %6, align 4
  %132 = load i32, ptr %14, align 4
  br label %133

133:                                              ; preds = %144, %127
  %134 = load i32, ptr %14, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i32, ptr %6, align 4
  %138 = srem i32 %137, 2
  %139 = load i32, ptr %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [32 x i32], ptr %8, i64 0, i64 %140
  store i32 %138, ptr %141, align 4
  %142 = load i32, ptr %6, align 4
  %143 = sdiv i32 %142, 2
  store i32 %143, ptr %6, align 4
  br label %144

144:                                              ; preds = %136
  %145 = load i32, ptr %14, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, ptr %14, align 4
  br label %133, !llvm.loop !12

147:                                              ; preds = %133
  store i32 0, ptr %14, align 4
  %148 = load i32, ptr %14, align 4
  br label %149

149:                                              ; preds = %167, %147
  %150 = load i32, ptr %14, align 4
  %151 = icmp slt i32 %150, 32
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load i32, ptr %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [32 x i32], ptr %8, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, ptr %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [32 x i32], ptr %8, i64 0, i64 %160
  store i32 1, ptr %161, align 4
  br label %166

162:                                              ; preds = %152
  %163 = load i32, ptr %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [32 x i32], ptr %8, i64 0, i64 %164
  store i32 0, ptr %165, align 4
  br label %166

166:                                              ; preds = %162, %158
  br label %167

167:                                              ; preds = %166
  %168 = load i32, ptr %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr %14, align 4
  br label %149, !llvm.loop !13

170:                                              ; preds = %149
  br label %171

171:                                              ; preds = %170, %126
  store i32 0, ptr %15, align 4
  %172 = load i32, ptr %15, align 4
  br label %173

173:                                              ; preds = %197, %171
  %174 = load i32, ptr %15, align 4
  %175 = icmp slt i32 %174, 32
  br i1 %175, label %176, label %200

176:                                              ; preds = %173
  %177 = load i32, ptr %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [32 x i32], ptr %7, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = load i32, ptr %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [32 x i32], ptr %8, i64 0, i64 %184
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load i32, ptr %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [32 x i32], ptr %10, i64 0, i64 %190
  store i32 1, ptr %191, align 4
  br label %196

192:                                              ; preds = %182, %176
  %193 = load i32, ptr %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [32 x i32], ptr %10, i64 0, i64 %194
  store i32 0, ptr %195, align 4
  br label %196

196:                                              ; preds = %192, %188
  br label %197

197:                                              ; preds = %196
  %198 = load i32, ptr %15, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %15, align 4
  br label %173, !llvm.loop !14

200:                                              ; preds = %173
  store i32 0, ptr %16, align 4
  store i32 1, ptr %17, align 4
  store i32 31, ptr %15, align 4
  %201 = load i32, ptr %15, align 4
  br label %202

202:                                              ; preds = %216, %200
  %203 = load i32, ptr %15, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %219

205:                                              ; preds = %202
  %206 = load i32, ptr %16, align 4
  %207 = load i32, ptr %17, align 4
  %208 = load i32, ptr %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [32 x i32], ptr %10, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4
  %212 = mul nsw i32 %207, %211
  %213 = add nsw i32 %206, %212
  store i32 %213, ptr %16, align 4
  %214 = load i32, ptr %17, align 4
  %215 = mul nsw i32 %214, 2
  store i32 %215, ptr %17, align 4
  br label %216

216:                                              ; preds = %205
  %217 = load i32, ptr %15, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, ptr %15, align 4
  br label %202, !llvm.loop !15

219:                                              ; preds = %202
  %220 = load i32, ptr %16, align 4
  %221 = load ptr, ptr @reg, align 8
  %222 = load i32, ptr %3, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, ptr %221, i64 %223
  store i32 %220, ptr %224, align 4
  %225 = load ptr, ptr @reg, align 8
  %226 = load i32, ptr %3, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, ptr %225, i64 %227
  %229 = load i32, ptr %228, align 4
  store i32 %229, ptr %18, align 4
  %230 = load ptr, ptr @reg, align 8
  %231 = load i32, ptr %3, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, ptr %230, i64 %232
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, -2147483648
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %219
  %238 = load i32, ptr @psr, align 4
  %239 = or i32 %238, -2147483648
  store i32 %239, ptr @psr, align 4
  br label %240

240:                                              ; preds = %237, %219
  %241 = load ptr, ptr @reg, align 8
  %242 = load i32, ptr %3, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, ptr %241, i64 %243
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %264

247:                                              ; preds = %240
  %248 = load i32, ptr %18, align 4
  %249 = load ptr, ptr @reg, align 8
  %250 = load i32, ptr %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, ptr %249, i64 %251
  %253 = load i32, ptr %252, align 4
  %254 = icmp sgt i32 %248, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %247
  %256 = load i32, ptr @psr, align 4
  %257 = or i32 %256, 536870912
  store i32 %257, ptr @psr, align 4
  %258 = load i32, ptr @psr, align 4
  %259 = or i32 %258, 1073741824
  store i32 %259, ptr @psr, align 4
  br label %263

260:                                              ; preds = %247
  %261 = load i32, ptr @psr, align 4
  %262 = or i32 %261, 1073741824
  store i32 %262, ptr @psr, align 4
  br label %263

263:                                              ; preds = %260, %255
  br label %264

264:                                              ; preds = %263, %240
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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
