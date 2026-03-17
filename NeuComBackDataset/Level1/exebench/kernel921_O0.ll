; ModuleID = '../benchmarks/fine_grained/exebench/kernel921.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel921.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@self = dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@servercommandframe = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Player_PostUpdate() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i32 0, i32 7), align 8
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i32 0, i32 8), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i32 0, i32 5), align 8
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i32 0, i32 6), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i32 0, i32 3), align 8
  store i32 %3, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i32 0, i32 4), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i32 0, i32 1), align 8
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i32 0, i32 2), align 4
  %5 = load i64, ptr @servercommandframe, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, ptr @self, align 8
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
