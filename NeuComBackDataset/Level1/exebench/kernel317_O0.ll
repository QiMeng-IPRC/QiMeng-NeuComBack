; ModuleID = '../benchmarks/fine_grained/exebench/kernel317.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel317.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@g_config = dso_local global %struct.TYPE_28__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xxx2varxxx_video(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 14), align 4
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_27__, ptr %4, i32 0, i32 14
  store i32 %3, ptr %5, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 13), align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_27__, ptr %7, i32 0, i32 13
  store i32 %6, ptr %8, align 4
  %9 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 12), align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_27__, ptr %10, i32 0, i32 12
  store i32 %9, ptr %11, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 11), align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, ptr %13, i32 0, i32 11
  store i32 %12, ptr %14, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 10), align 4
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, ptr %16, i32 0, i32 10
  store i32 %15, ptr %17, align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 9), align 4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, ptr %19, i32 0, i32 9
  store i32 %18, ptr %20, align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 8), align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, ptr %22, i32 0, i32 8
  store i32 %21, ptr %23, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 7), align 4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, ptr %25, i32 0, i32 7
  store i32 %24, ptr %26, align 4
  %27 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 6), align 4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, ptr %28, i32 0, i32 6
  store i32 %27, ptr %29, align 4
  %30 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 5), align 4
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, ptr %31, i32 0, i32 5
  store i32 %30, ptr %32, align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 4), align 4
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, ptr %34, i32 0, i32 4
  store i32 %33, ptr %35, align 4
  %36 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 3), align 4
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, ptr %37, i32 0, i32 3
  store i32 %36, ptr %38, align 4
  %39 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 2), align 4
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, ptr %40, i32 0, i32 2
  store i32 %39, ptr %41, align 4
  %42 = load i32, ptr getelementptr inbounds (%struct.TYPE_26__, ptr @g_config, i32 0, i32 1), align 4
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, ptr %43, i32 0, i32 1
  store i32 %42, ptr %44, align 4
  %45 = load i32, ptr @g_config, align 4
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, ptr %46, i32 0, i32 0
  store i32 %45, ptr %47, align 4
  ret i32 0
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
