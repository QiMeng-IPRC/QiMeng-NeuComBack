; ModuleID = '../benchmarks/fine_grained/exebench/kernel1536.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1536.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }

@SD_DMA_TXBuffer = dso_local global i32 0, align 4
@DMA2CNT = dso_local global i64 0, align 8
@DMA2STA = dso_local global i32 0, align 4
@DMA2CONbits = dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@DMA3CONbits = dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@DMA3CNT = dso_local global i64 0, align 8
@DMA3STA = dso_local global i64 0, align 8
@DMA2REQbits = dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SD_DMA_ReceiveBlock(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 255, ptr @SD_DMA_TXBuffer, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, ptr %5, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = sub nsw i64 %7, 1
  store i64 %8, ptr @DMA2CNT, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr @DMA2STA, align 4
  store i32 1, ptr @DMA2CONbits, align 4
  store i32 1, ptr getelementptr inbounds (%struct.TYPE_12__, ptr @DMA2CONbits, i32 0, i32 1), align 4
  store i32 0, ptr @DMA3CONbits, align 4
  store i32 1, ptr getelementptr inbounds (%struct.TYPE_10__, ptr @DMA3CONbits, i32 0, i32 1), align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, ptr %12, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = sub nsw i64 %14, 1
  store i64 %15, ptr @DMA3CNT, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, ptr %16, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, ptr %19, i32 0, i32 0
  %21 = load i64, ptr %20, align 8
  %22 = add nsw i64 %18, %21
  store i64 %22, ptr @DMA3STA, align 8
  store i32 1, ptr getelementptr inbounds (%struct.TYPE_12__, ptr @DMA2CONbits, i32 0, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.TYPE_10__, ptr @DMA3CONbits, i32 0, i32 2), align 4
  store i32 1, ptr @DMA2REQbits, align 4
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
