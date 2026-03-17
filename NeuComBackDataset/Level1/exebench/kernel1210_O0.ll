; ModuleID = '../benchmarks/fine_grained/exebench/kernel1210.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h8_cmp8(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %5, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr %7, align 4
  %11 = load i32, ptr %7, align 4
  %12 = and i32 %11, 256
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %16, i32 0, i32 0
  store i32 %15, ptr %17, align 4
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %5, align 4
  %20 = xor i32 %18, %19
  %21 = load i32, ptr %6, align 4
  %22 = load i32, ptr %7, align 4
  %23 = xor i32 %21, %22
  %24 = and i32 %20, %23
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, ptr %29, i32 0, i32 1
  store i32 %28, ptr %30, align 4
  %31 = load i32, ptr %7, align 4
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, ptr %36, i32 0, i32 2
  store i32 %35, ptr %37, align 4
  %38 = load i32, ptr %7, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, ptr %43, i32 0, i32 3
  store i32 %42, ptr %44, align 4
  %45 = load i32, ptr %5, align 4
  %46 = load i32, ptr %6, align 4
  %47 = xor i32 %45, %46
  %48 = load i32, ptr %7, align 4
  %49 = xor i32 %47, %48
  %50 = and i32 %49, 16
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, ptr %54, i32 0, i32 4
  store i32 %53, ptr %55, align 4
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
