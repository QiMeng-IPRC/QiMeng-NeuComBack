; ModuleID = '../benchmarks/fine_grained/exebench/kernel1471.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1471.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MSG_FLOW_UNINITED = dso_local global i32 0, align 4
@TLS_ST_SR_CLNT_HELLO = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ossl_statem_set_hello_verify_done(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @MSG_FLOW_UNINITED, align 4
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %5, i32 0, i32 2
  store i32 %3, ptr %6, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %8, i32 0, i32 0
  store i32 1, ptr %9, align 4
  %10 = load i32, ptr @TLS_ST_SR_CLNT_HELLO, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, ptr %12, i32 0, i32 1
  store i32 %10, ptr %13, align 4
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
