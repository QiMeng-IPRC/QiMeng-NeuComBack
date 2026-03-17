; ModuleID = '../benchmarks/fine_grained/exebench/kernel1203.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1203.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@history_def_next = dso_local global i64 0, align 8
@he_errlist = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @history_getunique(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, ptr %6, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  %9 = load i64, ptr @history_def_next, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, ptr %12, i32 0, i32 0
  store i32 14, ptr %13, align 4
  %14 = load ptr, ptr @he_errlist, align 8
  %15 = getelementptr inbounds i32, ptr %14, i64 14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, ptr %17, i32 0, i32 1
  store i32 %16, ptr %18, align 4
  store i32 -1, ptr %3, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, ptr %20, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = inttoptr i64 %22 to ptr
  %24 = getelementptr inbounds %struct.TYPE_6__, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, ptr %29, i32 0, i32 0
  store i32 %28, ptr %30, align 4
  store i32 0, ptr %3, align 4
  br label %31

31:                                               ; preds = %19, %11
  %32 = load i32, ptr %3, align 4
  ret i32 %32
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
