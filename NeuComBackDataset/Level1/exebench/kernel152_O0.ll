; ModuleID = '../benchmarks/fine_grained/exebench/kernel152.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel152.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itoaBuffer = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @u8toString(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 40, i1 false)
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %3, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %11
  store i32 48, ptr %12, align 4
  br label %13

13:                                               ; preds = %8, %1
  br label %14

14:                                               ; preds = %17, %13
  %15 = load i32, ptr %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, ptr %2, align 4
  %19 = srem i32 %18, 10
  %20 = add nsw i32 48, %19
  %21 = load i32, ptr %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %3, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %23
  store i32 %20, ptr %24, align 4
  %25 = load i32, ptr %2, align 4
  %26 = sdiv i32 %25, 10
  store i32 %26, ptr %2, align 4
  br label %14, !llvm.loop !6

27:                                               ; preds = %14
  store i32 0, ptr %4, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, ptr %3, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, ptr %3, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr @itoaBuffer, align 8
  %38 = load i32, ptr %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %37, i64 %39
  store i32 %36, ptr %40, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load i32, ptr %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %4, align 4
  br label %28, !llvm.loop !8

44:                                               ; preds = %28
  %45 = load ptr, ptr @itoaBuffer, align 8
  %46 = load i32, ptr %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %45, i64 %47
  store i32 0, ptr %48, align 4
  %49 = load ptr, ptr @itoaBuffer, align 8
  ret ptr %49
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!8 = distinct !{!8, !7}
