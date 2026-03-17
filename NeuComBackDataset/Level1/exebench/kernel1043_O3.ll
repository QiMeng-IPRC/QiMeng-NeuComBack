; ModuleID = '../benchmarks/fine_grained/exebench/kernel1043.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1043.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W_TRUE = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @wind_to_uint32(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i32, ptr %0, i64 3
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = getelementptr inbounds i32, ptr %0, i64 2
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = shl i32 %4, 16
  %8 = shl i32 %6, 8
  %9 = add i32 %7, %8
  %10 = getelementptr inbounds i32, ptr %0, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = add nsw i32 %11, %9
  %13 = shl nsw i32 %12, 8
  %14 = load i32, ptr %0, align 4, !tbaa !5
  %15 = add nsw i32 %14, %13
  store i32 %15, ptr %1, align 4, !tbaa !5
  %16 = load i32, ptr @W_TRUE, align 4, !tbaa !5
  ret i32 %16
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
