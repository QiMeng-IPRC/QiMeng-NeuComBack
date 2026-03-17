; ModuleID = '../benchmarks/fine_grained/exebench/kernel1476.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1476.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VectLen = dso_local local_unnamed_addr global i32 0, align 4
@Lambda = dso_local local_unnamed_addr global i32 0, align 4
@Trace = dso_local local_unnamed_addr global i64 0, align 8
@Cut2 = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@Cut1 = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@SimTol = dso_local local_unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @Set_Default_Parms() local_unnamed_addr #0 {
  %1 = load i32, ptr @VectLen, align 4, !tbaa !5
  %2 = mul nsw i32 %1, 5
  store i32 %2, ptr @Lambda, align 4, !tbaa !5
  store i64 0, ptr @Trace, align 8, !tbaa !9
  store float 0x3F847AE140000000, ptr @Cut2, align 4, !tbaa !11
  store float 0x3F847AE140000000, ptr @Cut1, align 4, !tbaa !11
  store float 5.000000e-01, ptr @SimTol, align 4, !tbaa !11
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
