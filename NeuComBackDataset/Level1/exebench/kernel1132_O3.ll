; ModuleID = '../benchmarks/fine_grained/exebench/kernel1132.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1132.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmli_context = type { i32, i32, double, double, i32, i32, i32, i64 }

@INT_MIN = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @mmli_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmli_context, ptr %0, i64 0, i32 7
  store i64 0, ptr %2, align 8, !tbaa !5
  store i32 4, ptr %0, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.mmli_context, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !13
  %4 = getelementptr inbounds %struct.mmli_context, ptr %0, i64 0, i32 2
  store <2 x double> <double 2.500000e-01, double 8.750000e-01>, ptr %4, align 8, !tbaa !14
  %5 = load i32, ptr @INT_MIN, align 4, !tbaa !15
  %6 = getelementptr inbounds %struct.mmli_context, ptr %0, i64 0, i32 6
  store i32 %5, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.mmli_context, ptr %0, i64 0, i32 4
  store i32 1, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.mmli_context, ptr %0, i64 0, i32 5
  store i32 1, ptr %8, align 4, !tbaa !18
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
!5 = !{!6, !11, i64 40}
!6 = !{!"mmli_context", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"double", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !7, i64 4}
!14 = !{!10, !10, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!6, !7, i64 32}
!17 = !{!6, !7, i64 24}
!18 = !{!6, !7, i64 28}
