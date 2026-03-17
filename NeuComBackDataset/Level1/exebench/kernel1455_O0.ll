; ModuleID = '../benchmarks/fine_grained/exebench/kernel1455.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1455.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GET_C = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcs(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 4
  %8 = sub nsw i32 %7, 12
  store i32 %8, ptr %6, align 4
  %9 = load i64, ptr @GET_C, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  %15 = sext i8 %14 to i32
  %16 = mul nsw i32 2, %15
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, %16
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %11, %2
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
