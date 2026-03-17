; ModuleID = '../benchmarks/fine_grained/exebench/kernel711.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel711.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_secretstream_xchacha20poly1305_TAG_FINAL = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @crypto_secretstream_xchacha20poly1305_tag_final() #0 {
  %1 = load i8, ptr @crypto_secretstream_xchacha20poly1305_TAG_FINAL, align 1
  ret i8 %1
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
