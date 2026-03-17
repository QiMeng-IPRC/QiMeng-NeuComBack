; ModuleID = '../benchmarks/fine_grained/exebench/kernel94.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel94.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, ptr }

@ERR = dso_local global i32 0, align 4
@OK = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @int_to_string(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, ptr %6, align 4
  %14 = load i32, ptr %5, align 4
  store i32 %14, ptr %7, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, ptr %5, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, ptr %7, align 4
  br label %20

20:                                               ; preds = %17, %2
  store i32 0, ptr %8, align 4
  %21 = load i32, ptr %6, align 4
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %22, i32 0, i32 0
  store i32 %21, ptr %23, align 8
  br label %24

24:                                               ; preds = %50, %20
  %25 = load i32, ptr %8, align 4
  %26 = mul nsw i32 %25, 10
  store i32 %26, ptr %8, align 4
  %27 = load i32, ptr %7, align 4
  %28 = srem i32 %27, 10
  %29 = load i32, ptr %8, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, ptr %8, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sdiv i32 %31, 10
  store i32 %32, ptr %7, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, ptr %33, i32 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp sle i64 %35, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, ptr %42, i32 0, i32 0
  store i32 0, ptr %43, align 8
  %44 = load i32, ptr @ERR, align 4
  store i32 %44, ptr %3, align 4
  br label %88

45:                                               ; preds = %24
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %7, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %24, label %53, !llvm.loop !6

53:                                               ; preds = %50
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  store ptr %56, ptr %9, align 8
  %57 = load i32, ptr %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load ptr, ptr %9, align 8
  store i8 45, ptr %60, align 1
  %61 = load ptr, ptr %9, align 8
  %62 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %62, ptr %9, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, ptr %67, i32 0, i32 0
  %69 = load i32, ptr %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %66, i64 %70
  store ptr %71, ptr %10, align 8
  br label %72

72:                                               ; preds = %76, %63
  %73 = load ptr, ptr %9, align 8
  %74 = load ptr, ptr %10, align 8
  %75 = icmp ult ptr %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, ptr %8, align 4
  %78 = srem i32 %77, 10
  %79 = add nsw i32 48, %78
  %80 = trunc i32 %79 to i8
  %81 = load ptr, ptr %9, align 8
  store i8 %80, ptr %81, align 1
  %82 = load ptr, ptr %9, align 8
  %83 = getelementptr inbounds i8, ptr %82, i32 1
  store ptr %83, ptr %9, align 8
  %84 = load i32, ptr %8, align 4
  %85 = sdiv i32 %84, 10
  store i32 %85, ptr %8, align 4
  br label %72, !llvm.loop !8

86:                                               ; preds = %72
  %87 = load i32, ptr @OK, align 4
  store i32 %87, ptr %3, align 4
  br label %88

88:                                               ; preds = %86, %41
  %89 = load i32, ptr %3, align 4
  ret i32 %89
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
!8 = distinct !{!8, !7}
