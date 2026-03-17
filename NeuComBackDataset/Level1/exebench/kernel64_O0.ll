; ModuleID = '../benchmarks/fine_grained/exebench/kernel64.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { double }

@GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upb_value_setdouble(ptr noundef %0, double noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @memset(ptr noundef %5, i32 noundef 0, i32 noundef 16)
  %7 = load i32, ptr @GOOGLE_PROTOBUF_FIELDDESCRIPTORPROTO_TYPE_TYPE_DOUBLE, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 1
  store i32 %7, ptr %9, align 8
  %10 = load double, ptr %4, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, ptr %12, i32 0, i32 0
  store double %10, ptr %13, align 8
  ret void
}

declare i32 @memset(ptr noundef, i32 noundef, i32 noundef) #1

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
