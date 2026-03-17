; ModuleID = '../benchmarks/fine_grained/exebench/kernel347.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel347.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_timing = type { i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_timing_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.ide_timing, ptr %13, i32 0, i32 0
  %15 = load i64, ptr %14, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.ide_timing, ptr %16, i32 0, i32 0
  %18 = load i64, ptr %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.ide_timing, ptr %21, i32 0, i32 0
  %23 = load i64, ptr %22, align 8
  br label %28

24:                                               ; preds = %12
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds %struct.ide_timing, ptr %25, i32 0, i32 0
  %27 = load i64, ptr %26, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i64 [ %23, %20 ], [ %27, %24 ]
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds %struct.ide_timing, ptr %30, i32 0, i32 0
  store i64 %29, ptr %31, align 8
  br label %32

32:                                               ; preds = %28, %4
  %33 = load i32, ptr %8, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.ide_timing, ptr %37, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr inbounds %struct.ide_timing, ptr %40, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.ide_timing, ptr %45, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  br label %52

48:                                               ; preds = %36
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds %struct.ide_timing, ptr %49, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i64 [ %47, %44 ], [ %51, %48 ]
  %54 = load ptr, ptr %7, align 8
  %55 = getelementptr inbounds %struct.ide_timing, ptr %54, i32 0, i32 1
  store i64 %53, ptr %55, align 8
  br label %56

56:                                               ; preds = %52, %32
  %57 = load i32, ptr %8, align 4
  %58 = and i32 %57, 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load ptr, ptr %5, align 8
  %62 = getelementptr inbounds %struct.ide_timing, ptr %61, i32 0, i32 2
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.ide_timing, ptr %64, i32 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load ptr, ptr %5, align 8
  %70 = getelementptr inbounds %struct.ide_timing, ptr %69, i32 0, i32 2
  %71 = load i64, ptr %70, align 8
  br label %76

72:                                               ; preds = %60
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds %struct.ide_timing, ptr %73, i32 0, i32 2
  %75 = load i64, ptr %74, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %71, %68 ], [ %75, %72 ]
  %78 = load ptr, ptr %7, align 8
  %79 = getelementptr inbounds %struct.ide_timing, ptr %78, i32 0, i32 2
  store i64 %77, ptr %79, align 8
  br label %80

80:                                               ; preds = %76, %56
  %81 = load i32, ptr %8, align 4
  %82 = and i32 %81, 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load ptr, ptr %5, align 8
  %86 = getelementptr inbounds %struct.ide_timing, ptr %85, i32 0, i32 3
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %6, align 8
  %89 = getelementptr inbounds %struct.ide_timing, ptr %88, i32 0, i32 3
  %90 = load i64, ptr %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds %struct.ide_timing, ptr %93, i32 0, i32 3
  %95 = load i64, ptr %94, align 8
  br label %100

96:                                               ; preds = %84
  %97 = load ptr, ptr %6, align 8
  %98 = getelementptr inbounds %struct.ide_timing, ptr %97, i32 0, i32 3
  %99 = load i64, ptr %98, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i64 [ %95, %92 ], [ %99, %96 ]
  %102 = load ptr, ptr %7, align 8
  %103 = getelementptr inbounds %struct.ide_timing, ptr %102, i32 0, i32 3
  store i64 %101, ptr %103, align 8
  br label %104

104:                                              ; preds = %100, %80
  %105 = load i32, ptr %8, align 4
  %106 = and i32 %105, 16
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %104
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr inbounds %struct.ide_timing, ptr %109, i32 0, i32 4
  %111 = load i64, ptr %110, align 8
  %112 = load ptr, ptr %6, align 8
  %113 = getelementptr inbounds %struct.ide_timing, ptr %112, i32 0, i32 4
  %114 = load i64, ptr %113, align 8
  %115 = icmp sgt i64 %111, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load ptr, ptr %5, align 8
  %118 = getelementptr inbounds %struct.ide_timing, ptr %117, i32 0, i32 4
  %119 = load i64, ptr %118, align 8
  br label %124

120:                                              ; preds = %108
  %121 = load ptr, ptr %6, align 8
  %122 = getelementptr inbounds %struct.ide_timing, ptr %121, i32 0, i32 4
  %123 = load i64, ptr %122, align 8
  br label %124

