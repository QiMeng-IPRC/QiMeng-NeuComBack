; ModuleID = '../benchmarks/fine_grained/exebench/kernel1179.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1179.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 }

@_conf = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_set_gfx_flag(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, ptr %3, align 2
  store i16 %1, ptr %4, align 2
  %5 = load i16, ptr %4, align 2
  %6 = icmp ne i16 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load i16, ptr %3, align 2
  %9 = zext i16 %8 to i32
  %10 = load ptr, ptr @_conf, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i32 0, i32 0
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = or i32 %13, %9
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %11, align 2
  br label %26

16:                                               ; preds = %2
  %17 = load i16, ptr %3, align 2
  %18 = zext i16 %17 to i32
  %19 = xor i32 %18, -1
  %20 = load ptr, ptr @_conf, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, ptr %20, i32 0, i32 0
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, %19
  %25 = trunc i32 %24 to i16
  store i16 %25, ptr %21, align 2
  br label %26

26:                                               ; preds = %16, %7
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
