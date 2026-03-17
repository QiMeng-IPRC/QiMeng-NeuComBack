; ModuleID = '../benchmarks/fine_grained/exebench/kernel1425.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1425.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32 }

@IGNBRK = dso_local global i32 0, align 4
@BRKINT = dso_local global i32 0, align 4
@PARMRK = dso_local global i32 0, align 4
@ISTRIP = dso_local global i32 0, align 4
@INLCR = dso_local global i32 0, align 4
@IGNCR = dso_local global i32 0, align 4
@ICRNL = dso_local global i32 0, align 4
@IXON = dso_local global i32 0, align 4
@OPOST = dso_local global i32 0, align 4
@ECHO = dso_local global i32 0, align 4
@ECHONL = dso_local global i32 0, align 4
@ICANON = dso_local global i32 0, align 4
@ISIG = dso_local global i32 0, align 4
@IEXTEN = dso_local global i32 0, align 4
@CSIZE = dso_local global i32 0, align 4
@PARENB = dso_local global i32 0, align 4
@CS8 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfmakeraw(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @IGNBRK, align 4
  %4 = load i32, ptr @BRKINT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, ptr @PARMRK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, ptr @ISTRIP, align 4
  %9 = or i32 %7, %8
  %10 = load i32, ptr @INLCR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, ptr @IGNCR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, ptr @ICRNL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, ptr @IXON, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.termios, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, ptr %20, align 4
  %23 = load i32, ptr @OPOST, align 4
  %24 = xor i32 %23, -1
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.termios, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, ptr %26, align 4
  %29 = load i32, ptr @ECHO, align 4
  %30 = load i32, ptr @ECHONL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, ptr @ICANON, align 4
  %33 = or i32 %31, %32
  %34 = load i32, ptr @ISIG, align 4
  %35 = or i32 %33, %34
  %36 = load i32, ptr @IEXTEN, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.termios, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, ptr %40, align 4
  %43 = load i32, ptr @CSIZE, align 4
  %44 = load i32, ptr @PARENB, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds %struct.termios, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, ptr %48, align 4
  %51 = load i32, ptr @CS8, align 4
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct.termios, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, ptr %53, align 4
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
