; ModuleID = '../benchmarks/fine_grained/exebench/kernel994.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel994.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @matrix4f_transpose(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 11
  store i32 %3, ptr %4, align 4, !tbaa !10
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 9
  store i32 %6, ptr %7, align 4, !tbaa !12
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 7
  store i32 %9, ptr %10, align 4, !tbaa !14
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  store i32 %12, ptr %13, align 4, !tbaa !16
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store i32 %15, ptr %16, align 4, !tbaa !18
  %17 = load i32, ptr %0, align 4, !tbaa !19
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !20
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
!5 = !{!6, !7, i64 40}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 44}
!11 = !{!6, !7, i64 32}
!12 = !{!6, !7, i64 36}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 28}
!15 = !{!6, !7, i64 16}
!16 = !{!6, !7, i64 20}
!17 = !{!6, !7, i64 8}
!18 = !{!6, !7, i64 12}
!19 = !{!6, !7, i64 0}
!20 = !{!6, !7, i64 4}
