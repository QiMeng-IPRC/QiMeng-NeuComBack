; ModuleID = '../benchmarks/fine_grained/exebench/kernel1547.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1547.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spi0 = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_spi() #0 {
  %1 = load ptr, ptr @spi0, align 8
  %2 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 250, ptr %2, align 4
  %3 = load ptr, ptr @spi0, align 8
  %4 = getelementptr inbounds i32, ptr %3, i64 0
  store i32 65584, ptr %4, align 4
  %5 = load ptr, ptr @spi0, align 8
  %6 = getelementptr inbounds i32, ptr %5, i64 0
  store i32 65536, ptr %6, align 4
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
