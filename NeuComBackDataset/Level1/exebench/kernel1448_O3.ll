; ModuleID = '../benchmarks/fine_grained/exebench/kernel1448.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1448.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ar9300_comp_hdr_unpack(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load i64, ptr %0, align 8, !tbaa !5
  %8 = getelementptr inbounds i64, ptr %0, i64 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds i64, ptr %0, i64 2
  %11 = load i64, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds i64, ptr %0, i64 3
  %13 = load i64, ptr %12, align 8, !tbaa !5
  %14 = trunc i64 %7 to i32
  %15 = lshr i32 %14, 5
  %16 = and i32 %15, 7
  store i32 %16, ptr %1, align 4, !tbaa !9
  %17 = and i64 %7, 31
  %18 = lshr i64 %9, 2
  %19 = and i64 %18, 32
  %20 = or i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr %2, align 4, !tbaa !9
  %22 = shl i64 %9, 4
  %23 = and i64 %22, 2032
  %24 = lshr i64 %11, 4
  %25 = and i64 %24, 15
  %26 = or i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %3, align 4, !tbaa !9
  %28 = trunc i64 %11 to i32
  %29 = and i32 %28, 15
  store i32 %29, ptr %4, align 4, !tbaa !9
  %30 = trunc i64 %13 to i32
  %31 = and i32 %30, 255
  store i32 %31, ptr %5, align 4, !tbaa !9
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
