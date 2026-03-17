; ModuleID = '../benchmarks/fine_grained/exebench/kernel402.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel402.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, float, float }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__ }

@WARP_INTER_OUTSIDE = dso_local global i32 0, align 4
@WARP_INTER_INTERSECTS = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @warp_intersects_ray_aabb(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [2 x %struct.TYPE_8__], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca %struct.TYPE_8__, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store float %2, ptr %8, align 4
  store float %3, ptr %9, align 4
  %22 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %10, i64 0, i64 0
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, ptr %23, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 4 %24, i64 12, i1 false)
  %25 = getelementptr inbounds %struct.TYPE_8__, ptr %22, i64 1
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, ptr %26, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr align 4 %27, i64 12, i1 false)
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %11, align 4
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %12, align 4
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %13, align 4
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, ptr %37, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %38, i64 12, i1 false)
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, ptr %39, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %40, i64 12, i1 false)
  %41 = load i32, ptr %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %10, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, ptr %43, i32 0, i32 0
  %45 = load float, ptr %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, ptr %14, i32 0, i32 0
  %47 = load float, ptr %46, align 4
  %48 = fsub float %45, %47
  %49 = getelementptr inbounds %struct.TYPE_8__, ptr %15, i32 0, i32 0
  %50 = load float, ptr %49, align 4
  %51 = fmul float %48, %50
  store float %51, ptr %16, align 4
  %52 = load i32, ptr %11, align 4
  %53 = sub nsw i32 1, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %10, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, ptr %55, i32 0, i32 0
  %57 = load float, ptr %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, ptr %14, i32 0, i32 0
  %59 = load float, ptr %58, align 4
  %60 = fsub float %57, %59
  %61 = getelementptr inbounds %struct.TYPE_8__, ptr %15, i32 0, i32 0
  %62 = load float, ptr %61, align 4
  %63 = fmul float %60, %62
  store float %63, ptr %17, align 4
  %64 = load i32, ptr %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %10, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, ptr %66, i32 0, i32 1
  %68 = load float, ptr %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_8__, ptr %14, i32 0, i32 1
  %70 = load float, ptr %69, align 4
  %71 = fsub float %68, %70
  %72 = getelementptr inbounds %struct.TYPE_8__, ptr %15, i32 0, i32 1
  %73 = load float, ptr %72, align 4
  %74 = fmul float %71, %73
  store float %74, ptr %18, align 4
  %75 = load i32, ptr %12, align 4
  %76 = sub nsw i32 1, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %10, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, ptr %78, i32 0, i32 1
  %80 = load float, ptr %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_8__, ptr %14, i32 0, i32 1
  %82 = load float, ptr %81, align 4
  %83 = fsub float %80, %82
  %84 = getelementptr inbounds %struct.TYPE_8__, ptr %15, i32 0, i32 1
  %85 = load float, ptr %84, align 4
  %86 = fmul float %83, %85
  store float %86, ptr %19, align 4
  %87 = load float, ptr %16, align 4
  %88 = load float, ptr %19, align 4
  %89 = fcmp ogt float %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %4
  %91 = load float, ptr %18, align 4
  %92 = load float, ptr %17, align 4
  %93 = fcmp ogt float %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %4
  %95 = load i32, ptr @WARP_INTER_OUTSIDE, align 4
  store i32 %95, ptr %5, align 4
  br label %167

96:                                               ; preds = %90
  %97 = load float, ptr %18, align 4
  %98 = load float, ptr %16, align 4
  %99 = fcmp ogt float %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load float, ptr %18, align 4
  store float %101, ptr %16, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = load float, ptr %19, align 4
  %104 = load float, ptr %17, align 4
  %105 = fcmp olt float %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load float, ptr %19, align 4
  store float %107, ptr %17, align 4
  br label %108

108:                                              ; preds = %106, %102
  %109 = load i32, ptr %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %10, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, ptr %111, i32 0, i32 2
  %113 = load float, ptr %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_8__, ptr %14, i32 0, i32 2
  %115 = load float, ptr %114, align 4
  %116 = fsub float %113, %115
  %117 = getelementptr inbounds %struct.TYPE_8__, ptr %15, i32 0, i32 2
  %118 = load float, ptr %117, align 4
  %119 = fmul float %116, %118
  store float %119, ptr %20, align 4
  %120 = load i32, ptr %13, align 4
  %121 = sub nsw i32 1, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %10, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, ptr %123, i32 0, i32 2
  %125 = load float, ptr %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_8__, ptr %14, i32 0, i32 2
  %127 = load float, ptr %126, align 4
  %128 = fsub float %125, %127
  %129 = getelementptr inbounds %struct.TYPE_8__, ptr %15, i32 0, i32 2
  %130 = load float, ptr %129, align 4
  %131 = fmul float %128, %130
  store float %131, ptr %21, align 4
  %132 = load float, ptr %16, align 4
  %133 = load float, ptr %21, align 4
  %134 = fcmp ogt float %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %108
  %136 = load float, ptr %20, align 4
  %137 = load float, ptr %17, align 4
  %138 = fcmp ogt float %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135, %108
  %140 = load i32, ptr @WARP_INTER_OUTSIDE, align 4
  store i32 %140, ptr %5, align 4
  br label %167

141:                                              ; preds = %135
  %142 = load float, ptr %20, align 4
  %143 = load float, ptr %16, align 4
  %144 = fcmp ogt float %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load float, ptr %20, align 4
  store float %146, ptr %16, align 4
  br label %147

147:                                              ; preds = %145, %141
  %148 = load float, ptr %21, align 4
  %149 = load float, ptr %17, align 4
  %150 = fcmp olt float %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load float, ptr %21, align 4
  store float %152, ptr %17, align 4
  br label %153

153:                                              ; preds = %151, %147
  %154 = load float, ptr %16, align 4
  %155 = load float, ptr %9, align 4
  %156 = fcmp olt float %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load float, ptr %17, align 4
  %159 = load float, ptr %8, align 4
  %160 = fcmp ogt float %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, ptr @WARP_INTER_INTERSECTS, align 4
  br label %165

163:                                              ; preds = %157, %153
  %164 = load i32, ptr @WARP_INTER_OUTSIDE, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  store i32 %166, ptr %5, align 4
  br label %167

167:                                              ; preds = %165, %139, %94
  %168 = load i32, ptr %5, align 4
  ret i32 %168
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
