; ModuleID = '../benchmarks/fine_grained/exebench/kernel667.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel667.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { ptr, i32 }
%struct.gr_info_s = type { i32, i32, i32, i64 }

@__const.III_get_scale_factors_2.stab = private unnamed_addr constant [3 x [6 x [4 x i8]]] [[6 x [4 x i8]] [[4 x i8] c"\06\05\05\05", [4 x i8] c"\06\05\07\03", [4 x i8] c"\0B\0A\00\00", [4 x i8] c"\07\07\07\00", [4 x i8] c"\06\06\06\03", [4 x i8] c"\08\08\05\00"], [6 x [4 x i8]] [[4 x i8] c"\09\09\09\09", [4 x i8] c"\09\09\0C\06", [4 x i8] c"\12\12\00\00", [4 x i8] c"\0C\0C\0C\00", [4 x i8] c"\0C\09\09\06", [4 x i8] c"\0F\0C\09\00"], [6 x [4 x i8]] [[4 x i8] c"\06\09\09\09", [4 x i8] c"\06\09\0C\06", [4 x i8] c"\0F\12\00\00", [4 x i8] c"\06\0F\0C\00", [4 x i8] c"\06\0C\09\06", [4 x i8] c"\06\12\09\00"]], align 16
@i_slen2 = dso_local global ptr null, align 8
@n_slen2 = dso_local global ptr null, align 8
@bsi = dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@rval = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @III_get_scale_factors_2(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x [6 x [4 x i8]]], align 16
  %14 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %13, ptr align 16 @__const.III_get_scale_factors_2.stab, i64 72, i1 false)
  %15 = load i32, ptr %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load ptr, ptr @i_slen2, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.gr_info_s, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8
  %22 = ashr i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %18, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %12, align 4
  br label %34

26:                                               ; preds = %3
  %27 = load ptr, ptr @n_slen2, align 8
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.gr_info_s, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %27, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %12, align 4
  br label %34

34:                                               ; preds = %26, %17
  %35 = load i32, ptr %12, align 4
  %36 = lshr i32 %35, 15
  %37 = and i32 %36, 1
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds %struct.gr_info_s, ptr %38, i32 0, i32 1
  store i32 %37, ptr %39, align 4
  store i32 0, ptr %10, align 4
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.gr_info_s, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %55

44:                                               ; preds = %34
  %45 = load i32, ptr %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %10, align 4
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds %struct.gr_info_s, ptr %47, i32 0, i32 3
  %49 = load i64, ptr %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, ptr %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %10, align 4
  br label %54

54:                                               ; preds = %51, %44
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i32, ptr %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x [6 x [4 x i8]]], ptr %13, i64 0, i64 %57
  %59 = load i32, ptr %12, align 4
  %60 = lshr i32 %59, 12
  %61 = and i32 %60, 7
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [6 x [4 x i8]], ptr %58, i64 0, i64 %62
  %64 = getelementptr inbounds [4 x i8], ptr %63, i64 0, i64 0
  store ptr %64, ptr %7, align 8
  store i32 0, ptr %8, align 4
  br label %65

65:                                               ; preds = %155, %55
  %66 = load i32, ptr %8, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %158

68:                                               ; preds = %65
  %69 = load i32, ptr %12, align 4
  %70 = and i32 %69, 7
  store i32 %70, ptr %14, align 4
  %71 = load i32, ptr %12, align 4
  %72 = lshr i32 %71, 3
  store i32 %72, ptr %12, align 4
  %73 = load i32, ptr %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %137

75:                                               ; preds = %68
  store i32 0, ptr %9, align 4
  br label %76

76:                                               ; preds = %123, %75
  %77 = load i32, ptr %9, align 4
  %78 = load ptr, ptr %7, align 8
  %79 = load i32, ptr %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %78, i64 %80
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp slt i32 %77, %83
  br i1 %84, label %85, label %126

