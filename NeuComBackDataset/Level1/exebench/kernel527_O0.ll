; ModuleID = '../benchmarks/fine_grained/exebench/kernel527.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel527.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_sslcon = type { i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conn_closecon(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.conn_sslcon, ptr %4, i32 0, i32 0
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.conn_sslcon, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %8, %1
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.conn_sslcon, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = call i32 @close(i32 noundef %16)
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.conn_sslcon, ptr %18, i32 0, i32 0
  store i32 5, ptr %19, align 8
  store i32 0, ptr %2, align 4
  br label %50

20:                                               ; preds = %8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.conn_sslcon, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.conn_sslcon, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20
  store i32 0, ptr %2, align 4
  br label %50

31:                                               ; preds = %25
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.conn_sslcon, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8
  %35 = icmp ne i32 %34, 3
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.conn_sslcon, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 8
  %40 = call i32 @close(i32 noundef %39)
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct.conn_sslcon, ptr %41, i32 0, i32 0
  store i32 5, ptr %42, align 8
  store i32 0, ptr %2, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.conn_sslcon, ptr %44, i32 0, i32 2
  store i64 0, ptr %45, align 8
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.conn_sslcon, ptr %46, i32 0, i32 1
  store i32 1, ptr %47, align 4
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.conn_sslcon, ptr %48, i32 0, i32 0
  store i32 4, ptr %49, align 8
  store i32 0, ptr %2, align 4
  br label %50

50:                                               ; preds = %43, %36, %30, %13
  %51 = load i32, ptr %2, align 4
  ret i32 %51
}

declare i32 @close(i32 noundef) #1

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
