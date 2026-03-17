; ModuleID = '../benchmarks/fine_grained/exebench/kernel664.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel664.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@scriptPtr = dso_local global ptr null, align 8
@currentScriptValue = dso_local global i64 0, align 8
@sceneTracks = dso_local global ptr null, align 8
@destX = dso_local global i32 0, align 4
@destY = dso_local global i32 0, align 4
@destZ = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mPOS_POINT(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8
  %9 = load ptr, ptr @scriptPtr, align 8
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr @currentScriptValue, align 8
  %11 = load ptr, ptr @sceneTracks, align 8
  %12 = load i64, ptr @currentScriptValue, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, ptr %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_7__, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr @destX, align 4
  %16 = load ptr, ptr @sceneTracks, align 8
  %17 = load i64, ptr @currentScriptValue, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, ptr %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @destY, align 4
  %21 = load ptr, ptr @sceneTracks, align 8
  %22 = load i64, ptr @currentScriptValue, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, ptr %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr @destZ, align 4
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, ptr %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, ptr %27, i32 0, i32 0
  %29 = load i64, ptr %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, ptr %32, i32 0, i32 3
  store i64 0, ptr %33, align 8
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, ptr @destX, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, ptr %36, i32 0, i32 2
  store i32 %35, ptr %37, align 8
  %38 = load i32, ptr @destY, align 4
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, ptr %39, i32 0, i32 1
  store i32 %38, ptr %40, align 4
  %41 = load i32, ptr @destZ, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, ptr %42, i32 0, i32 0
  store i32 %41, ptr %43, align 8
  ret i32 0
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
