; ModuleID = '../benchmarks/fine_grained/exebench/kernel264.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wfdb_mt = dso_local local_unnamed_addr global i32 0, align 4
@wfdb_mp2 = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @wfdb_setmap2(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  store i32 %0, ptr @wfdb_mt, align 4, !tbaa !5
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 49
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load ptr, ptr @wfdb_mp2, align 8, !tbaa !9
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  store i32 %1, ptr %8, align 4, !tbaa !5
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ %1, %5 ], [ 0, %2 ]
  ret i32 %10
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
