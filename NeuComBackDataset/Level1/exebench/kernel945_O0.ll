; ModuleID = '../benchmarks/fine_grained/exebench/kernel945.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel945.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initScsdis(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, ptr %7, i32 0, i32 0
  store i8 %6, ptr %8, align 8
  %9 = load i32, ptr %4, align 4
  %10 = sitofp i32 %9 to double
  %11 = fadd double %10, 1.000000e+00
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, ptr %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 0
  store double %11, ptr %14, align 8
  %15 = load i32, ptr %4, align 4
  %16 = add nsw i32 %15, 2
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, ptr %18, i32 0, i32 1
  store i32 %16, ptr %19, align 8
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
