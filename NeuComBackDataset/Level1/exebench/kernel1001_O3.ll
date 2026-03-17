; ModuleID = '../benchmarks/fine_grained/exebench/kernel1001.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1001.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@mode_info = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @get_color_shift(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @mode_info, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4, !tbaa !9
  store i32 %7, ptr %0, align 4, !tbaa !12
  %8 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !13
  store i32 %9, ptr %1, align 4, !tbaa !12
  %10 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !14
  store i32 %11, ptr %2, align 4, !tbaa !12
  br label %12

12:                                               ; preds = %3, %6
  %13 = phi i32 [ 0, %6 ], [ -1, %3 ]
  ret i32 %13
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_2__", !11, i64 0, !11, i64 4, !11, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!10, !11, i64 4}
!14 = !{!10, !11, i64 8}
