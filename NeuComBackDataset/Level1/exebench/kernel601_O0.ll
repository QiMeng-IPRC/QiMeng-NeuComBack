; ModuleID = '../benchmarks/fine_grained/exebench/kernel601.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel601.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdt_entries = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_gdt_entries() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 9
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load ptr, ptr @gdt_entries, align 8
  %7 = load i32, ptr %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %6, i64 %8
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %1, align 4
  br label %2, !llvm.loop !6

13:                                               ; preds = %2
  %14 = load ptr, ptr @gdt_entries, align 8
  %15 = load i32, ptr %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %1, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i32, ptr %14, i64 %17
  store i32 64, ptr %18, align 4
  %19 = load ptr, ptr @gdt_entries, align 8
  %20 = load i32, ptr %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %1, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, ptr %19, i64 %22
  store i32 154, ptr %23, align 4
  %24 = load ptr, ptr @gdt_entries, align 8
  %25 = load i32, ptr %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %1, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, ptr %24, i64 %27
  store i32 0, ptr %28, align 4
  %29 = load ptr, ptr @gdt_entries, align 8
  %30 = load i32, ptr %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %1, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, ptr %29, i64 %32
  store i32 0, ptr %33, align 4
  %34 = load ptr, ptr @gdt_entries, align 8
  %35 = load i32, ptr %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %1, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, ptr %34, i64 %37
  store i32 0, ptr %38, align 4
  %39 = load ptr, ptr @gdt_entries, align 8
  %40 = load i32, ptr %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %1, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, ptr %39, i64 %42
  store i32 0, ptr %43, align 4
  %44 = load ptr, ptr @gdt_entries, align 8
  %45 = load i32, ptr %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %1, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, ptr %44, i64 %47
  store i32 0, ptr %48, align 4
  %49 = load ptr, ptr @gdt_entries, align 8
  %50 = load i32, ptr %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %1, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, ptr %49, i64 %52
  store i32 0, ptr %53, align 4
  %54 = load ptr, ptr @gdt_entries, align 8
  %55 = load i32, ptr %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %1, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, ptr %54, i64 %57
  store i32 64, ptr %58, align 4
  %59 = load ptr, ptr @gdt_entries, align 8
  %60 = load i32, ptr %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %1, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, ptr %59, i64 %62
  store i32 144, ptr %63, align 4
  %64 = load ptr, ptr @gdt_entries, align 8
  %65 = load i32, ptr %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %1, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, ptr %64, i64 %67
  store i32 0, ptr %68, align 4
  %69 = load ptr, ptr @gdt_entries, align 8
  %70 = load i32, ptr %1, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %1, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, ptr %69, i64 %72
  store i32 0, ptr %73, align 4
  %74 = load ptr, ptr @gdt_entries, align 8
  %75 = load i32, ptr %1, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %1, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, ptr %74, i64 %77
  store i32 0, ptr %78, align 4
  %79 = load ptr, ptr @gdt_entries, align 8
  %80 = load i32, ptr %1, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %1, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, ptr %79, i64 %82
  store i32 0, ptr %83, align 4
  %84 = load ptr, ptr @gdt_entries, align 8
  %85 = load i32, ptr %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %1, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, ptr %84, i64 %87
  store i32 0, ptr %88, align 4
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
