; ModuleID = '../benchmarks/fine_grained/exebench/kernel762.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel762.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64 }

@DMA_DIR_PeripheralToMemory = dso_local global i32 0, align 4
@DMA_PeripheralInc_Disable = dso_local global i32 0, align 4
@DMA_MemoryInc_Disable = dso_local global i32 0, align 4
@DMA_PeripheralDataSize_Byte = dso_local global i32 0, align 4
@DMA_MemoryDataSize_Byte = dso_local global i32 0, align 4
@DMA_Mode_Normal = dso_local global i32 0, align 4
@DMA_Priority_Low = dso_local global i32 0, align 4
@DMA_FIFOMode_Disable = dso_local global i32 0, align 4
@DMA_FIFOThreshold_1QuarterFull = dso_local global i32 0, align 4
@DMA_MemoryBurst_Single = dso_local global i32 0, align 4
@DMA_PeripheralBurst_Single = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMA_StructInit(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %3, i32 0, i32 14
  store i64 0, ptr %4, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 13
  store i64 0, ptr %6, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %7, i32 0, i32 12
  store i64 0, ptr %8, align 8
  %9 = load i32, ptr @DMA_DIR_PeripheralToMemory, align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %10, i32 0, i32 11
  store i32 %9, ptr %11, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %12, i32 0, i32 10
  store i64 0, ptr %13, align 8
  %14 = load i32, ptr @DMA_PeripheralInc_Disable, align 4
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %15, i32 0, i32 9
  store i32 %14, ptr %16, align 4
  %17 = load i32, ptr @DMA_MemoryInc_Disable, align 4
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %18, i32 0, i32 8
  store i32 %17, ptr %19, align 8
  %20 = load i32, ptr @DMA_PeripheralDataSize_Byte, align 4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, ptr %21, i32 0, i32 7
  store i32 %20, ptr %22, align 4
  %23 = load i32, ptr @DMA_MemoryDataSize_Byte, align 4
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, ptr %24, i32 0, i32 6
  store i32 %23, ptr %25, align 8
  %26 = load i32, ptr @DMA_Mode_Normal, align 4
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, ptr %27, i32 0, i32 5
  store i32 %26, ptr %28, align 4
  %29 = load i32, ptr @DMA_Priority_Low, align 4
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, ptr %30, i32 0, i32 4
  store i32 %29, ptr %31, align 8
  %32 = load i32, ptr @DMA_FIFOMode_Disable, align 4
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, ptr %33, i32 0, i32 3
  store i32 %32, ptr %34, align 4
  %35 = load i32, ptr @DMA_FIFOThreshold_1QuarterFull, align 4
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, ptr %36, i32 0, i32 2
  store i32 %35, ptr %37, align 8
  %38 = load i32, ptr @DMA_MemoryBurst_Single, align 4
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, ptr %39, i32 0, i32 1
  store i32 %38, ptr %40, align 4
  %41 = load i32, ptr @DMA_PeripheralBurst_Single, align 4
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, ptr %42, i32 0, i32 0
  store i32 %41, ptr %43, align 8
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
