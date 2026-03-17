; ModuleID = '../benchmarks/fine_grained/exebench/kernel79.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel79.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rnd_seed = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: nounwind uwtable
define dso_local i64 @rnd() local_unnamed_addr #0 {
  %1 = load i64, ptr @rnd_seed, align 8
  switch i64 %1, label %7 [
    i64 2147483647, label %2
    i64 0, label %2
  ]

2:                                                ; preds = %0, %0
  %3 = tail call i64 (...) @getpid() #2
  %4 = shl i64 %3, 16
  %5 = tail call i64 @time(ptr noundef null) #2
  %6 = xor i64 %4, %5
  br label %7

7:                                                ; preds = %0, %2
  %8 = phi i64 [ %1, %0 ], [ %6, %2 ]
  %9 = sdiv i64 %8, 127773
  %10 = srem i64 %8, 127773
  %11 = mul nsw i64 %10, 16807
  %12 = mul nsw i64 %9, -2836
  %13 = add nsw i64 %12, %11
  %14 = icmp slt i64 %13, 1
  %15 = add nsw i64 %13, 2147483647
  %16 = select i1 %14, i64 %15, i64 %13
  store i64 %16, ptr @rnd_seed, align 8, !tbaa !5
  ret i64 %16
}

declare i64 @getpid(...) local_unnamed_addr #1

declare i64 @time(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
