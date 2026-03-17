; ModuleID = '../benchmarks/fine_grained/exebench/kernel333.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel333.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @generate_shots(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i32 %5, 0
  %8 = select i1 %7, i32 -1, i32 1
  %9 = add nsw i32 %8, %3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 45
  br i1 %13, label %30, label %14

14:                                               ; preds = %6
  %15 = load i32, ptr %1, align 4, !tbaa !9
  %16 = icmp slt i32 %15, %4
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 %18
  store i32 %5, ptr %19, align 4, !tbaa !11
  %20 = load i32, ptr %1, align 4, !tbaa !9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 %21, i32 1
  store i32 %9, ptr %22, align 4, !tbaa !13
  %23 = load i32, ptr %1, align 4, !tbaa !9
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %1, align 4, !tbaa !9
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 %25, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !13
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 %28
  store i8 45, ptr %29, align 1, !tbaa !5
  br label %30

30:                                               ; preds = %14, %17, %6
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
!6 = !{!"TYPE_6__", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"TYPE_5__", !10, i64 0, !10, i64 4}
!13 = !{!12, !10, i64 4}
