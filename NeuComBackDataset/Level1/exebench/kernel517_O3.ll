; ModuleID = '../benchmarks/fine_grained/exebench/kernel517.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel517.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @baswap(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 5
  %4 = load i8, ptr %3, align 1, !tbaa !5
  store i8 %4, ptr %0, align 1, !tbaa !5
  %5 = getelementptr inbounds i8, ptr %1, i64 4
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !5
  %8 = getelementptr inbounds i8, ptr %1, i64 3
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %9, ptr %10, align 1, !tbaa !5
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !5
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %15, ptr %16, align 1, !tbaa !5
  %17 = load i8, ptr %1, align 1, !tbaa !5
  %18 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
