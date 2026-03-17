; ModuleID = '../benchmarks/fine_grained/exebench/kernel270.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel270.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PIA0 = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @do_fs_fall() local_unnamed_addr #0 {
  %1 = load i32, ptr @PIA0, align 4, !tbaa !5
  %2 = and i32 %1, 2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  store i32 128, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @PIA0, i64 0, i32 0, i32 1), align 4, !tbaa !11
  %5 = and i32 %1, 1
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @PIA0, i64 0, i32 0, i32 2), align 4, !tbaa !12
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 0}
!6 = !{!"TYPE_4__", !7, i64 0}
!7 = !{!"TYPE_3__", !8, i64 0, !8, i64 4, !8, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!6, !8, i64 4}
!12 = !{!6, !8, i64 8}
