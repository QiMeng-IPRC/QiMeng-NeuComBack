; ModuleID = '../benchmarks/fine_grained/exebench/kernel673.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel673.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@red_team_score = dso_local global i32 0, align 4
@DAMAGE_YES = dso_local global i32 0, align 4
@DAMAGE_NO = dso_local global i32 0, align 4
@level = dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redspidernode_think(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @red_team_score, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, ptr @DAMAGE_YES, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 2
  store i32 %6, ptr %8, align 4
  br label %13

9:                                                ; preds = %1
  %10 = load i32, ptr @DAMAGE_NO, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, ptr %11, i32 0, i32 2
  store i32 %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %5
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, ptr %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8
  %18 = add nsw i32 %17, 1
  %19 = srem i32 %18, 13
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %21, i32 0, i32 0
  store i32 %19, ptr %22, align 8
  %23 = load i64, ptr @level, align 8
  %24 = sitofp i64 %23 to double
  %25 = fadd double %24, 1.000000e-01
  %26 = fptosi double %25 to i64
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, ptr %27, i32 0, i32 0
  store i64 %26, ptr %28, align 8
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
