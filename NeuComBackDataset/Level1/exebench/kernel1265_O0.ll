; ModuleID = '../benchmarks/fine_grained/exebench/kernel1265.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1265.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nMotorEncoder = dso_local global ptr null, align 8
@leftDriveMiddle = dso_local global i64 0, align 8
@rightDriveMiddle = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resetEncoders() #0 {
  %1 = load ptr, ptr @nMotorEncoder, align 8
  %2 = load i64, ptr @leftDriveMiddle, align 8
  %3 = getelementptr inbounds i64, ptr %1, i64 %2
  store i64 0, ptr %3, align 8
  %4 = load ptr, ptr @nMotorEncoder, align 8
  %5 = load i64, ptr @rightDriveMiddle, align 8
  %6 = getelementptr inbounds i64, ptr %4, i64 %5
  store i64 0, ptr %6, align 8
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
