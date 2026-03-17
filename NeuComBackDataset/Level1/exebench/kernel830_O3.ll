; ModuleID = '../benchmarks/fine_grained/exebench/kernel830.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel830.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conv = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.aparams = type { i32, i32, i64, i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @dec_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !5
  store i32 %4, ptr %0, align 4, !tbaa !11
  %5 = getelementptr inbounds %struct.conv, ptr %0, i64 0, i32 1
  store i32 %2, ptr %5, align 4, !tbaa !13
  %6 = getelementptr inbounds %struct.aparams, ptr %1, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !14
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = shl nsw i32 %4, 3
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.aparams, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !15
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %13, %11 ], [ %10, %9 ]
  %16 = sub nsw i32 32, %15
  %17 = getelementptr inbounds %struct.conv, ptr %0, i64 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.aparams, ptr %1, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !16
  %20 = icmp eq i64 %19, 0
  %21 = lshr i32 -2147483648, %16
  %22 = select i1 %20, i32 0, i32 %21
  %23 = getelementptr inbounds %struct.conv, ptr %0, i64 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.aparams, ptr %1, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !17
  %26 = icmp eq i64 %25, 0
  %27 = add nsw i32 %4, -1
  %28 = shl nsw i32 %4, 1
  %29 = select i1 %26, i32 0, i32 %27
  %30 = select i1 %26, i32 1, i32 -1
  %31 = select i1 %26, i32 0, i32 %28
  %32 = getelementptr inbounds %struct.conv, ptr %0, i64 0, i32 4
  store i32 %29, ptr %32, align 4
  %33 = getelementptr inbounds %struct.conv, ptr %0, i64 0, i32 5
  store i32 %30, ptr %33, align 4
  %34 = getelementptr inbounds %struct.conv, ptr %0, i64 0, i32 6
  store i32 %31, ptr %34, align 4
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
!6 = !{!"aparams", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"conv", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!13 = !{!12, !7, i64 4}
!14 = !{!6, !10, i64 24}
!15 = !{!6, !7, i64 4}
!16 = !{!6, !10, i64 16}
!17 = !{!6, !10, i64 8}
