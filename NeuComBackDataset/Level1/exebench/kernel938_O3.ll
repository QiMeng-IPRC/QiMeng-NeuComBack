; ModuleID = '../benchmarks/fine_grained/exebench/kernel938.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel938.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@USART_Clock_Disable = dso_local local_unnamed_addr global i32 0, align 4
@USART_CPOL_Low = dso_local local_unnamed_addr global i32 0, align 4
@USART_CPHA_1Edge = dso_local local_unnamed_addr global i32 0, align 4
@USART_LastBit_Disable = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @USART_ClockStructInit(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @USART_Clock_Disable, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store i32 %2, ptr %3, align 4, !tbaa !9
  %4 = load i32, ptr @USART_CPOL_Low, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 %4, ptr %5, align 4, !tbaa !11
  %6 = load i32, ptr @USART_CPHA_1Edge, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 4, !tbaa !12
  %8 = load i32, ptr @USART_LastBit_Disable, align 4, !tbaa !5
  store i32 %8, ptr %0, align 4, !tbaa !13
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !6, i64 12}
!10 = !{!"TYPE_3__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!11 = !{!10, !6, i64 8}
!12 = !{!10, !6, i64 4}
!13 = !{!10, !6, i64 0}
