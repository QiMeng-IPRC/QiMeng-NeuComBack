; ModuleID = '../benchmarks/fine_grained/exebench/kernel1208.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1208.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ar8316_hw_setup = dso_local local_unnamed_addr global i32 0, align 4
@ar8316_hw_global_setup = dso_local local_unnamed_addr global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = dso_local local_unnamed_addr global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = dso_local local_unnamed_addr global i32 0, align 4
@ETHERSWITCH_VLAN_DOUBLE_TAG = dso_local local_unnamed_addr global i32 0, align 4
@AR8X16_MAX_VLANS = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @ar8316_attach(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @ar8316_hw_setup, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.arswitch_softc, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.arswitch_softc, ptr %0, i64 0, i32 1, i32 1
  store i32 %2, ptr %4, align 4, !tbaa !9
  %5 = load i32, ptr @ar8316_hw_global_setup, align 4, !tbaa !5
  store i32 %5, ptr %3, align 4, !tbaa !13
  %6 = load i32, ptr @ETHERSWITCH_VLAN_DOT1Q, align 4, !tbaa !5
  %7 = load i32, ptr @ETHERSWITCH_VLAN_PORT, align 4, !tbaa !5
  %8 = or i32 %7, %6
  %9 = load i32, ptr @ETHERSWITCH_VLAN_DOUBLE_TAG, align 4, !tbaa !5
  %10 = or i32 %8, %9
  store i32 %10, ptr %0, align 4, !tbaa !14
  %11 = load i32, ptr @AR8X16_MAX_VLANS, align 4, !tbaa !5
  %12 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !15
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !6, i64 12}
!10 = !{!"arswitch_softc", !11, i64 0, !12, i64 8}
!11 = !{!"TYPE_4__", !6, i64 0, !6, i64 4}
!12 = !{!"TYPE_3__", !6, i64 0, !6, i64 4}
!13 = !{!10, !6, i64 8}
!14 = !{!10, !6, i64 0}
!15 = !{!10, !6, i64 4}
