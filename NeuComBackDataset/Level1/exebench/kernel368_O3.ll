; ModuleID = '../benchmarks/fine_grained/exebench/kernel368.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel368.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@kb_backlight_config = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@BREATHING_HALT_OFF = dso_local local_unnamed_addr global i32 0, align 4
@breathing_halt = dso_local local_unnamed_addr global i32 0, align 4
@BREATHING_HALT_ON = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @breathing_self_disable() local_unnamed_addr #0 {
  %1 = load i64, ptr @kb_backlight_config, align 8, !tbaa !5
  %2 = icmp eq i64 %1, 0
  %3 = load i32, ptr @BREATHING_HALT_OFF, align 4
  %4 = load i32, ptr @BREATHING_HALT_ON, align 4
  %5 = select i1 %2, i32 %3, i32 %4
  store i32 %5, ptr @breathing_halt, align 4, !tbaa !10
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
