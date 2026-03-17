; ModuleID = '../benchmarks/fine_grained/exebench/kernel459.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel459.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@codes = dso_local global ptr null, align 8
@loc = dso_local global i64 0, align 8
@highLoc = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emitJmp(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load i32, ptr %6, align 4
  %12 = load ptr, ptr @codes, align 8
  %13 = load i64, ptr @loc, align 8
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  store i32 %11, ptr %14, align 4
  %15 = load i32, ptr %7, align 4
  %16 = load ptr, ptr @codes, align 8
  %17 = load i64, ptr @loc, align 8
  %18 = add i64 %17, 1
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  store i32 %15, ptr %19, align 4
  %20 = load i32, ptr %8, align 4
  %21 = load ptr, ptr @codes, align 8
  %22 = load i64, ptr @loc, align 8
  %23 = add i64 %22, 2
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 %20, ptr %24, align 4
  %25 = load ptr, ptr @codes, align 8
  %26 = load i64, ptr @loc, align 8
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = getelementptr inbounds i32, ptr %27, i64 3
  %29 = call i32 @memcpy(ptr noundef %28, ptr noundef %9, i32 noundef 4)
  %30 = load i32, ptr %10, align 4
  %31 = load ptr, ptr @codes, align 8
  %32 = load i64, ptr @loc, align 8
  %33 = add i64 %32, 7
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  store i32 %30, ptr %34, align 4
  %35 = load i64, ptr @loc, align 8
  %36 = add i64 %35, 8
  store i64 %36, ptr @loc, align 8
  %37 = load i64, ptr @loc, align 8
  %38 = load i64, ptr @highLoc, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %5
  %41 = load i64, ptr @loc, align 8
  store i64 %41, ptr @highLoc, align 8
  br label %42

42:                                               ; preds = %40, %5
  ret void
}

declare i32 @memcpy(ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
