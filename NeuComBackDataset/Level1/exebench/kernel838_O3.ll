; ModuleID = '../benchmarks/fine_grained/exebench/kernel838.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel838.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PLAYER = type { i32, i32, i32, i32, i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @readjoy(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %0, 1
  %4 = lshr i32 %0, 1
  %5 = and i32 %4, 1
  %6 = lshr i32 %0, 2
  %7 = and i32 %6, 1
  %8 = lshr i32 %0, 3
  %9 = and i32 %8, 1
  %10 = lshr i32 %0, 4
  %11 = and i32 %10, 1
  %12 = lshr i32 %0, 5
  %13 = and i32 %12, 1
  store i32 %11, ptr %1, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.PLAYER, ptr %1, i64 0, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !11
  %15 = getelementptr inbounds %struct.PLAYER, ptr %1, i64 0, i32 6
  %16 = load i64, ptr %15, align 8, !tbaa !12
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = or i32 %5, %3
  %20 = or i32 %19, %7
  %21 = or i32 %20, %9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18, %2
  %24 = getelementptr inbounds %struct.PLAYER, ptr %1, i64 0, i32 2
  store i32 %7, ptr %24, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.PLAYER, ptr %1, i64 0, i32 3
  store i32 %5, ptr %25, align 4, !tbaa !14
  %26 = getelementptr inbounds %struct.PLAYER, ptr %1, i64 0, i32 4
  store i32 %9, ptr %26, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.PLAYER, ptr %1, i64 0, i32 5
  store i32 %3, ptr %27, align 4, !tbaa !16
  br label %28

28:                                               ; preds = %23, %18
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
!5 = !{!6, !7, i64 0}
!6 = !{!"PLAYER", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !10, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !10, i64 24}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 12}
!15 = !{!6, !7, i64 16}
!16 = !{!6, !7, i64 20}
