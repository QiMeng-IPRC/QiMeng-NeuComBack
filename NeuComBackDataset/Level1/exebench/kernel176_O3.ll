; ModuleID = '../benchmarks/fine_grained/exebench/kernel176.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel176.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@Screen = dso_local local_unnamed_addr global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @movePaddleDown(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !11
  %7 = add i64 %6, %2
  %8 = add i64 %7, %4
  %9 = load i64, ptr @Screen, align 8, !tbaa !12
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i64 %7, ptr %0, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %1, %11
  ret void
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
!6 = !{!"TYPE_4__", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!13, !7, i64 0}
!13 = !{!"TYPE_5__", !7, i64 0}
