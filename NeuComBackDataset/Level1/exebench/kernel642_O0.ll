; ModuleID = '../benchmarks/fine_grained/exebench/kernel642.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel642.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@start_idx = dso_local global i32 0, align 4
@ges_count = dso_local global i32 0, align 4
@channel_data = dso_local global ptr null, align 8
@opt = dso_local global i32 0, align 4
@paras = dso_local global ptr null, align 8
@filter_buffer = dso_local global ptr null, align 8
@ges_raws = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_gesture_data(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %10 = load i32, ptr @start_idx, align 4
  %11 = load i32, ptr @ges_count, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, ptr %9, align 4
  %13 = load i32, ptr %9, align 4
  %14 = icmp sge i32 %13, 800
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, ptr %9, align 4
  %17 = sub nsw i32 %16, 800
  store i32 %17, ptr %9, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %153

21:                                               ; preds = %18
  store i32 0, ptr %5, align 4
  br label %22

22:                                               ; preds = %59, %21
  %23 = load i32, ptr %5, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %62

25:                                               ; preds = %22
  %26 = load ptr, ptr @channel_data, align 8
  %27 = load i32, ptr %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %26, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %3, align 8
  %32 = load i32, ptr %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %25
  %38 = load ptr, ptr @channel_data, align 8
  %39 = load i32, ptr %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %38, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %3, align 8
  %44 = load i32, ptr %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = sub nsw i32 %42, %47
  %49 = load ptr, ptr @channel_data, align 8
  %50 = load i32, ptr %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  store i32 %48, ptr %52, align 4
  br label %58

53:                                               ; preds = %25
  %54 = load ptr, ptr @channel_data, align 8
  %55 = load i32, ptr %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %54, i64 %56
  store i32 0, ptr %57, align 4
  br label %58

58:                                               ; preds = %53, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %5, align 4
  br label %22, !llvm.loop !6

62:                                               ; preds = %22
  %63 = load i32, ptr @opt, align 4
  %64 = icmp sge i32 %63, 1
  br i1 %64, label %65, label %152

65:                                               ; preds = %62
  store i32 0, ptr %7, align 4
  br label %66

66:                                               ; preds = %148, %65
  %67 = load i32, ptr %7, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %151

69:                                               ; preds = %66
  %70 = load ptr, ptr @channel_data, align 8
  %71 = load i32, ptr %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %70, i64 %72
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %8, align 4
  %75 = load i32, ptr %8, align 4
  %76 = load ptr, ptr @paras, align 8
  %77 = getelementptr inbounds i32, ptr %76, i64 0
  %78 = load i32, ptr %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load ptr, ptr @channel_data, align 8
  %81 = load i32, ptr %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %80, i64 %82
  store i32 %79, ptr %83, align 4
  store i32 0, ptr %6, align 4
  br label %84

84:                                               ; preds = %109, %69
  %85 = load i32, ptr %6, align 4
  %86 = icmp slt i32 %85, 11
  br i1 %86, label %87, label %112

87:                                               ; preds = %84
  %88 = load ptr, ptr @filter_buffer, align 8
  %89 = load i32, ptr %6, align 4
  %90 = mul nsw i32 %89, 4
  %91 = load i32, ptr %7, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %88, i64 %93
  %95 = load i32, ptr %94, align 4
  %96 = load ptr, ptr @paras, align 8
  %97 = load i32, ptr %6, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %96, i64 %99
  %101 = load i32, ptr %100, align 4
  %102 = mul nsw i32 %95, %101
  %103 = load ptr, ptr @channel_data, align 8
  %104 = load i32, ptr %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %103, i64 %105
  %107 = load i32, ptr %106, align 4
  %108 = add nsw i32 %107, %102
  store i32 %108, ptr %106, align 4
  br label %109

109:                                              ; preds = %87
  %110 = load i32, ptr %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %6, align 4
  br label %84, !llvm.loop !8

112:                                              ; preds = %84
  %113 = load ptr, ptr @channel_data, align 8
  %114 = load i32, ptr %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %113, i64 %115
  %117 = load i32, ptr %116, align 4
  %118 = sdiv i32 %117, 1024
  store i32 %118, ptr %116, align 4
  store i32 10, ptr %6, align 4
  br label %119

119:                                              ; preds = %139, %112
  %120 = load i32, ptr %6, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %119
  %123 = load ptr, ptr @filter_buffer, align 8
  %124 = load i32, ptr %6, align 4
  %125 = sub nsw i32 %124, 1
  %126 = mul nsw i32 %125, 4
  %127 = load i32, ptr %7, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, ptr %123, i64 %129
  %131 = load i32, ptr %130, align 4
  %132 = load ptr, ptr @filter_buffer, align 8
  %133 = load i32, ptr %6, align 4
  %134 = mul nsw i32 %133, 4
  %135 = load i32, ptr %7, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %132, i64 %137
  store i32 %131, ptr %138, align 4
  br label %139

139:                                              ; preds = %122
  %140 = load i32, ptr %6, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, ptr %6, align 4
  br label %119, !llvm.loop !9

142:                                              ; preds = %119
  %143 = load i32, ptr %8, align 4
  %144 = load ptr, ptr @filter_buffer, align 8
  %145 = load i32, ptr %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, ptr %144, i64 %146
  store i32 %143, ptr %147, align 4
  br label %148

148:                                              ; preds = %142
  %149 = load i32, ptr %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %7, align 4
  br label %66, !llvm.loop !10

151:                                              ; preds = %66
  br label %152

152:                                              ; preds = %151, %62
  br label %171

153:                                              ; preds = %18
  store i32 0, ptr %5, align 4
  br label %154

154:                                              ; preds = %167, %153
  %155 = load i32, ptr %5, align 4
  %156 = icmp slt i32 %155, 4
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = load ptr, ptr %3, align 8
  %159 = load i32, ptr %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, ptr %158, i64 %160
  %162 = load i32, ptr %161, align 4
  %163 = load ptr, ptr @channel_data, align 8
  %164 = load i32, ptr %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %163, i64 %165
  store i32 %162, ptr %166, align 4
  br label %167

167:                                              ; preds = %157
  %168 = load i32, ptr %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr %5, align 4
  br label %154, !llvm.loop !11

170:                                              ; preds = %154
  br label %206

171:                                              ; preds = %152
  store i32 0, ptr %5, align 4
  br label %172

172:                                              ; preds = %197, %171
  %173 = load i32, ptr %5, align 4
  %174 = icmp slt i32 %173, 4
  br i1 %174, label %175, label %200

175:                                              ; preds = %172
  %176 = load ptr, ptr @channel_data, align 8
  %177 = load i32, ptr %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, ptr %176, i64 %178
  %180 = load i32, ptr %179, align 4
  %181 = load ptr, ptr @ges_raws, align 8
  %182 = load i32, ptr %9, align 4
  %183 = load i32, ptr %5, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %181, i64 %185
  store i32 %180, ptr %186, align 4
  %187 = load i32, ptr @ges_count, align 4
  %188 = icmp sge i32 %187, 800
  br i1 %188, label %189, label %196

189:                                              ; preds = %175
  %190 = load i32, ptr @start_idx, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr @start_idx, align 4
  %192 = load i32, ptr @start_idx, align 4
  %193 = icmp sge i32 %192, 800
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  store i32 0, ptr @start_idx, align 4
  br label %195

195:                                              ; preds = %194, %189
  br label %196

196:                                              ; preds = %195, %175
  br label %197

197:                                              ; preds = %196
  %198 = load i32, ptr %5, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %5, align 4
  br label %172, !llvm.loop !12

200:                                              ; preds = %172
  %201 = load i32, ptr @ges_count, align 4
  %202 = add nsw i32 %201, 4
  store i32 %202, ptr @ges_count, align 4
  %203 = load i32, ptr @ges_count, align 4
  %204 = icmp sge i32 %203, 800
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  store i32 800, ptr @ges_count, align 4
  br label %206

206:                                              ; preds = %170, %205, %200
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
