; ModuleID = '../benchmarks/fine_grained/exebench/kernel305.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @syncfile(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  store i32 0, ptr %0, align 8, !tbaa !11
  store i32 1, ptr %1, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !12
  %15 = sub nsw i64 %12, %14
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !13
  br label %18

18:                                               ; preds = %2, %6, %10
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
!5 = !{!6, !7, i64 16}
!6 = !{!"TYPE_4__", !7, i64 0, !7, i64 4, !10, i64 8, !7, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !7, i64 4}
