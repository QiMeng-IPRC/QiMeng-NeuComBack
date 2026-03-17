; ModuleID = '../benchmarks/fine_grained/exebench/kernel860.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel860.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RAW = dso_local global i32 0, align 4
@Terminal = dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@TIOCSETP = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @noraw() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @RAW, align 4
  %3 = xor i32 %2, -1
  %4 = load i32, ptr @Terminal, align 4
  %5 = and i32 %4, %3
  store i32 %5, ptr @Terminal, align 4
  %6 = load i32, ptr @TIOCSETP, align 4
  %7 = call i32 @ioctl(i32 noundef 0, i32 noundef %6, ptr noundef @Terminal)
  store i32 %7, ptr %1, align 4
  ret void
}

declare i32 @ioctl(i32 noundef, i32 noundef, ptr noundef) #1

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
