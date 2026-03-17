; ModuleID = '../benchmarks/fine_grained/exebench/kernel887.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel887.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@A_CEN = dso_local global i32 0, align 4
@A_RIG = dso_local global i32 0, align 4
@A_BOT = dso_local global i32 0, align 4
@fb = dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sprite_offsets(i64 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.TYPE_17__, ptr %9, i32 0, i32 0
  store i64 %0, ptr %16, align 4
  store ptr %1, ptr %10, align 8
  store ptr %2, ptr %11, align 8
  store ptr %3, ptr %12, align 8
  store ptr %4, ptr %13, align 8
  store i32 %5, ptr %14, align 4
  store i32 %6, ptr %15, align 4
  %17 = load i32, ptr %14, align 4
  %18 = load i32, ptr @A_CEN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.TYPE_17__, ptr %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 4
  %24 = ashr i32 %23, 1
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, ptr %25, i32 0, i32 0
  %27 = load i32, ptr %26, align 4
  %28 = sub nsw i32 %27, %24
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %20, %7
  %30 = load i32, ptr %14, align 4
  %31 = load i32, ptr @A_RIG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TYPE_17__, ptr %9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, ptr %38, i32 0, i32 0
  %40 = load i32, ptr %39, align 4
  %41 = sub nsw i32 %40, %37
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %33, %29
  %43 = load i32, ptr %15, align 4
  %44 = load i32, ptr @A_CEN, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.TYPE_17__, ptr %9, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = ashr i32 %49, 1
  %51 = load ptr, ptr %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = sub nsw i32 %53, %50
  store i32 %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %46, %42
  %56 = load i32, ptr %15, align 4
  %57 = load i32, ptr @A_BOT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_17__, ptr %9, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = sub nsw i32 %66, %63
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %59, %55
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, ptr %69, i32 0, i32 0
  %71 = load i32, ptr %70, align 4
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, ptr %72, i32 0, i32 0
  store i32 %71, ptr %73, align 4
  %74 = load ptr, ptr %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, ptr %77, i32 0, i32 1
  store i32 %76, ptr %78, align 4
  %79 = load ptr, ptr %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, ptr %79, i32 0, i32 0
  %81 = load i32, ptr %80, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %68
  %84 = load ptr, ptr %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, ptr %84, i32 0, i32 0
  %86 = load i32, ptr %85, align 4
  %87 = sub nsw i32 0, %86
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, ptr %88, i32 0, i32 0
  store i32 %87, ptr %89, align 4
  br label %93

90:                                               ; preds = %68
  %91 = load ptr, ptr %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, ptr %91, i32 0, i32 0
  store i32 0, ptr %92, align 4
  br label %93

93:                                               ; preds = %90, %83
  %94 = load ptr, ptr %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load ptr, ptr %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = sub nsw i32 0, %101
  %103 = load ptr, ptr %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, ptr %103, i32 0, i32 1
  store i32 %102, ptr %104, align 4
  br label %108

105:                                              ; preds = %93
  %106 = load ptr, ptr %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, ptr %106, i32 0, i32 1
  store i32 0, ptr %107, align 4
  br label %108

108:                                              ; preds = %105, %98
  %109 = load ptr, ptr %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, ptr %109, i32 0, i32 0
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_17__, ptr %9, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, ptr %112, i32 0, i32 0
  %114 = load i32, ptr %113, align 4
  %115 = add nsw i32 %111, %114
  %116 = load i32, ptr @fb, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %108
  %119 = load i32, ptr @fb, align 4
  %120 = load ptr, ptr %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, ptr %120, i32 0, i32 0
  %122 = load i32, ptr %121, align 4
  %123 = sub nsw i32 %119, %122
  %124 = load ptr, ptr %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, ptr %124, i32 0, i32 0
  store i32 %123, ptr %125, align 4
  br label %132

126:                                              ; preds = %108
  %127 = getelementptr inbounds %struct.TYPE_17__, ptr %9, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, ptr %127, i32 0, i32 0
  %129 = load i32, ptr %128, align 4
  %130 = load ptr, ptr %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, ptr %130, i32 0, i32 0
  store i32 %129, ptr %131, align 4
  br label %132

132:                                              ; preds = %126, %118
  %133 = load ptr, ptr %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, ptr %133, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_17__, ptr %9, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, ptr %136, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = load i32, ptr getelementptr inbounds (%struct.TYPE_13__, ptr @fb, i32 0, i32 1), align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %132
  %143 = load i32, ptr getelementptr inbounds (%struct.TYPE_13__, ptr @fb, i32 0, i32 1), align 4
  %144 = load ptr, ptr %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, ptr %144, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = sub nsw i32 %143, %146
  %148 = load ptr, ptr %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, ptr %148, i32 0, i32 1
  store i32 %147, ptr %149, align 4
  br label %156

150:                                              ; preds = %132
  %151 = getelementptr inbounds %struct.TYPE_17__, ptr %9, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_15__, ptr %151, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = load ptr, ptr %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, ptr %154, i32 0, i32 1
  store i32 %153, ptr %155, align 4
  br label %156

156:                                              ; preds = %150, %142
  %157 = load ptr, ptr %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, ptr %157, i32 0, i32 0
  %159 = load i32, ptr %158, align 4
  %160 = load ptr, ptr %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, ptr %160, i32 0, i32 0
  %162 = load i32, ptr %161, align 4
  %163 = icmp sle i32 %159, %162
  br i1 %163, label %172, label %164

164:                                              ; preds = %156
  %165 = load ptr, ptr %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, ptr %165, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = load ptr, ptr %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = icmp sle i32 %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %164, %156
  store i32 1, ptr %8, align 4
  br label %174

173:                                              ; preds = %164
  store i32 0, ptr %8, align 4
  br label %174

174:                                              ; preds = %173, %172
  %175 = load i32, ptr %8, align 4
  ret i32 %175
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
