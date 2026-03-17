; ModuleID = '../benchmarks/fine_grained/exebench/kernel1479.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1479.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }

@barrels_fall_nikki_A = dso_local global i32 0, align 4
@level = dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @barrelsfall_nikkiA_trigger(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load i32, ptr @barrels_fall_nikki_A, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 1
  store i32 %7, ptr %9, align 8
  %10 = load i64, ptr @level, align 8
  %11 = sitofp i64 %10 to double
  %12 = fadd double %11, 1.000000e-01
  %13 = fptosi double %12 to i64
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, ptr %14, i32 0, i32 0
  store i64 %13, ptr %15, align 8
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
