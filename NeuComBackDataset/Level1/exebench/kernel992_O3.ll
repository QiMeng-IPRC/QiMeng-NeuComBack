; ModuleID = '../benchmarks/fine_grained/exebench/kernel992.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel992.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curtransfersize = dso_local local_unnamed_addr global i32 0, align 4
@gfree = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @rtransfer_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @curtransfersize, align 4, !tbaa !5
  %3 = add nsw i32 %2, -1
  store i32 %3, ptr @curtransfersize, align 4, !tbaa !5
  %4 = load i32, ptr %0, align 4, !tbaa !9
  %5 = and i32 %4, -2
  store i32 %5, ptr %0, align 4, !tbaa !9
  %6 = load ptr, ptr @gfree, align 8, !tbaa !11
  %7 = icmp ugt ptr %6, %0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store ptr %0, ptr @gfree, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"TYPE_4__", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
