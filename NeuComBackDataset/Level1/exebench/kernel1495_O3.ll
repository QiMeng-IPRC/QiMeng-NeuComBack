; ModuleID = '../benchmarks/fine_grained/exebench/kernel1495.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1495.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taia = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @taia_sub(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.taia, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.taia, ptr %1, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.taia, ptr %2, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !12
  %11 = sub nsw i64 %8, %10
  %12 = getelementptr inbounds %struct.taia, ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !12
  %13 = load i64, ptr %2, align 8, !tbaa !5
  %14 = sub i64 %4, %13
  store i64 %14, ptr %0, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.taia, ptr %2, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !11
  %17 = sub i64 %6, %16
  %18 = getelementptr inbounds %struct.taia, ptr %0, i64 0, i32 1
  store i64 %17, ptr %18, align 8, !tbaa !11
  %19 = icmp ugt i64 %16, %6
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = add i64 %17, 1000000000
  store i64 %21, ptr %18, align 8, !tbaa !11
  %22 = add i64 %14, -1
  store i64 %22, ptr %0, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i64 [ %22, %20 ], [ %14, %3 ]
  %25 = icmp ugt i64 %24, %4
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = add i64 %24, 1000000000
  store i64 %27, ptr %0, align 8, !tbaa !5
  %28 = add nsw i64 %11, -1
  store i64 %28, ptr %12, align 8, !tbaa !12
  br label %29

29:                                               ; preds = %26, %23
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
!6 = !{!"taia", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_2__", !7, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 16}
