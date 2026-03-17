; ModuleID = '../benchmarks/fine_grained/exebench/kernel114.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel114.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_vfile = dso_local local_unnamed_addr global ptr null, align 8
@NUL = dso_local local_unnamed_addr global i64 0, align 8
@msg_silent = dso_local local_unnamed_addr global i64 0, align 8
@msg_row = dso_local local_unnamed_addr global i32 0, align 4
@cmdline_row = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @verbose_leave_scroll() local_unnamed_addr #0 {
  %1 = load ptr, ptr @p_vfile, align 8, !tbaa !5
  %2 = load i64, ptr %1, align 8, !tbaa !9
  %3 = load i64, ptr @NUL, align 8, !tbaa !9
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i64, ptr @msg_silent, align 8, !tbaa !9
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 1)
  %8 = add nsw i64 %7, -1
  store i64 %8, ptr @msg_silent, align 8
  br label %11

9:                                                ; preds = %0
  %10 = load i32, ptr @msg_row, align 4, !tbaa !11
  store i32 %10, ptr @cmdline_row, align 4, !tbaa !11
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
