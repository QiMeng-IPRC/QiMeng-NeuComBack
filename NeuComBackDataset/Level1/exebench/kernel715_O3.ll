; ModuleID = '../benchmarks/fine_grained/exebench/kernel715.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel715.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @v4l2_rect_set_max_size(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = load i64, ptr %1, align 8, !tbaa !5
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i64 %4, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.v4l2_rect, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !10
  %12 = icmp sgt i64 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i64 %11, ptr %8, align 8, !tbaa !10
  br label %14

14:                                               ; preds = %13, %7
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
!6 = !{!"v4l2_rect", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
