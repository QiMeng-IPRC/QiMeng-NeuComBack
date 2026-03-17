; ModuleID = '../benchmarks/fine_grained/exebench/kernel60.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel60.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @f() local_unnamed_addr #0 {
  %1 = load ptr, ptr @a, align 8, !tbaa !5
  %2 = load i32, ptr %1, align 4, !tbaa !9
  %3 = shl nsw i32 %2, 1
  %4 = mul nsw i32 %3, %2
  %5 = or i32 %4, 1
  store i32 %5, ptr %1, align 4, !tbaa !9
  %6 = getelementptr inbounds i32, ptr %1, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !9
  %8 = shl nsw i32 %7, 1
  %9 = mul nsw i32 %8, %7
  %10 = or i32 %9, 1
  store i32 %10, ptr %6, align 4, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
