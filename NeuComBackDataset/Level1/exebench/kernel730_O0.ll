; ModuleID = '../benchmarks/fine_grained/exebench/kernel730.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel730.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@al_reg = dso_local global i8 0, align 1
@bh_reg = dso_local global i8 0, align 1
@ax_reg = dso_local global i8 0, align 1
@di_reg = dso_local global i8 0, align 1
@eax_reg = dso_local global i8 0, align 1
@edi_reg = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @indep_regnum(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = load i8, ptr @al_reg, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp sge i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i8, ptr %3, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, ptr @bh_reg, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sle i32 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, ptr @al_reg, align 1
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %17, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %2, align 1
  br label %61

22:                                               ; preds = %9, %1
  %23 = load i8, ptr %3, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, ptr @ax_reg, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i8, ptr %3, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, ptr @di_reg, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sle i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i8, ptr %3, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, ptr @ax_reg, align 1
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %36, %38
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %2, align 1
  br label %61

41:                                               ; preds = %28, %22
  %42 = load i8, ptr %3, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, ptr @eax_reg, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sge i32 %43, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i8, ptr %3, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, ptr @edi_reg, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sle i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i8, ptr %3, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, ptr @eax_reg, align 1
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 %55, %57
  %59 = trunc i32 %58 to i8
  store i8 %59, ptr %2, align 1
  br label %61

60:                                               ; preds = %47, %41
  store i8 -1, ptr %2, align 1
  br label %61

61:                                               ; preds = %60, %53, %34, %15
  %62 = load i8, ptr %2, align 1
  ret i8 %62
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
