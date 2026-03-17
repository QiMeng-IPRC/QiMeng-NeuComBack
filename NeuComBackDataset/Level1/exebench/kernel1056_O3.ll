; ModuleID = '../benchmarks/fine_grained/exebench/kernel1056.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1056.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @EVP_PKEY_asn1_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 22
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 22
  store i32 %4, ptr %5, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 20
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 20
  %8 = load <2 x i32>, ptr %6, align 4, !tbaa !10
  store <2 x i32> %8, ptr %7, align 4, !tbaa !10
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 16
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 16
  %11 = load <4 x i32>, ptr %9, align 4, !tbaa !10
  store <4 x i32> %11, ptr %10, align 4, !tbaa !10
  %12 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 12
  %13 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 12
  %14 = load <4 x i32>, ptr %12, align 4, !tbaa !10
  store <4 x i32> %14, ptr %13, align 4, !tbaa !10
  %15 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 8
  %17 = load <4 x i32>, ptr %15, align 4, !tbaa !10
  store <4 x i32> %17, ptr %16, align 4, !tbaa !10
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 4
  %20 = load <4 x i32>, ptr %18, align 4, !tbaa !10
  store <4 x i32> %20, ptr %19, align 4, !tbaa !10
  %21 = load <4 x i32>, ptr %1, align 4, !tbaa !10
  store <4 x i32> %21, ptr %0, align 4, !tbaa !10
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
!5 = !{!6, !7, i64 88}
!6 = !{!"TYPE_4__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
