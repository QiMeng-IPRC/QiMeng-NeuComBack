; ModuleID = '../benchmarks/fine_grained/exebench/kernel461.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel461.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hpsolb.i__ = internal global i64 0, align 8
@hpsolb.j = internal global i64 0, align 8
@hpsolb.k = internal global i64 0, align 8
@hpsolb.out = internal global double 0.000000e+00, align 8
@hpsolb.ddum = internal global double 0.000000e+00, align 8
@hpsolb.indxin = internal global i64 0, align 8
@hpsolb.indxou = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsolb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr inbounds i64, ptr %10, i32 -1
  store ptr %11, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %13, ptr %6, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %76

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 8
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %9, align 8
  store i64 2, ptr @hpsolb.k, align 8
  br label %20

20:                                               ; preds = %72, %17
  %21 = load i64, ptr @hpsolb.k, align 8
  %22 = load i64, ptr %9, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %20
  %25 = load ptr, ptr %6, align 8
  %26 = load i64, ptr @hpsolb.k, align 8
  %27 = getelementptr inbounds double, ptr %25, i64 %26
  %28 = load double, ptr %27, align 8
  store double %28, ptr @hpsolb.ddum, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = load i64, ptr @hpsolb.k, align 8
  %31 = getelementptr inbounds i64, ptr %29, i64 %30
  %32 = load i64, ptr %31, align 8
  store i64 %32, ptr @hpsolb.indxin, align 8
  %33 = load i64, ptr @hpsolb.k, align 8
  store i64 %33, ptr @hpsolb.i__, align 8
  br label %34

34:                                               ; preds = %46, %24
  %35 = load i64, ptr @hpsolb.i__, align 8
  %36 = icmp sgt i64 %35, 1
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i64, ptr @hpsolb.i__, align 8
  %39 = sdiv i64 %38, 2
  store i64 %39, ptr @hpsolb.j, align 8
  %40 = load double, ptr @hpsolb.ddum, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load i64, ptr @hpsolb.j, align 8
  %43 = getelementptr inbounds double, ptr %41, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = fcmp olt double %40, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %37
  %47 = load ptr, ptr %6, align 8
  %48 = load i64, ptr @hpsolb.j, align 8
  %49 = getelementptr inbounds double, ptr %47, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = load i64, ptr @hpsolb.i__, align 8
  %53 = getelementptr inbounds double, ptr %51, i64 %52
  store double %50, ptr %53, align 8
  %54 = load ptr, ptr %7, align 8
  %55 = load i64, ptr @hpsolb.j, align 8
  %56 = getelementptr inbounds i64, ptr %54, i64 %55
  %57 = load i64, ptr %56, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = load i64, ptr @hpsolb.i__, align 8
  %60 = getelementptr inbounds i64, ptr %58, i64 %59
  store i64 %57, ptr %60, align 8
  %61 = load i64, ptr @hpsolb.j, align 8
  store i64 %61, ptr @hpsolb.i__, align 8
  br label %34

62:                                               ; preds = %37
  br label %63

63:                                               ; preds = %62, %34
  %64 = load double, ptr @hpsolb.ddum, align 8
  %65 = load ptr, ptr %6, align 8
  %66 = load i64, ptr @hpsolb.i__, align 8
  %67 = getelementptr inbounds double, ptr %65, i64 %66
  store double %64, ptr %67, align 8
  %68 = load i64, ptr @hpsolb.indxin, align 8
  %69 = load ptr, ptr %7, align 8
  %70 = load i64, ptr @hpsolb.i__, align 8
  %71 = getelementptr inbounds i64, ptr %69, i64 %70
  store i64 %68, ptr %71, align 8
  br label %72

72:                                               ; preds = %63
  %73 = load i64, ptr @hpsolb.k, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, ptr @hpsolb.k, align 8
  br label %20, !llvm.loop !6

75:                                               ; preds = %20
  br label %76

76:                                               ; preds = %75, %4
  %77 = load ptr, ptr %5, align 8
  %78 = load i64, ptr %77, align 8
  %79 = icmp sgt i64 %78, 1
  br i1 %79, label %80, label %163

