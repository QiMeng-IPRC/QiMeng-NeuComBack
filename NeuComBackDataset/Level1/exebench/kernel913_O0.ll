; ModuleID = '../benchmarks/fine_grained/exebench/kernel913.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel913.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.newport_regs = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i16 }
%struct.TYPE_6__ = type { i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @newport_vc2_get(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  store i8 %1, ptr %4, align 1
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.newport_regs, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, ptr %6, i32 0, i32 0
  store i32 8654857, ptr %7, align 4
  %8 = load i8, ptr %4, align 1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.newport_regs, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, ptr %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, ptr %12, i32 0, i32 0
  store i8 %8, ptr %13, align 2
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.newport_regs, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, ptr %15, i32 0, i32 0
  store i32 8654874, ptr %16, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.newport_regs, ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, ptr %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, ptr %20, i32 0, i32 0
  %22 = load i16, ptr %21, align 4
  ret i16 %22
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
