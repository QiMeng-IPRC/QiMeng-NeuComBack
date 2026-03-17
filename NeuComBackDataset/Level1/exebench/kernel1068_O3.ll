; ModuleID = '../benchmarks/fine_grained/exebench/kernel1068.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1068.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@screen = dso_local local_unnamed_addr global ptr null, align 8
@save_screen = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8
@rstyle = dso_local local_unnamed_addr global i32 0, align 4
@save_rstyle = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @scr_save_cursor() local_unnamed_addr #0 {
  %1 = load ptr, ptr @screen, align 8, !tbaa !5
  %2 = load <2 x i32>, ptr %1, align 4, !tbaa !9
  store <2 x i32> %2, ptr @save_screen, align 8, !tbaa !9
  %3 = load i32, ptr @rstyle, align 4, !tbaa !9
  store i32 %3, ptr @save_rstyle, align 4, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
