; ModuleID = '../benchmarks/fine_grained/exebench/kernel783.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel783.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@Cs2Area = dso_local global ptr null, align 8
@CDB_HIRQ_CMOK = dso_local global i32 0, align 4
@CDB_HIRQ_EFLS = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2GetFileSystemScope() #0 {
  %1 = load ptr, ptr @Cs2Area, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i32 0, i32 0
  %3 = load i32, ptr %2, align 8
  %4 = shl i32 %3, 8
  %5 = load ptr, ptr @Cs2Area, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %6, i32 0, i32 0
  store i32 %4, ptr %7, align 8
  %8 = load ptr, ptr @Cs2Area, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = sub nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = load ptr, ptr @Cs2Area, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i32 0, i32 4
  store i64 %12, ptr %15, align 8
  %16 = load ptr, ptr @Cs2Area, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 1
  store i32 256, ptr %18, align 4
  %19 = load ptr, ptr @Cs2Area, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %20, i32 0, i32 2
  store i32 2, ptr %21, align 8
  %22 = load i32, ptr @CDB_HIRQ_CMOK, align 4
  %23 = load i32, ptr @CDB_HIRQ_EFLS, align 4
  %24 = or i32 %22, %23
  %25 = load ptr, ptr @Cs2Area, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, ptr %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, ptr %27, align 4
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
