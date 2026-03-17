; ModuleID = '../benchmarks/fine_grained/exebench/kernel391.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel391.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abuf = type { i32, i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @abuf_rdiscard(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !5
  %4 = sub nsw i32 %3, %1
  store i32 %4, ptr %0, align 8, !tbaa !5
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.abuf, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !11
  %8 = add nsw i64 %7, %5
  store i64 %8, ptr %6, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.abuf, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !12
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = sub nsw i64 %8, %10
  store i64 %13, ptr %6, align 8, !tbaa !11
  br label %14

14:                                               ; preds = %12, %2
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
!6 = !{!"abuf", !7, i64 0, !10, i64 8, !10, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !10, i64 16}
