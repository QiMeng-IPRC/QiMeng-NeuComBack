; ModuleID = '../benchmarks/fine_grained/exebench/kernel786.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel786.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tptimeout = dso_local local_unnamed_addr global i64 0, align 8
@outofband = dso_local local_unnamed_addr global i64 0, align 8
@op_fetchintrrpt = dso_local local_unnamed_addr global i32 0, align 4
@xfer_table = dso_local local_unnamed_addr global ptr null, align 8
@xf_linefetch = dso_local local_unnamed_addr global i64 0, align 8
@op_startintrrpt = dso_local local_unnamed_addr global i32 0, align 4
@xf_linestart = dso_local local_unnamed_addr global i64 0, align 8
@xf_zbfetch = dso_local local_unnamed_addr global i64 0, align 8
@xf_zbstart = dso_local local_unnamed_addr global i64 0, align 8
@xf_forchk1 = dso_local local_unnamed_addr global i64 0, align 8
@op_forintrrpt = dso_local local_unnamed_addr global i32 0, align 4
@xf_forloop = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @tptimeout_set(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @tptimeout, align 8, !tbaa !5
  %3 = load i64, ptr @outofband, align 8, !tbaa !5
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @op_fetchintrrpt, align 4, !tbaa !9
  %7 = load ptr, ptr @xfer_table, align 8, !tbaa !11
  %8 = load i64, ptr @xf_linefetch, align 8, !tbaa !5
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  store i32 %6, ptr %9, align 4, !tbaa !9
  %10 = load i32, ptr @op_startintrrpt, align 4, !tbaa !9
  %11 = load i64, ptr @xf_linestart, align 8, !tbaa !5
  %12 = getelementptr inbounds i32, ptr %7, i64 %11
  store i32 %10, ptr %12, align 4, !tbaa !9
  %13 = load i32, ptr @op_fetchintrrpt, align 4, !tbaa !9
  %14 = load i64, ptr @xf_zbfetch, align 8, !tbaa !5
  %15 = getelementptr inbounds i32, ptr %7, i64 %14
  store i32 %13, ptr %15, align 4, !tbaa !9
  %16 = load i32, ptr @op_startintrrpt, align 4, !tbaa !9
  %17 = load i64, ptr @xf_zbstart, align 8, !tbaa !5
  %18 = getelementptr inbounds i32, ptr %7, i64 %17
  store i32 %16, ptr %18, align 4, !tbaa !9
  %19 = load i32, ptr @op_startintrrpt, align 4, !tbaa !9
  %20 = load i64, ptr @xf_forchk1, align 8, !tbaa !5
  %21 = getelementptr inbounds i32, ptr %7, i64 %20
  store i32 %19, ptr %21, align 4, !tbaa !9
  %22 = load i32, ptr @op_forintrrpt, align 4, !tbaa !9
  %23 = load i64, ptr @xf_forloop, align 8, !tbaa !5
  %24 = getelementptr inbounds i32, ptr %7, i64 %23
  store i32 %22, ptr %24, align 4, !tbaa !9
  store i64 %2, ptr @outofband, align 8, !tbaa !5
  br label %25

25:                                               ; preds = %5, %1
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
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
