; ModuleID = '../benchmarks/fine_grained/exebench/kernel762.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel762.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64 }

@DMA_DIR_PeripheralToMemory = dso_local local_unnamed_addr global i32 0, align 4
@DMA_PeripheralInc_Disable = dso_local local_unnamed_addr global i32 0, align 4
@DMA_MemoryInc_Disable = dso_local local_unnamed_addr global i32 0, align 4
@DMA_PeripheralDataSize_Byte = dso_local local_unnamed_addr global i32 0, align 4
@DMA_MemoryDataSize_Byte = dso_local local_unnamed_addr global i32 0, align 4
@DMA_Mode_Normal = dso_local local_unnamed_addr global i32 0, align 4
@DMA_Priority_Low = dso_local local_unnamed_addr global i32 0, align 4
@DMA_FIFOMode_Disable = dso_local local_unnamed_addr global i32 0, align 4
@DMA_FIFOThreshold_1QuarterFull = dso_local local_unnamed_addr global i32 0, align 4
@DMA_MemoryBurst_Single = dso_local local_unnamed_addr global i32 0, align 4
@DMA_PeripheralBurst_Single = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @DMA_StructInit(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %3 = load i32, ptr @DMA_DIR_PeripheralToMemory, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 11
  store i32 %3, ptr %4, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 10
  store i64 0, ptr %5, align 8, !tbaa !12
  %6 = load i32, ptr @DMA_PeripheralInc_Disable, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 9
  store i32 %6, ptr %7, align 4, !tbaa !13
  %8 = load i32, ptr @DMA_MemoryInc_Disable, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 8
  store i32 %8, ptr %9, align 8, !tbaa !14
  %10 = load i32, ptr @DMA_PeripheralDataSize_Byte, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 7
  store i32 %10, ptr %11, align 4, !tbaa !15
  %12 = load i32, ptr @DMA_MemoryDataSize_Byte, align 4, !tbaa !5
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 6
  store i32 %12, ptr %13, align 8, !tbaa !16
  %14 = load i32, ptr @DMA_Mode_Normal, align 4, !tbaa !5
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  store i32 %14, ptr %15, align 4, !tbaa !17
  %16 = load i32, ptr @DMA_Priority_Low, align 4, !tbaa !5
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  store i32 %16, ptr %17, align 8, !tbaa !18
  %18 = load i32, ptr @DMA_FIFOMode_Disable, align 4, !tbaa !5
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store i32 %18, ptr %19, align 4, !tbaa !19
  %20 = load i32, ptr @DMA_FIFOThreshold_1QuarterFull, align 4, !tbaa !5
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 %20, ptr %21, align 8, !tbaa !20
  %22 = load i32, ptr @DMA_MemoryBurst_Single, align 4, !tbaa !5
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !21
  %24 = load i32, ptr @DMA_PeripheralBurst_Single, align 4, !tbaa !5
  store i32 %24, ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 48}
!10 = !{!"TYPE_3__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !11, i64 40, !6, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !11, i64 40}
!13 = !{!10, !6, i64 36}
!14 = !{!10, !6, i64 32}
!15 = !{!10, !6, i64 28}
!16 = !{!10, !6, i64 24}
!17 = !{!10, !6, i64 20}
!18 = !{!10, !6, i64 16}
!19 = !{!10, !6, i64 12}
!20 = !{!10, !6, i64 8}
!21 = !{!10, !6, i64 4}
!22 = !{!10, !6, i64 0}
