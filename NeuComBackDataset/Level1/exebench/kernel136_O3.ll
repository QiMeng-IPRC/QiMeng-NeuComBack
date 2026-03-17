; ModuleID = '../benchmarks/fine_grained/exebench/kernel136.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel136.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @inc_begin(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load <2 x i32>, ptr %0, align 4, !tbaa !5
  %3 = add nsw <2 x i32> %2, <i32 1, i32 -1>
  store <2 x i32> %3, ptr %0, align 4, !tbaa !5
  %4 = extractelement <2 x i32> %3, i64 0
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, ptr %0, align 4, !tbaa !9
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ 0, %6 ], [ %4, %1 ]
  ret i32 %8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_3__", !6, i64 0, !6, i64 4}