85:                                               ; preds = %76
  %86 = load ptr, ptr @bsi, align 8
  %87 = getelementptr inbounds i32, ptr %86, i64 0
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i32 0, i32 1), align 8
  %90 = shl i32 %88, %89
  %91 = trunc i32 %90 to i8
  %92 = zext i8 %91 to i64
  store i64 %92, ptr @rval, align 8
  %93 = load ptr, ptr @bsi, align 8
  %94 = getelementptr inbounds i32, ptr %93, i64 1
  %95 = load i32, ptr %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load i32, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i32 0, i32 1), align 8
  %98 = zext i32 %97 to i64
  %99 = shl i64 %96, %98
  %100 = lshr i64 %99, 8
  %101 = load i64, ptr @rval, align 8
  %102 = or i64 %101, %100
  store i64 %102, ptr @rval, align 8
  %103 = load i32, ptr %14, align 4
  %104 = load i64, ptr @rval, align 8
  %105 = zext i32 %103 to i64
  %106 = shl i64 %104, %105
  store i64 %106, ptr @rval, align 8
  %107 = load i64, ptr @rval, align 8
  %108 = lshr i64 %107, 8
  store i64 %108, ptr @rval, align 8
  %109 = load i32, ptr %14, align 4
  %110 = load i32, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i32 0, i32 1), align 8
  %111 = add nsw i32 %110, %109
  store i32 %111, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i32 0, i32 1), align 8
  %112 = load i32, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i32 0, i32 1), align 8
  %113 = ashr i32 %112, 3
  %114 = load ptr, ptr @bsi, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, ptr %114, i64 %115
  store ptr %116, ptr @bsi, align 8
  %117 = load i32, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i32 0, i32 1), align 8
  %118 = and i32 %117, 7
  store i32 %118, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i32 0, i32 1), align 8
  %119 = load i64, ptr @rval, align 8
  %120 = trunc i64 %119 to i32
  %121 = load ptr, ptr %4, align 8
  %122 = getelementptr inbounds i32, ptr %121, i32 1
  store ptr %122, ptr %4, align 8
  store i32 %120, ptr %121, align 4
  br label %123

123:                                              ; preds = %85
  %124 = load i32, ptr %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %9, align 4
  br label %76, !llvm.loop !6

126:                                              ; preds = %76
  %127 = load ptr, ptr %7, align 8
  %128 = load i32, ptr %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %127, i64 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i32, ptr %14, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, ptr %11, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, ptr %11, align 4
  br label %154

137:                                              ; preds = %68
  store i32 0, ptr %9, align 4
  br label %138

138:                                              ; preds = %150, %137
  %139 = load i32, ptr %9, align 4
  %140 = load ptr, ptr %7, align 8
  %141 = load i32, ptr %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %140, i64 %142
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp slt i32 %139, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %138
  %148 = load ptr, ptr %4, align 8
  %149 = getelementptr inbounds i32, ptr %148, i32 1
  store ptr %149, ptr %4, align 8
  store i32 0, ptr %148, align 4
  br label %150

150:                                              ; preds = %147
  %151 = load i32, ptr %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %9, align 4
  br label %138, !llvm.loop !8

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %153, %126
  br label %155

155:                                              ; preds = %154
  %156 = load i32, ptr %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %8, align 4
  br label %65, !llvm.loop !9

158:                                              ; preds = %65
  %159 = load i32, ptr %10, align 4
  %160 = shl i32 %159, 1
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr %10, align 4
  store i32 0, ptr %8, align 4
  br label %162

162:                                              ; preds = %169, %158
  %163 = load i32, ptr %8, align 4
  %164 = load i32, ptr %10, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load ptr, ptr %4, align 8
  %168 = getelementptr inbounds i32, ptr %167, i32 1
  store ptr %168, ptr %4, align 8
  store i32 0, ptr %167, align 4
  br label %169

169:                                              ; preds = %166
  %170 = load i32, ptr %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %8, align 4
  br label %162, !llvm.loop !10

172:                                              ; preds = %162
  %173 = load i32, ptr %11, align 4
  ret i32 %173
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
