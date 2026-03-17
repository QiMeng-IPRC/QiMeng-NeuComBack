; ModuleID = '../benchmarks/fine_grained/exebench/kernel665.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel665.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @timeval_sub(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8, !tbaa !5
  %4 = load i64, ptr %0, align 8, !tbaa !5
  %5 = icmp sgt i64 %3, %4
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !10
  br i1 %5, label %8, label %12

8:                                                ; preds = %2
  %9 = add nsw i64 %7, -1
  store i64 %9, ptr %6, align 8, !tbaa !10
  %10 = add nsw i64 %4, 1000000
  store i64 %10, ptr %0, align 8, !tbaa !5
  %11 = load i64, ptr %1, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i64 [ %10, %8 ], [ %4, %2 ]
  %14 = phi i64 [ %11, %8 ], [ %3, %2 ]
  %15 = phi i64 [ %9, %8 ], [ %7, %2 ]
  %16 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  %19 = sub nsw i64 %15, %17
  store i64 %19, ptr %18, align 8, !tbaa !10
  %20 = sub nsw i64 %13, %14
  store i64 %20, ptr %0, align 8, !tbaa !5
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
!6 = !{!"TYPE_4__", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
