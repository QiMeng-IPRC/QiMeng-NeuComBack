; ModuleID = '../benchmarks/fine_grained/exebench/kernel886.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel886.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @filter5(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4, !tbaa !5
  %5 = load i32, ptr %2, align 4, !tbaa !5
  store i32 %4, ptr %2, align 4, !tbaa !5
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %7 = getelementptr inbounds i32, ptr %2, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !5
  store i32 %6, ptr %7, align 4, !tbaa !5
  %9 = add nsw i32 %8, %5
  %10 = sitofp i32 %9 to float
  %11 = fmul float %10, 5.000000e-01
  %12 = fptosi float %11 to i32
  store i32 %12, ptr %0, align 4, !tbaa !5
  %13 = sub nsw i32 %5, %8
  %14 = sitofp i32 %13 to float
  %15 = fmul float %14, 5.000000e-01
  %16 = fptosi float %15 to i32
  store i32 %16, ptr %1, align 4, !tbaa !5
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
