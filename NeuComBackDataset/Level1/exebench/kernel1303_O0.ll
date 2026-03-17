; ModuleID = '../benchmarks/fine_grained/exebench/kernel1303.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1303.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@subcnt = dso_local global i32 0, align 4
@substack = dso_local global ptr null, align 8
@vb = dso_local global i32 0, align 4
@prep = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pop_subcall_grammar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %14 = load i32, ptr @subcnt, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 0, ptr %7, align 4
  br label %80

17:                                               ; preds = %6
  %18 = load ptr, ptr @substack, align 8
  %19 = load i32, ptr @subcnt, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, ptr %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, ptr %22, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr @vb, align 4
  %25 = load ptr, ptr @substack, align 8
  %26 = load i32, ptr @subcnt, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, ptr %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, ptr %29, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr @prep, align 4
  %32 = load ptr, ptr @substack, align 8
  %33 = load i32, ptr @subcnt, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, ptr %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %13, align 8
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr @substack, align 8
  %41 = load i32, ptr @subcnt, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, ptr %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %8, align 8
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr @substack, align 8
  %49 = load i32, ptr @subcnt, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, ptr %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %9, align 8
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr @substack, align 8
  %57 = load i32, ptr @subcnt, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, ptr %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, ptr %60, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %10, align 8
  store i32 %62, ptr %63, align 4
  %64 = load ptr, ptr @substack, align 8
  %65 = load i32, ptr @subcnt, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, ptr %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %11, align 8
  store i32 %70, ptr %71, align 4
  %72 = load ptr, ptr @substack, align 8
  %73 = load i32, ptr @subcnt, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, ptr %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %12, align 8
  store i32 %78, ptr %79, align 4
  store i32 1, ptr %7, align 4
  br label %80

80:                                               ; preds = %17, %16
  %81 = load i32, ptr %7, align 4
  ret i32 %81
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
