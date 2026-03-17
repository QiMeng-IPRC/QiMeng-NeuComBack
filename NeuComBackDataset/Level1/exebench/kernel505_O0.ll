; ModuleID = '../benchmarks/fine_grained/exebench/kernel505.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel505.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@spars_comp = dso_local global i32 0, align 4
@spars_grd = dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@_pos = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_local() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  store ptr @spars_comp, ptr %1, align 8
  store ptr @spars_grd, ptr %2, align 8
  %3 = load ptr, ptr @_pos, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 0
  store i32 1, ptr %4, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr @_pos, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %8, i32 0, i32 1
  store i32 %7, ptr %9, align 4
  %10 = load ptr, ptr @_pos, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr @_pos, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = add nsw i32 %16, 1
  %18 = load ptr, ptr @_pos, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, ptr %18, i32 0, i32 2
  store i32 %17, ptr %19, align 4
  %20 = load ptr, ptr @_pos, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, ptr %20, i32 0, i32 3
  store i32 1, ptr %21, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr @_pos, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, ptr %25, i32 0, i32 4
  store i32 %24, ptr %26, align 4
  %27 = load ptr, ptr @_pos, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr @_pos, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = add nsw i32 %33, 1
  %35 = load ptr, ptr @_pos, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, ptr %35, i32 0, i32 5
  store i32 %34, ptr %36, align 4
  %37 = load ptr, ptr @_pos, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, ptr %37, i32 0, i32 6
  store i32 1, ptr %38, align 4
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr @_pos, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, ptr %42, i32 0, i32 7
  store i32 %41, ptr %43, align 4
  %44 = load ptr, ptr @_pos, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, ptr %44, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr @_pos, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, ptr %47, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = add nsw i32 %50, 1
  %52 = load ptr, ptr @_pos, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, ptr %52, i32 0, i32 8
  store i32 %51, ptr %53, align 4
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