124:                                              ; preds = %120, %116
  %125 = phi i64 [ %119, %116 ], [ %123, %120 ]
  %126 = load ptr, ptr %7, align 8
  %127 = getelementptr inbounds %struct.ide_timing, ptr %126, i32 0, i32 4
  store i64 %125, ptr %127, align 8
  br label %128

128:                                              ; preds = %124, %104
  %129 = load i32, ptr %8, align 4
  %130 = and i32 %129, 32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %128
  %133 = load ptr, ptr %5, align 8
  %134 = getelementptr inbounds %struct.ide_timing, ptr %133, i32 0, i32 5
  %135 = load i64, ptr %134, align 8
  %136 = load ptr, ptr %6, align 8
  %137 = getelementptr inbounds %struct.ide_timing, ptr %136, i32 0, i32 5
  %138 = load i64, ptr %137, align 8
  %139 = icmp sgt i64 %135, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load ptr, ptr %5, align 8
  %142 = getelementptr inbounds %struct.ide_timing, ptr %141, i32 0, i32 5
  %143 = load i64, ptr %142, align 8
  br label %148

144:                                              ; preds = %132
  %145 = load ptr, ptr %6, align 8
  %146 = getelementptr inbounds %struct.ide_timing, ptr %145, i32 0, i32 5
  %147 = load i64, ptr %146, align 8
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi i64 [ %143, %140 ], [ %147, %144 ]
  %150 = load ptr, ptr %7, align 8
  %151 = getelementptr inbounds %struct.ide_timing, ptr %150, i32 0, i32 5
  store i64 %149, ptr %151, align 8
  br label %152

152:                                              ; preds = %148, %128
  %153 = load i32, ptr %8, align 4
  %154 = and i32 %153, 64
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %152
  %157 = load ptr, ptr %5, align 8
  %158 = getelementptr inbounds %struct.ide_timing, ptr %157, i32 0, i32 6
  %159 = load i64, ptr %158, align 8
  %160 = load ptr, ptr %6, align 8
  %161 = getelementptr inbounds %struct.ide_timing, ptr %160, i32 0, i32 6
  %162 = load i64, ptr %161, align 8
  %163 = icmp sgt i64 %159, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load ptr, ptr %5, align 8
  %166 = getelementptr inbounds %struct.ide_timing, ptr %165, i32 0, i32 6
  %167 = load i64, ptr %166, align 8
  br label %172

168:                                              ; preds = %156
  %169 = load ptr, ptr %6, align 8
  %170 = getelementptr inbounds %struct.ide_timing, ptr %169, i32 0, i32 6
  %171 = load i64, ptr %170, align 8
  br label %172

172:                                              ; preds = %168, %164
  %173 = phi i64 [ %167, %164 ], [ %171, %168 ]
  %174 = load ptr, ptr %7, align 8
  %175 = getelementptr inbounds %struct.ide_timing, ptr %174, i32 0, i32 6
  store i64 %173, ptr %175, align 8
  br label %176

176:                                              ; preds = %172, %152
  %177 = load i32, ptr %8, align 4
  %178 = and i32 %177, 128
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %200

180:                                              ; preds = %176
  %181 = load ptr, ptr %5, align 8
  %182 = getelementptr inbounds %struct.ide_timing, ptr %181, i32 0, i32 7
  %183 = load i64, ptr %182, align 8
  %184 = load ptr, ptr %6, align 8
  %185 = getelementptr inbounds %struct.ide_timing, ptr %184, i32 0, i32 7
  %186 = load i64, ptr %185, align 8
  %187 = icmp sgt i64 %183, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load ptr, ptr %5, align 8
  %190 = getelementptr inbounds %struct.ide_timing, ptr %189, i32 0, i32 7
  %191 = load i64, ptr %190, align 8
  br label %196

192:                                              ; preds = %180
  %193 = load ptr, ptr %6, align 8
  %194 = getelementptr inbounds %struct.ide_timing, ptr %193, i32 0, i32 7
  %195 = load i64, ptr %194, align 8
  br label %196

196:                                              ; preds = %192, %188
  %197 = phi i64 [ %191, %188 ], [ %195, %192 ]
  %198 = load ptr, ptr %7, align 8
  %199 = getelementptr inbounds %struct.ide_timing, ptr %198, i32 0, i32 7
  store i64 %197, ptr %199, align 8
  br label %200

200:                                              ; preds = %196, %176
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
