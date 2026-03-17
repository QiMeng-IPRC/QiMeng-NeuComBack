; ModuleID = '../benchmarks/fine_grained/exebench/kernel229.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel229.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, float, float, i32, float, i32, float, float, i32, float, float, float, float, i32 }

@MAXLASERRANGE = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@params = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @Init_MbICP_ScanMatching(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, float noundef %5, float noundef %6, i32 noundef %7, float noundef %8, i32 noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, i32 noundef %14) local_unnamed_addr #0 {
  store float %0, ptr @MAXLASERRANGE, align 4, !tbaa !5
  store float %1, ptr @params, align 4, !tbaa !9
  %16 = fmul float %2, %2
  store float %16, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 1), align 4, !tbaa !12
  store float %10, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 2), align 4, !tbaa !13
  store i32 %9, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 3), align 4, !tbaa !14
  store float %3, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 4), align 4, !tbaa !15
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 5), align 4, !tbaa !16
  store float %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 6), align 4, !tbaa !17
  store float %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 7), align 4, !tbaa !18
  store i32 %7, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 8), align 4, !tbaa !19
  store float %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 9), align 4, !tbaa !20
  store float %11, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 10), align 4, !tbaa !21
  store float %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 11), align 4, !tbaa !22
  store float %13, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 12), align 4, !tbaa !23
  store i32 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i64 0, i32 13), align 4, !tbaa !24
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_2__", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 12, !6, i64 16, !11, i64 20, !6, i64 24, !6, i64 28, !11, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !11, i64 52}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !6, i64 4}
!13 = !{!10, !6, i64 8}
!14 = !{!10, !11, i64 12}
!15 = !{!10, !6, i64 16}
!16 = !{!10, !11, i64 20}
!17 = !{!10, !6, i64 24}
!18 = !{!10, !6, i64 28}
!19 = !{!10, !11, i64 32}
!20 = !{!10, !6, i64 36}
!21 = !{!10, !6, i64 40}
!22 = !{!10, !6, i64 44}
!23 = !{!10, !6, i64 48}
!24 = !{!10, !11, i64 52}
