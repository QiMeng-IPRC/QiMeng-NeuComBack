; ModuleID = '../benchmarks/fine_grained/exebench/kernel991.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel991.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@OK = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @St_raise_parse(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, ptr %5, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = sub nsw i64 %7, 1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, ptr %11, i32 0, i32 0
  store i64 %8, ptr %12, align 8
  %13 = load i32, ptr @OK, align 4
  ret i32 %13
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
