; ModuleID = '../benchmarks/fine_grained/exebench/kernel65.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel65.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@linebuffer_head = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 4
@screen = dso_local local_unnamed_addr global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @screen_init() local_unnamed_addr #0 {
  %1 = load i32, ptr @linebuffer_head, align 4, !tbaa !5
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @screen, i64 0, i32 1), align 4, !tbaa !10
  store i32 1, ptr @screen, align 4, !tbaa !12
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_4__", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 4}
!11 = !{!"TYPE_3__", !7, i64 0, !7, i64 4}
!12 = !{!11, !7, i64 0}
