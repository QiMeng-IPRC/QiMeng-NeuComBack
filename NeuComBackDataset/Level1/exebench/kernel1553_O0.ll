; ModuleID = '../benchmarks/fine_grained/exebench/kernel1553.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1553.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EF_TALK = dso_local global i32 0, align 4
@EF_FIRING = dso_local global i32 0, align 4
@BUTTON_ATTACK = dso_local global i32 0, align 4
@BUTTON_USE_HOLDABLE = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientIntermissionThink(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @EF_TALK, align 4
  %4 = xor i32 %3, -1
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_7__, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  store i32 %9, ptr %7, align 4
  %10 = load i32, ptr @EF_FIRING, align 4
  %11 = xor i32 %10, -1
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, ptr %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_7__, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %11
  store i32 %16, ptr %14, align 4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, ptr %20, i32 0, i32 0
  store i32 %19, ptr %21, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, ptr %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, ptr %27, i32 0, i32 1
  store i32 %26, ptr %28, align 4
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr @BUTTON_ATTACK, align 4
  %33 = load i32, ptr @BUTTON_USE_HOLDABLE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %38, %41
  %43 = and i32 %35, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %1
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, ptr %46, i32 0, i32 2
  store i32 1, ptr %47, align 4
  br label %48

48:                                               ; preds = %45, %1
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
