; ModuleID = '../benchmarks/fine_grained/exebench/kernel931.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @qconjugate(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !5
  %4 = sub nsw i32 0, %3
  store i32 %4, ptr %0, align 4, !tbaa !5
  %5 = getelementptr inbounds i32, ptr %1, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = sub nsw i32 0, %6
  %8 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %7, ptr %8, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, ptr %1, i64 2
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = sub nsw i32 0, %10
  %12 = getelementptr inbounds i32, ptr %0, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds i32, ptr %1, i64 3
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, ptr %0, i64 3
  store i32 %14, ptr %15, align 4, !tbaa !5
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
