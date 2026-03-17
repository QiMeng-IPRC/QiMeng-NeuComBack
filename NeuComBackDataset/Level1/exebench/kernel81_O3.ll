; ModuleID = '../benchmarks/fine_grained/exebench/kernel81.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel81.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @dxo_fieldannotation(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = load i64, ptr %1, align 8, !tbaa !11
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TYPE_7__, ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = add nsw i64 %9, %4
  store i64 %10, ptr %3, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %7, %2
  %12 = load i64, ptr %0, align 8, !tbaa !14
  %13 = icmp slt i64 %12, %5
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.TYPE_7__, ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = add nsw i64 %16, %12
  store i64 %17, ptr %0, align 8, !tbaa !14
  br label %18

18:                                               ; preds = %11, %14
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
!5 = !{!6, !7, i64 8}
!6 = !{!"TYPE_8__", !7, i64 0, !10, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_6__", !7, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"TYPE_7__", !7, i64 0, !7, i64 8}
!13 = !{!12, !7, i64 8}
!14 = !{!6, !7, i64 0}
