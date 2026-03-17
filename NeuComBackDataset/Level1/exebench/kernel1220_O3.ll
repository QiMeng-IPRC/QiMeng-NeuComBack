; ModuleID = '../benchmarks/fine_grained/exebench/kernel1220.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1220.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_struct = type { i32, double, i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @randominit(ptr nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  store i32 1073741823, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.rand_struct, ptr %0, i64 0, i32 1
  store double 0x41CFFFFFFF800000, ptr %4, align 8, !tbaa !12
  %5 = urem i64 %1, 1073741823
  %6 = getelementptr inbounds %struct.rand_struct, ptr %0, i64 0, i32 2
  store i64 %5, ptr %6, align 8, !tbaa !13
  %7 = urem i64 %2, 1073741823
  %8 = getelementptr inbounds %struct.rand_struct, ptr %0, i64 0, i32 3
  store i64 %7, ptr %8, align 8, !tbaa !14
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"rand_struct", !7, i64 0, !10, i64 8, !11, i64 16, !11, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"double", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !11, i64 16}
!14 = !{!6, !11, i64 24}
