; ModuleID = '../benchmarks/fine_grained/exebench/kernel1594.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1594.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@sign_states = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_signature_state(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %8, i32 0, i32 0
  store i32 %5, ptr %9, align 4
  %10 = load i32, ptr %4, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 2
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load ptr, ptr @sign_states, align 8
  %15 = load i32, ptr %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %21, i32 0, i32 1
  store i32 %18, ptr %22, align 4
  br label %23

23:                                               ; preds = %13, %2
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
