; ModuleID = '../benchmarks/fine_grained/exebench/kernel20.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTLESC = dso_local global i8 0, align 1
@CTLQUOTEMARK = dso_local global i8 0, align 1
@CTLQUOTEEND = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmescapes(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  store ptr %5, ptr %3, align 8
  br label %6

6:                                                ; preds = %36, %1
  %7 = load ptr, ptr %3, align 8
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8, ptr @CTLESC, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %6
  %14 = load ptr, ptr %3, align 8
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8, ptr @CTLQUOTEMARK, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 8
  %22 = load i8, ptr %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, ptr @CTLQUOTEEND, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %23, %25
  br label %27

27:                                               ; preds = %20, %13, %6
  %28 = phi i1 [ false, %13 ], [ false, %6 ], [ %26, %20 ]
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %31, ptr %3, align 8
  %32 = load i8, ptr %30, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %78

36:                                               ; preds = %29
  br label %6, !llvm.loop !6

37:                                               ; preds = %27
  %38 = load ptr, ptr %3, align 8
  store ptr %38, ptr %4, align 8
  br label %39

39:                                               ; preds = %70, %57, %37
  %40 = load ptr, ptr %3, align 8
  %41 = load i8, ptr %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  %44 = load ptr, ptr %3, align 8
  %45 = load i8, ptr %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, ptr @CTLQUOTEMARK, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %3, align 8
  %52 = load i8, ptr %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, ptr @CTLQUOTEEND, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50, %43
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %59, ptr %3, align 8
  br label %39, !llvm.loop !8

60:                                               ; preds = %50
  %61 = load ptr, ptr %3, align 8
  %62 = load i8, ptr %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, ptr @CTLESC, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds i8, ptr %68, i32 1
  store ptr %69, ptr %3, align 8
  br label %70

70:                                               ; preds = %67, %60
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds i8, ptr %71, i32 1
  store ptr %72, ptr %3, align 8
  %73 = load i8, ptr %71, align 1
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %75, ptr %4, align 8
  store i8 %73, ptr %74, align 1
  br label %39, !llvm.loop !8

76:                                               ; preds = %39
  %77 = load ptr, ptr %4, align 8
  store i8 0, ptr %77, align 1
  br label %78

78:                                               ; preds = %76, %35
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
