; ModuleID = '../benchmarks/fine_grained/exebench/kernel1553.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1553.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EF_TALK = dso_local local_unnamed_addr global i32 0, align 4
@EF_FIRING = dso_local local_unnamed_addr global i32 0, align 4
@BUTTON_ATTACK = dso_local local_unnamed_addr global i32 0, align 4
@BUTTON_USE_HOLDABLE = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClientIntermissionThink(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @EF_TALK, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !9
  %5 = load i32, ptr @EF_FIRING, align 4, !tbaa !5
  %6 = or i32 %2, %5
  %7 = xor i32 %6, -1
  %8 = and i32 %4, %7
  store i32 %8, ptr %3, align 4, !tbaa !9
  %9 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !14
  store i32 %10, ptr %0, align 4, !tbaa !15
  %11 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !16
  store i32 %12, ptr %9, align 4, !tbaa !14
  %13 = load i32, ptr @BUTTON_ATTACK, align 4, !tbaa !5
  %14 = load i32, ptr @BUTTON_USE_HOLDABLE, align 4, !tbaa !5
  %15 = or i32 %14, %13
  %16 = xor i32 %10, -1
  %17 = and i32 %15, %16
  %18 = and i32 %17, %12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 2
  store i32 1, ptr %21, align 4, !tbaa !17
  br label %22

22:                                               ; preds = %20, %1
  ret void
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
!9 = !{!10, !6, i64 16}
!10 = !{!"TYPE_9__", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 12, !13, i64 16}
!11 = !{!"TYPE_6__", !12, i64 0}
!12 = !{!"TYPE_8__", !6, i64 0}
!13 = !{!"TYPE_7__", !6, i64 0}
!14 = !{!10, !6, i64 4}
!15 = !{!10, !6, i64 0}
!16 = !{!10, !6, i64 12}
!17 = !{!10, !6, i64 8}
