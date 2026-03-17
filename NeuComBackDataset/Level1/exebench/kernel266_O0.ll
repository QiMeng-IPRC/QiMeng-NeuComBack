; ModuleID = '../benchmarks/fine_grained/exebench/kernel266.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel266.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VME_SOURCE_BASE = dso_local global i32 0, align 4
@VME_MAX_SOURCES = dso_local global i32 0, align 4
@free_vme_vec_bitmap = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atari_unregister_vme_int(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr @VME_SOURCE_BASE, align 4
  %5 = icmp uge i32 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr @VME_SOURCE_BASE, align 4
  %9 = load i32, ptr @VME_MAX_SOURCES, align 4
  %10 = add i32 %8, %9
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load i32, ptr @VME_SOURCE_BASE, align 4
  %14 = load i32, ptr %2, align 4
  %15 = sub i32 %14, %13
  store i32 %15, ptr %2, align 4
  %16 = load i32, ptr %2, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load i32, ptr @free_vme_vec_bitmap, align 4
  %20 = and i32 %19, %18
  store i32 %20, ptr @free_vme_vec_bitmap, align 4
  br label %21

21:                                               ; preds = %12, %6, %1
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
