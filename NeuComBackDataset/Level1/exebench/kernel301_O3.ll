; ModuleID = '../benchmarks/fine_grained/exebench/kernel301.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel301.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@do_sniff_probe = dso_local local_unnamed_addr global i32 0, align 4
@sniff_funcs = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 4
@do_sniff_handle_timeout = dso_local local_unnamed_addr global i32 0, align 4
@do_sniff_handle_dl = dso_local local_unnamed_addr global i32 0, align 4
@do_sniff_write = dso_local local_unnamed_addr global i32 0, align 4
@do_sniff_free = dso_local local_unnamed_addr global i32 0, align 4
@do_sniff_halt = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @scamper_do_sniff_init() local_unnamed_addr #0 {
  %1 = load i32, ptr @do_sniff_probe, align 4, !tbaa !5
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sniff_funcs, i64 0, i32 5), align 4, !tbaa !9
  %2 = load i32, ptr @do_sniff_handle_timeout, align 4, !tbaa !5
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sniff_funcs, i64 0, i32 4), align 4, !tbaa !11
  %3 = load i32, ptr @do_sniff_handle_dl, align 4, !tbaa !5
  store i32 %3, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sniff_funcs, i64 0, i32 3), align 4, !tbaa !12
  %4 = load i32, ptr @do_sniff_write, align 4, !tbaa !5
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sniff_funcs, i64 0, i32 2), align 4, !tbaa !13
  %5 = load i32, ptr @do_sniff_free, align 4, !tbaa !5
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sniff_funcs, i64 0, i32 1), align 4, !tbaa !14
  %6 = load i32, ptr @do_sniff_halt, align 4, !tbaa !5
  store i32 %6, ptr @sniff_funcs, align 4, !tbaa !15
  ret i32 0
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
!9 = !{!10, !6, i64 20}
!10 = !{!"TYPE_2__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!11 = !{!10, !6, i64 16}
!12 = !{!10, !6, i64 12}
!13 = !{!10, !6, i64 8}
!14 = !{!10, !6, i64 4}
!15 = !{!10, !6, i64 0}
