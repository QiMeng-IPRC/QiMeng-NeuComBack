; ModuleID = '../benchmarks/fine_grained/exebench/kernel1245.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1245.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet = type { i32, i32 }

@pte_internal = dso_local global i32 0, align 4
@ppt_psbend = dso_local global i32 0, align 4
@ptps_psbend = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_decode_psbend(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, ptr %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load i32, ptr @ppt_psbend, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.pt_packet, ptr %14, i32 0, i32 1
  store i32 %13, ptr %15, align 4
  %16 = load i32, ptr @ptps_psbend, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.pt_packet, ptr %17, i32 0, i32 0
  store i32 %16, ptr %18, align 4
  %19 = load i32, ptr @ptps_psbend, align 4
  store i32 %19, ptr %3, align 4
  br label %20

20:                                               ; preds = %12, %9
  %21 = load i32, ptr %3, align 4
  ret i32 %21
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
