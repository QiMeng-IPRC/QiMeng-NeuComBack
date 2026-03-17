; ModuleID = '../benchmarks/fine_grained/exebench/kernel616.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel616.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gx_render_plane_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %8, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %8, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, ptr %9, align 4
  %20 = load i32, ptr %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %8, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %3
  store i32 -15, ptr %4, align 4
  br label %42

27:                                               ; preds = %22
  %28 = load i32, ptr %7, align 4
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, ptr %29, i32 0, i32 0
  store i32 %28, ptr %30, align 4
  %31 = load i32, ptr %9, align 4
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, ptr %32, i32 0, i32 1
  store i32 %31, ptr %33, align 4
  %34 = load i32, ptr %9, align 4
  %35 = load i32, ptr %8, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, ptr %7, align 4
  %38 = sub nsw i32 %36, %37
  %39 = mul nsw i32 %34, %38
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, ptr %40, i32 0, i32 2
  store i32 %39, ptr %41, align 4
  store i32 0, ptr %4, align 4
  br label %42

42:                                               ; preds = %27, %26
  %43 = load i32, ptr %4, align 4
  ret i32 %43
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
