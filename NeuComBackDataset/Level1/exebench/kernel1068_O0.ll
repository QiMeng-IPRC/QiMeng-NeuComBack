; ModuleID = '../benchmarks/fine_grained/exebench/kernel1068.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1068.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@screen = dso_local global ptr null, align 8
@save_screen = dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@rstyle = dso_local global i32 0, align 4
@save_rstyle = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scr_save_cursor() #0 {
  %1 = load ptr, ptr @screen, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @save_screen, i32 0, i32 1), align 4
  %4 = load ptr, ptr @screen, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %4, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr @save_screen, align 4
  %7 = load i32, ptr @rstyle, align 4
  store i32 %7, ptr @save_rstyle, align 4
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
