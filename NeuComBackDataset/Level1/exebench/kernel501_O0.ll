; ModuleID = '../benchmarks/fine_grained/exebench/kernel501.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel501.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEncProps_Normalize(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 5, ptr %3, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32, ptr %3, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i32 0, i32 0
  store i32 %13, ptr %15, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %12
  %21 = load i32, ptr %3, align 4
  %22 = icmp sle i32 %21, 5
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, ptr %3, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %25, 14
  %27 = shl i32 1, %26
  br label %33

28:                                               ; preds = %20
  %29 = load i32, ptr %3, align 4
  %30 = icmp sle i32 %29, 7
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 33554432, i32 67108864
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i32 [ %27, %23 ], [ %32, %28 ]
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, ptr %35, i32 0, i32 1
  store i32 %34, ptr %36, align 4
  br label %37

37:                                               ; preds = %33, %12
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %37
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  store i32 %48, ptr %5, align 4
  store i32 11, ptr %4, align 4
  br label %49

49:                                               ; preds = %73, %45
  %50 = load i32, ptr %4, align 4
  %51 = icmp ule i32 %50, 30
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load i32, ptr %5, align 4
  %54 = load i32, ptr %4, align 4
  %55 = shl i32 2, %54
  %56 = icmp ule i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, ptr %4, align 4
  %59 = shl i32 2, %58
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, ptr %60, i32 0, i32 1
  store i32 %59, ptr %61, align 4
  br label %76

62:                                               ; preds = %52
  %63 = load i32, ptr %5, align 4
  %64 = load i32, ptr %4, align 4
  %65 = shl i32 3, %64
  %66 = icmp ule i32 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, ptr %4, align 4
  %69 = shl i32 3, %68
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, ptr %70, i32 0, i32 1
  store i32 %69, ptr %71, align 4
  br label %76

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %4, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %4, align 4
  br label %49, !llvm.loop !6

76:                                               ; preds = %67, %57, %49
  br label %77

77:                                               ; preds = %76, %37
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load ptr, ptr %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, ptr %83, i32 0, i32 3
  store i32 3, ptr %84, align 4
  br label %85

85:                                               ; preds = %82, %77
  %86 = load ptr, ptr %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, ptr %86, i32 0, i32 4
  %88 = load i64, ptr %87, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load ptr, ptr %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, ptr %91, i32 0, i32 4
  store i64 0, ptr %92, align 8
  br label %93

93:                                               ; preds = %90, %85
  %94 = load ptr, ptr %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, ptr %94, i32 0, i32 5
  %96 = load i32, ptr %95, align 8
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load ptr, ptr %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, ptr %99, i32 0, i32 5
  store i32 2, ptr %100, align 8
  br label %101

101:                                              ; preds = %98, %93
  %102 = load ptr, ptr %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, ptr %102, i32 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i32, ptr %3, align 4
  %108 = icmp slt i32 %107, 5
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 0, i32 1
  %111 = load ptr, ptr %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, ptr %111, i32 0, i32 6
  store i32 %110, ptr %112, align 4
  br label %113

113:                                              ; preds = %106, %101
  %114 = load ptr, ptr %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, ptr %114, i32 0, i32 7
  %116 = load i32, ptr %115, align 8
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, ptr %3, align 4
  %120 = icmp slt i32 %119, 7
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 32, i32 64
  %123 = load ptr, ptr %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, ptr %123, i32 0, i32 7
  store i32 %122, ptr %124, align 8
  br label %125

125:                                              ; preds = %118, %113
  %126 = load ptr, ptr %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, ptr %126, i32 0, i32 8
  %128 = load i32, ptr %127, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load ptr, ptr %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, ptr %131, i32 0, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 0, i32 1
  %137 = load ptr, ptr %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, ptr %137, i32 0, i32 8
  store i32 %136, ptr %138, align 4
  br label %139

139:                                              ; preds = %130, %125
  %140 = load ptr, ptr %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, ptr %140, i32 0, i32 9
  %142 = load i32, ptr %141, align 8
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load ptr, ptr %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, ptr %145, i32 0, i32 9
  store i32 4, ptr %146, align 8
  br label %147

147:                                              ; preds = %144, %139
  %148 = load ptr, ptr %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, ptr %148, i32 0, i32 10
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %147
  %153 = load ptr, ptr %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, ptr %153, i32 0, i32 7
  %155 = load i32, ptr %154, align 8
  %156 = ashr i32 %155, 1
  %157 = add nsw i32 16, %156
  %158 = load ptr, ptr %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, ptr %158, i32 0, i32 8
  %160 = load i32, ptr %159, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 0, i32 1
  %164 = ashr i32 %157, %163
  %165 = load ptr, ptr %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, ptr %165, i32 0, i32 10
  store i32 %164, ptr %166, align 4
  br label %167

167:                                              ; preds = %152, %147
  %168 = load ptr, ptr %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, ptr %168, i32 0, i32 11
  %170 = load i32, ptr %169, align 8
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %167
  %173 = load ptr, ptr %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, ptr %173, i32 0, i32 8
  %175 = load i32, ptr %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load ptr, ptr %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, ptr %178, i32 0, i32 6
  %180 = load i32, ptr %179, align 4
  %181 = icmp ne i32 %180, 0
  br label %182

182:                                              ; preds = %177, %172
  %183 = phi i1 [ false, %172 ], [ %181, %177 ]
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 2, i32 1
  %186 = load ptr, ptr %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, ptr %186, i32 0, i32 11
  store i32 %185, ptr %187, align 8
  br label %188

188:                                              ; preds = %182, %167
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
