; ModuleID = '../benchmarks/fine_grained/exebench/kernel512.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@iError = dso_local local_unnamed_addr global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @SetErrorFunction(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load i64, ptr @iError, align 8, !tbaa !5
  br label %10

6:                                                ; preds = %2
  %7 = load i64, ptr %0, align 8, !tbaa !10
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i64 %1, ptr %0, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %6, %9, %4
  %11 = phi i64 [ %5, %4 ], [ %7, %9 ], [ %7, %6 ]
  ret i64 %11
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_5__", !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"TYPE_4__", !7, i64 0}
