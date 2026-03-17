; ModuleID = '../benchmarks/fine_grained/exebench/kernel1369.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1369.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @vbench_predict_8x8c_dc_128_c(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i32 -2139062144, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds i32, ptr %0, i64 4
  store i32 -2139062144, ptr %2, align 4, !tbaa !5
  %3 = getelementptr inbounds i32, ptr %0, i64 32
  store i32 -2139062144, ptr %3, align 4, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %0, i64 36
  store i32 -2139062144, ptr %4, align 4, !tbaa !5
  %5 = getelementptr inbounds i32, ptr %0, i64 64
  store i32 -2139062144, ptr %5, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %0, i64 68
  store i32 -2139062144, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds i32, ptr %0, i64 96
  store i32 -2139062144, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds i32, ptr %0, i64 100
  store i32 -2139062144, ptr %8, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, ptr %0, i64 128
  store i32 -2139062144, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds i32, ptr %0, i64 132
  store i32 -2139062144, ptr %10, align 4, !tbaa !5
  %11 = getelementptr inbounds i32, ptr %0, i64 160
  store i32 -2139062144, ptr %11, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, ptr %0, i64 164
  store i32 -2139062144, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds i32, ptr %0, i64 192
  store i32 -2139062144, ptr %13, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, ptr %0, i64 196
  store i32 -2139062144, ptr %14, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, ptr %0, i64 224
  store i32 -2139062144, ptr %15, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, ptr %0, i64 228
  store i32 -2139062144, ptr %16, align 4, !tbaa !5
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
!6 = !{!"TYPE_2__", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
