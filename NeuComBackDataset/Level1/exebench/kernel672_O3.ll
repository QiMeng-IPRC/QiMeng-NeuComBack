; ModuleID = '../benchmarks/fine_grained/exebench/kernel672.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel672.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_stat = type { i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @accumulate_cpu_stat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpu_stat, ptr %1, i64 0, i32 6
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.cpu_stat, ptr %0, i64 0, i32 6
  %6 = load i64, ptr %5, align 8, !tbaa !5
  %7 = add nsw i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.cpu_stat, ptr %1, i64 0, i32 4
  %9 = getelementptr inbounds %struct.cpu_stat, ptr %0, i64 0, i32 4
  %10 = load <2 x i64>, ptr %8, align 8, !tbaa !10
  %11 = load <2 x i64>, ptr %9, align 8, !tbaa !10
  %12 = add nsw <2 x i64> %11, %10
  store <2 x i64> %12, ptr %9, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.cpu_stat, ptr %1, i64 0, i32 2
  %14 = getelementptr inbounds %struct.cpu_stat, ptr %0, i64 0, i32 2
  %15 = load <2 x i64>, ptr %13, align 8, !tbaa !10
  %16 = load <2 x i64>, ptr %14, align 8, !tbaa !10
  %17 = add nsw <2 x i64> %16, %15
  store <2 x i64> %17, ptr %14, align 8, !tbaa !10
  %18 = load <2 x i64>, ptr %1, align 8, !tbaa !10
  %19 = load <2 x i64>, ptr %0, align 8, !tbaa !10
  %20 = add nsw <2 x i64> %19, %18
  store <2 x i64> %20, ptr %0, align 8, !tbaa !10
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 48}
!6 = !{!"cpu_stat", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
