; ModuleID = '../benchmarks/fine_grained/exebench/kernel1109.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1109.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_reg = type { i64, [2 x i64] }

@__const.hp3800_vrefs.reg = private unnamed_addr constant [5 x %struct.st_reg] [%struct.st_reg { i64 150, [2 x i64] [i64 25, i64 50] }, %struct.st_reg { i64 300, [2 x i64] [i64 50, i64 101] }, %struct.st_reg { i64 600, [2 x i64] [i64 102, i64 202] }, %struct.st_reg { i64 1200, [2 x i64] [i64 204, i64 404] }, %struct.st_reg { i64 2400, [2 x i64] [i64 408, i64 808] }], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hp3800_vrefs(i64 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [5 x %struct.st_reg], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.hp3800_vrefs.reg, i64 120, i1 false)
  %10 = load ptr, ptr %5, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %3
  %13 = load ptr, ptr %6, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  store i64 5, ptr %9, align 8
  %16 = load ptr, ptr %6, align 8
  store i64 0, ptr %16, align 8
  %17 = load ptr, ptr %5, align 8
  store i64 0, ptr %17, align 8
  store i64 0, ptr %8, align 8
  br label %18

18:                                               ; preds = %43, %15
  %19 = load i64, ptr %8, align 8
  %20 = load i64, ptr %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load i64, ptr %8, align 8
  %24 = getelementptr inbounds [5 x %struct.st_reg], ptr %7, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.st_reg, ptr %24, i32 0, i32 0
  %26 = load i64, ptr %25, align 8
  %27 = load i64, ptr %4, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load i64, ptr %8, align 8
  %31 = getelementptr inbounds [5 x %struct.st_reg], ptr %7, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.st_reg, ptr %31, i32 0, i32 1
  %33 = getelementptr inbounds [2 x i64], ptr %32, i64 0, i64 0
  %34 = load i64, ptr %33, align 8
  %35 = load ptr, ptr %5, align 8
  store i64 %34, ptr %35, align 8
  %36 = load i64, ptr %8, align 8
  %37 = getelementptr inbounds [5 x %struct.st_reg], ptr %7, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.st_reg, ptr %37, i32 0, i32 1
  %39 = getelementptr inbounds [2 x i64], ptr %38, i64 0, i64 1
  %40 = load i64, ptr %39, align 8
  %41 = load ptr, ptr %6, align 8
  store i64 %40, ptr %41, align 8
  br label %46

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = load i64, ptr %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, ptr %8, align 8
  br label %18, !llvm.loop !6

46:                                               ; preds = %29, %18
  br label %47

47:                                               ; preds = %46, %12, %3
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
