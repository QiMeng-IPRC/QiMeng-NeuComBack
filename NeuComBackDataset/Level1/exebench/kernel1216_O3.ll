; ModuleID = '../benchmarks/fine_grained/exebench/kernel1216.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1216.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ide_next_sector(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 6
  %3 = load i64, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 4, !tbaa !11
  br label %26

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 8, !tbaa !12
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %0, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  store i32 1, ptr %0, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !14
  %18 = add nsw i64 %17, 1
  store i64 %18, ptr %16, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !15
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  store i64 0, ptr %16, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !16
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !16
  br label %26

26:                                               ; preds = %9, %22, %15, %5
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
!5 = !{!6, !10, i64 32}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !10, i64 32}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 28}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !7, i64 4}
!14 = !{!6, !10, i64 8}
!15 = !{!6, !10, i64 16}
!16 = !{!6, !7, i64 24}
