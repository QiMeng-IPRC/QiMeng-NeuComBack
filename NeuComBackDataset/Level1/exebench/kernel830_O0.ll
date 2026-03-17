; ModuleID = '../benchmarks/fine_grained/exebench/kernel830.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel830.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aparams = type { i32, i32, i64, i64, i64 }
%struct.conv = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dec_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %struct.aparams, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.conv, ptr %10, i32 0, i32 0
  store i32 %9, ptr %11, align 4
  %12 = load i32, ptr %6, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.conv, ptr %13, i32 0, i32 1
  store i32 %12, ptr %14, align 4
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.aparams, ptr %15, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.aparams, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8
  %23 = mul nsw i32 %22, 8
  %24 = sub nsw i32 32, %23
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.conv, ptr %25, i32 0, i32 2
  store i32 %24, ptr %26, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.aparams, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sub nsw i32 32, %30
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.conv, ptr %32, i32 0, i32 2
  store i32 %31, ptr %33, align 4
  br label %34

34:                                               ; preds = %27, %19
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds %struct.aparams, ptr %35, i32 0, i32 3
  %37 = load i64, ptr %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct.conv, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 -2147483648, %42
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.conv, ptr %44, i32 0, i32 3
  store i32 %43, ptr %45, align 4
  br label %49

46:                                               ; preds = %34
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.conv, ptr %47, i32 0, i32 3
  store i32 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.aparams, ptr %50, i32 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.aparams, ptr %55, i32 0, i32 0
  %57 = load i32, ptr %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.conv, ptr %59, i32 0, i32 4
  store i32 %58, ptr %60, align 4
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.conv, ptr %61, i32 0, i32 5
  store i32 -1, ptr %62, align 4
  %63 = load ptr, ptr %5, align 8
  %64 = getelementptr inbounds %struct.aparams, ptr %63, i32 0, i32 0
  %65 = load i32, ptr %64, align 8
  %66 = mul nsw i32 2, %65
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds %struct.conv, ptr %67, i32 0, i32 6
  store i32 %66, ptr %68, align 4
  br label %76

69:                                               ; preds = %49
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr inbounds %struct.conv, ptr %70, i32 0, i32 4
  store i32 0, ptr %71, align 4
  %72 = load ptr, ptr %4, align 8
  %73 = getelementptr inbounds %struct.conv, ptr %72, i32 0, i32 5
  store i32 1, ptr %73, align 4
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct.conv, ptr %74, i32 0, i32 6
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %69, %54
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
