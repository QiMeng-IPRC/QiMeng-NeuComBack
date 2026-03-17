; ModuleID = '../benchmarks/fine_grained/exebench/kernel77.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel77.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@gdt = dso_local global ptr null, align 8
@gdt_entries = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdt_set_entry(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load i32, ptr %8, align 4
  %12 = and i32 %11, 65535
  %13 = load ptr, ptr @gdt, align 8
  %14 = load i64, ptr %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, ptr %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, ptr %15, i32 0, i32 0
  store i32 %12, ptr %16, align 4
  %17 = load i32, ptr %10, align 4
  %18 = shl i32 %17, 4
  %19 = load i32, ptr %8, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 15
  %22 = or i32 %18, %21
  %23 = load ptr, ptr @gdt, align 8
  %24 = load i64, ptr %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, ptr %25, i32 0, i32 1
  store i32 %22, ptr %26, align 4
  %27 = load i32, ptr %7, align 4
  %28 = and i32 %27, 65535
  %29 = load ptr, ptr @gdt, align 8
  %30 = load i64, ptr %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, ptr %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, ptr %31, i32 0, i32 2
  store i32 %28, ptr %32, align 4
  %33 = load i32, ptr %7, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = load ptr, ptr @gdt, align 8
  %37 = load i64, ptr %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, ptr %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, ptr %38, i32 0, i32 3
  store i32 %35, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = ashr i32 %40, 24
  %42 = and i32 %41, 255
  %43 = load ptr, ptr @gdt, align 8
  %44 = load i64, ptr %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, ptr %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, ptr %45, i32 0, i32 4
  store i32 %42, ptr %46, align 4
  %47 = load i32, ptr %9, align 4
  %48 = load ptr, ptr @gdt, align 8
  %49 = load i64, ptr %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, ptr %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, ptr %50, i32 0, i32 5
  store i32 %47, ptr %51, align 4
  %52 = load i64, ptr %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, ptr %6, align 8
  %54 = load i64, ptr @gdt_entries, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %5
  %57 = load i64, ptr %6, align 8
  store i64 %57, ptr @gdt_entries, align 8
  br label %58

58:                                               ; preds = %56, %5
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
