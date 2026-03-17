; ModuleID = '../benchmarks/fine_grained/exebench/kernel600.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel600.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@BIT6 = dso_local global i32 0, align 4
@BIT15 = dso_local global i32 0, align 4
@ANSELG = dso_local global i32 0, align 4
@BIT11 = dso_local global i32 0, align 4
@ANSELB = dso_local global i32 0, align 4
@TRISG = dso_local global i32 0, align 4
@BIT4 = dso_local global i32 0, align 4
@TRISD = dso_local global i32 0, align 4
@TRISB = dso_local global i32 0, align 4
@LATGbits = dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LATDbits = dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@LATBbits = dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BIT5 = dso_local global i32 0, align 4
@ANSELA = dso_local global i32 0, align 4
@TRISA = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitApp() #0 {
  %1 = load i32, ptr @BIT6, align 4
  %2 = load i32, ptr @BIT15, align 4
  %3 = or i32 %1, %2
  %4 = xor i32 %3, -1
  %5 = load i32, ptr @ANSELG, align 4
  %6 = and i32 %5, %4
  store i32 %6, ptr @ANSELG, align 4
  %7 = load i32, ptr @BIT11, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, ptr @ANSELB, align 4
  %10 = and i32 %9, %8
  store i32 %10, ptr @ANSELB, align 4
  %11 = load i32, ptr @BIT6, align 4
  %12 = load i32, ptr @BIT15, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, ptr @TRISG, align 4
  %16 = and i32 %15, %14
  store i32 %16, ptr @TRISG, align 4
  %17 = load i32, ptr @BIT4, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, ptr @TRISD, align 4
  %20 = and i32 %19, %18
  store i32 %20, ptr @TRISD, align 4
  %21 = load i32, ptr @BIT11, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, ptr @TRISB, align 4
  %24 = and i32 %23, %22
  store i32 %24, ptr @TRISB, align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @LATGbits, i32 0, i32 1), align 8
  store i64 0, ptr @LATDbits, align 8
  store i64 0, ptr @LATBbits, align 8
  store i64 0, ptr @LATGbits, align 8
  %25 = load i32, ptr @BIT5, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, ptr @ANSELA, align 4
  %28 = and i32 %27, %26
  store i32 %28, ptr @ANSELA, align 4
  %29 = load i32, ptr @BIT5, align 4
  %30 = load i32, ptr @TRISA, align 4
  %31 = or i32 %30, %29
  store i32 %31, ptr @TRISA, align 4
  %32 = load i32, ptr @BIT4, align 4
  %33 = load i32, ptr @TRISA, align 4
  %34 = or i32 %33, %32
  store i32 %34, ptr @TRISA, align 4
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
