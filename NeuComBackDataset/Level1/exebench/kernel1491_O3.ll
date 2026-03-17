; ModuleID = '../benchmarks/fine_grained/exebench/kernel1491.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1491.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPU = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cpu_advance_pc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CPU, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !5
  store i32 %3, ptr %0, align 4, !tbaa !10
  %4 = getelementptr inbounds %struct.CPU, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 -1, ptr %4, align 4, !tbaa !11
  br label %10

8:                                                ; preds = %1
  %9 = add nsw i32 %3, 4
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i32 [ %9, %8 ], [ %5, %7 ]
  store i32 %11, ptr %2, align 4
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
!5 = !{!6, !7, i64 4}
!6 = !{!"CPU", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 0}
!11 = !{!6, !7, i64 8}
