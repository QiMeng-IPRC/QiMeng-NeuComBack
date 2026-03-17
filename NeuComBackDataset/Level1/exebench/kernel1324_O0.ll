; ModuleID = '../benchmarks/fine_grained/exebench/kernel1324.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1324.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dnumcolumns = dso_local global ptr null, align 8
@DISSDUMPTYPE = dso_local global i64 0, align 8
@FAILFLOORDUDUMPTYPE = dso_local global i64 0, align 8
@EVOLVEWITHVPOT = dso_local global i64 0, align 8
@TRACKVPOT = dso_local global i64 0, align 8
@VPOTDUMPTYPE = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_rdump_content_dnumcolumns_dnumversion(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr @dnumcolumns, align 8
  %6 = load i64, ptr @DISSDUMPTYPE, align 8
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = add nsw i32 16, %8
  %10 = load ptr, ptr @dnumcolumns, align 8
  %11 = load i64, ptr @FAILFLOORDUDUMPTYPE, align 8
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = add nsw i32 %9, %13
  %15 = load ptr, ptr %3, align 8
  store i32 %14, ptr %15, align 4
  %16 = load i64, ptr @EVOLVEWITHVPOT, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i64, ptr @TRACKVPOT, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18, %2
  %22 = load ptr, ptr @dnumcolumns, align 8
  %23 = load i64, ptr @VPOTDUMPTYPE, align 8
  %24 = getelementptr inbounds i32, ptr %22, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %3, align 8
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, %25
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load ptr, ptr %4, align 8
  store i32 1, ptr %30, align 4
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
