; ModuleID = '../benchmarks/fine_grained/exebench/kernel979.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel979.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @multiply(i64 %0, i64 %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = trunc i64 %0 to i32
  %5 = lshr i64 %0, 32
  %6 = trunc i64 %5 to i32
  %7 = trunc i64 %1 to i32
  %8 = lshr i64 %1, 32
  %9 = trunc i64 %8 to i32
  %10 = mul nsw i32 %7, %4
  %11 = mul nsw i32 %9, %6
  %12 = sub nsw i32 %10, %11
  store i32 %12, ptr %2, align 4, !tbaa !5
  %13 = mul nsw i32 %9, %4
  %14 = mul nsw i32 %6, %7
  %15 = add nsw i32 %13, %14
  %16 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !10
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
!6 = !{!"TYPE_5__", !7, i64 0, !7, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
