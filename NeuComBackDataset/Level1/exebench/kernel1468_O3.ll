; ModuleID = '../benchmarks/fine_grained/exebench/kernel1468.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1468.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rl_mark = dso_local local_unnamed_addr global i64 0, align 8
@rl_end = dso_local local_unnamed_addr global i64 0, align 8
@rl_point = dso_local local_unnamed_addr global i64 0, align 8
@rl_line_buffer = dso_local local_unnamed_addr global ptr null, align 8
@the_line = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @_rl_init_line_state() local_unnamed_addr #0 {
  store i64 0, ptr @rl_mark, align 8, !tbaa !5
  store i64 0, ptr @rl_end, align 8, !tbaa !5
  store i64 0, ptr @rl_point, align 8, !tbaa !5
  %1 = load ptr, ptr @rl_line_buffer, align 8, !tbaa !9
  store ptr %1, ptr @the_line, align 8, !tbaa !9
  store i64 0, ptr %1, align 8, !tbaa !5
  ret void
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
