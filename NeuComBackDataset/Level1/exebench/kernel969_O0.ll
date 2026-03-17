; ModuleID = '../benchmarks/fine_grained/exebench/kernel969.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel969.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_codepoint_to_utf8(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %9, 128
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  store i32 1, ptr %7, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4
  %14 = icmp slt i32 %13, 2048
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 192, ptr %6, align 4
  store i32 2, ptr %7, align 4
  br label %37

16:                                               ; preds = %12
  %17 = load i32, ptr %4, align 4
  %18 = icmp slt i32 %17, 65536
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 224, ptr %6, align 4
  store i32 3, ptr %7, align 4
  br label %36

20:                                               ; preds = %16
  %21 = load i32, ptr %4, align 4
  %22 = icmp slt i32 %21, 2097152
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 240, ptr %6, align 4
  store i32 4, ptr %7, align 4
  br label %35

24:                                               ; preds = %20
  %25 = load i32, ptr %4, align 4
  %26 = icmp slt i32 %25, 67108864
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 248, ptr %6, align 4
  store i32 5, ptr %7, align 4
  br label %34

28:                                               ; preds = %24
  %29 = load i32, ptr %4, align 4
  %30 = icmp ult i32 %29, -2147483648
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 252, ptr %6, align 4
  store i32 6, ptr %7, align 4
  br label %33

32:                                               ; preds = %28
  store i32 -1, ptr %3, align 4
  br label %70

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %19
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37, %11
  %39 = load ptr, ptr %5, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load i32, ptr %7, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, ptr %8, align 4
  br label %44

44:                                               ; preds = %58, %41
  %45 = load i32, ptr %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, ptr %4, align 4
  %49 = and i32 %48, 63
  %50 = or i32 %49, 128
  %51 = trunc i32 %50 to i8
  %52 = load ptr, ptr %5, align 8
  %53 = load i32, ptr %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %52, i64 %54
  store i8 %51, ptr %55, align 1
  %56 = load i32, ptr %4, align 4
  %57 = ashr i32 %56, 6
  store i32 %57, ptr %4, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, ptr %8, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %8, align 4
  br label %44, !llvm.loop !6

61:                                               ; preds = %44
  %62 = load i32, ptr %4, align 4
  %63 = load i32, ptr %6, align 4
  %64 = or i32 %62, %63
  %65 = trunc i32 %64 to i8
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds i8, ptr %66, i64 0
  store i8 %65, ptr %67, align 1
  br label %68

68:                                               ; preds = %61, %38
  %69 = load i32, ptr %7, align 4
  store i32 %69, ptr %3, align 4
  br label %70

70:                                               ; preds = %68, %32
  %71 = load i32, ptr %3, align 4
  ret i32 %71
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