80:                                               ; preds = %76
  store i64 1, ptr @hpsolb.i__, align 8
  %81 = load ptr, ptr %6, align 8
  %82 = getelementptr inbounds double, ptr %81, i64 1
  %83 = load double, ptr %82, align 8
  store double %83, ptr @hpsolb.out, align 8
  %84 = load ptr, ptr %7, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  %86 = load i64, ptr %85, align 8
  store i64 %86, ptr @hpsolb.indxou, align 8
  %87 = load ptr, ptr %6, align 8
  %88 = load ptr, ptr %5, align 8
  %89 = load i64, ptr %88, align 8
  %90 = getelementptr inbounds double, ptr %87, i64 %89
  %91 = load double, ptr %90, align 8
  store double %91, ptr @hpsolb.ddum, align 8
  %92 = load ptr, ptr %7, align 8
  %93 = load ptr, ptr %5, align 8
  %94 = load i64, ptr %93, align 8
  %95 = getelementptr inbounds i64, ptr %92, i64 %94
  %96 = load i64, ptr %95, align 8
  store i64 %96, ptr @hpsolb.indxin, align 8
  br label %97

97:                                               ; preds = %127, %80
  %98 = load i64, ptr @hpsolb.i__, align 8
  %99 = load i64, ptr @hpsolb.i__, align 8
  %100 = add nsw i64 %98, %99
  store i64 %100, ptr @hpsolb.j, align 8
  %101 = load i64, ptr @hpsolb.j, align 8
  %102 = load ptr, ptr %5, align 8
  %103 = load i64, ptr %102, align 8
  %104 = sub nsw i64 %103, 1
  %105 = icmp sle i64 %101, %104
  br i1 %105, label %106, label %144

106:                                              ; preds = %97
  %107 = load ptr, ptr %6, align 8
  %108 = load i64, ptr @hpsolb.j, align 8
  %109 = add nsw i64 %108, 1
  %110 = getelementptr inbounds double, ptr %107, i64 %109
  %111 = load double, ptr %110, align 8
  %112 = load ptr, ptr %6, align 8
  %113 = load i64, ptr @hpsolb.j, align 8
  %114 = getelementptr inbounds double, ptr %112, i64 %113
  %115 = load double, ptr %114, align 8
  %116 = fcmp olt double %111, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load i64, ptr @hpsolb.j, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, ptr @hpsolb.j, align 8
  br label %120

120:                                              ; preds = %117, %106
  %121 = load ptr, ptr %6, align 8
  %122 = load i64, ptr @hpsolb.j, align 8
  %123 = getelementptr inbounds double, ptr %121, i64 %122
  %124 = load double, ptr %123, align 8
  %125 = load double, ptr @hpsolb.ddum, align 8
  %126 = fcmp olt double %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %120
  %128 = load ptr, ptr %6, align 8
  %129 = load i64, ptr @hpsolb.j, align 8
  %130 = getelementptr inbounds double, ptr %128, i64 %129
  %131 = load double, ptr %130, align 8
  %132 = load ptr, ptr %6, align 8
  %133 = load i64, ptr @hpsolb.i__, align 8
  %134 = getelementptr inbounds double, ptr %132, i64 %133
  store double %131, ptr %134, align 8
  %135 = load ptr, ptr %7, align 8
  %136 = load i64, ptr @hpsolb.j, align 8
  %137 = getelementptr inbounds i64, ptr %135, i64 %136
  %138 = load i64, ptr %137, align 8
  %139 = load ptr, ptr %7, align 8
  %140 = load i64, ptr @hpsolb.i__, align 8
  %141 = getelementptr inbounds i64, ptr %139, i64 %140
  store i64 %138, ptr %141, align 8
  %142 = load i64, ptr @hpsolb.j, align 8
  store i64 %142, ptr @hpsolb.i__, align 8
  br label %97

143:                                              ; preds = %120
  br label %144

144:                                              ; preds = %143, %97
  %145 = load double, ptr @hpsolb.ddum, align 8
  %146 = load ptr, ptr %6, align 8
  %147 = load i64, ptr @hpsolb.i__, align 8
  %148 = getelementptr inbounds double, ptr %146, i64 %147
  store double %145, ptr %148, align 8
  %149 = load i64, ptr @hpsolb.indxin, align 8
  %150 = load ptr, ptr %7, align 8
  %151 = load i64, ptr @hpsolb.i__, align 8
  %152 = getelementptr inbounds i64, ptr %150, i64 %151
  store i64 %149, ptr %152, align 8
  %153 = load double, ptr @hpsolb.out, align 8
  %154 = load ptr, ptr %6, align 8
  %155 = load ptr, ptr %5, align 8
  %156 = load i64, ptr %155, align 8
  %157 = getelementptr inbounds double, ptr %154, i64 %156
  store double %153, ptr %157, align 8
  %158 = load i64, ptr @hpsolb.indxou, align 8
  %159 = load ptr, ptr %7, align 8
  %160 = load ptr, ptr %5, align 8
  %161 = load i64, ptr %160, align 8
  %162 = getelementptr inbounds i64, ptr %159, i64 %161
  store i64 %158, ptr %162, align 8
  br label %163

163:                                              ; preds = %144, %76
  ret i32 0
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
