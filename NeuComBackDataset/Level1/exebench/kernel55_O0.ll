; ModuleID = '../benchmarks/fine_grained/exebench/kernel55.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel55.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOTE_A4 = dso_local global i32 0, align 4
@pitchSonPerdenti = dso_local global ptr null, align 8
@NOTE_F4 = dso_local global i32 0, align 4
@NOTE_D4 = dso_local global i32 0, align 4
@NOTE_G4 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initSonPerdenti() #0 {
  %1 = load i32, ptr @NOTE_A4, align 4
  %2 = load ptr, ptr @pitchSonPerdenti, align 8
  %3 = getelementptr inbounds i32, ptr %2, i64 0
  store i32 %1, ptr %3, align 4
  %4 = load i32, ptr @NOTE_F4, align 4
  %5 = load ptr, ptr @pitchSonPerdenti, align 8
  %6 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %4, ptr %6, align 4
  %7 = load i32, ptr @NOTE_F4, align 4
  %8 = load ptr, ptr @pitchSonPerdenti, align 8
  %9 = getelementptr inbounds i32, ptr %8, i64 2
  store i32 %7, ptr %9, align 4
  %10 = load i32, ptr @NOTE_D4, align 4
  %11 = load ptr, ptr @pitchSonPerdenti, align 8
  %12 = getelementptr inbounds i32, ptr %11, i64 3
  store i32 %10, ptr %12, align 4
  %13 = load i32, ptr @NOTE_F4, align 4
  %14 = load ptr, ptr @pitchSonPerdenti, align 8
  %15 = getelementptr inbounds i32, ptr %14, i64 4
  store i32 %13, ptr %15, align 4
  %16 = load i32, ptr @NOTE_F4, align 4
  %17 = load ptr, ptr @pitchSonPerdenti, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 5
  store i32 %16, ptr %18, align 4
  %19 = load i32, ptr @NOTE_A4, align 4
  %20 = load ptr, ptr @pitchSonPerdenti, align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 6
  store i32 %19, ptr %21, align 4
  %22 = load i32, ptr @NOTE_A4, align 4
  %23 = load ptr, ptr @pitchSonPerdenti, align 8
  %24 = getelementptr inbounds i32, ptr %23, i64 7
  store i32 %22, ptr %24, align 4
  %25 = load i32, ptr @NOTE_A4, align 4
  %26 = load ptr, ptr @pitchSonPerdenti, align 8
  %27 = getelementptr inbounds i32, ptr %26, i64 8
  store i32 %25, ptr %27, align 4
  %28 = load i32, ptr @NOTE_F4, align 4
  %29 = load ptr, ptr @pitchSonPerdenti, align 8
  %30 = getelementptr inbounds i32, ptr %29, i64 9
  store i32 %28, ptr %30, align 4
  %31 = load i32, ptr @NOTE_F4, align 4
  %32 = load ptr, ptr @pitchSonPerdenti, align 8
  %33 = getelementptr inbounds i32, ptr %32, i64 10
  store i32 %31, ptr %33, align 4
  %34 = load i32, ptr @NOTE_D4, align 4
  %35 = load ptr, ptr @pitchSonPerdenti, align 8
  %36 = getelementptr inbounds i32, ptr %35, i64 11
  store i32 %34, ptr %36, align 4
  %37 = load i32, ptr @NOTE_F4, align 4
  %38 = load ptr, ptr @pitchSonPerdenti, align 8
  %39 = getelementptr inbounds i32, ptr %38, i64 12
  store i32 %37, ptr %39, align 4
  %40 = load i32, ptr @NOTE_G4, align 4
  %41 = load ptr, ptr @pitchSonPerdenti, align 8
  %42 = getelementptr inbounds i32, ptr %41, i64 13
  store i32 %40, ptr %42, align 4
  %43 = load i32, ptr @NOTE_F4, align 4
  %44 = load ptr, ptr @pitchSonPerdenti, align 8
  %45 = getelementptr inbounds i32, ptr %44, i64 14
  store i32 %43, ptr %45, align 4
  %46 = load i32, ptr @NOTE_F4, align 4
  %47 = load ptr, ptr @pitchSonPerdenti, align 8
  %48 = getelementptr inbounds i32, ptr %47, i64 15
  store i32 %46, ptr %48, align 4
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
