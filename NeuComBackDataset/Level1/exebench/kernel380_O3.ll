; ModuleID = '../benchmarks/fine_grained/exebench/kernel380.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel380.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @aa_int_swap(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !5
  store i32 %6, ptr %3, align 4, !tbaa !5
  %7 = load <2 x i32>, ptr %1, align 4, !tbaa !10
  %8 = load <2 x i32>, ptr %0, align 4, !tbaa !10
  store <2 x i32> %7, ptr %0, align 4, !tbaa !10
  store i32 %4, ptr %5, align 4, !tbaa !5
  store <2 x i32> %8, ptr %1, align 4, !tbaa !10
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
!5 = !{!6, !7, i64 8}
!6 = !{!"TYPE_4__", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
