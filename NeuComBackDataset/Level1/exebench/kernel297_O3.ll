; ModuleID = '../benchmarks/fine_grained/exebench/kernel297.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel297.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InputBuf = dso_local local_unnamed_addr global ptr null, align 8
@Cursor = dso_local local_unnamed_addr global ptr null, align 8
@LastChar = dso_local local_unnamed_addr global ptr null, align 8
@INBUFSIZE = dso_local local_unnamed_addr global i32 0, align 4
@InputLim = dso_local local_unnamed_addr global ptr null, align 8
@Mark = dso_local local_unnamed_addr global ptr null, align 8
@MarkIsSet = dso_local local_unnamed_addr global i64 0, align 8
@MetaNext = dso_local local_unnamed_addr global i64 0, align 8
@CcKeyMap = dso_local local_unnamed_addr global i32 0, align 4
@CurrentKeyMap = dso_local local_unnamed_addr global i32 0, align 4
@AltKeyMap = dso_local local_unnamed_addr global i64 0, align 8
@Hist_num = dso_local local_unnamed_addr global i64 0, align 8
@DoingArg = dso_local local_unnamed_addr global i64 0, align 8
@Argument = dso_local local_unnamed_addr global i32 0, align 4
@F_UNASSIGNED = dso_local local_unnamed_addr global i32 0, align 4
@LastCmd = dso_local local_unnamed_addr global i32 0, align 4
@IncMatchLen = dso_local local_unnamed_addr global i64 0, align 8
@MacroLvl = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ResetInLine(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @InputBuf, align 8, !tbaa !5
  store ptr %2, ptr @Cursor, align 8, !tbaa !5
  store ptr %2, ptr @LastChar, align 8, !tbaa !5
  %3 = load i32, ptr @INBUFSIZE, align 4, !tbaa !9
  %4 = add nsw i32 %3, -2
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  store ptr %6, ptr @InputLim, align 8, !tbaa !5
  store ptr %2, ptr @Mark, align 8, !tbaa !5
  store i64 0, ptr @MarkIsSet, align 8, !tbaa !11
  store i64 0, ptr @MetaNext, align 8, !tbaa !11
  %7 = load i32, ptr @CcKeyMap, align 4, !tbaa !9
  store i32 %7, ptr @CurrentKeyMap, align 4, !tbaa !9
  store i64 0, ptr @AltKeyMap, align 8, !tbaa !11
  store i64 0, ptr @Hist_num, align 8, !tbaa !11
  store i64 0, ptr @DoingArg, align 8, !tbaa !11
  store i32 1, ptr @Argument, align 4, !tbaa !9
  %8 = load i32, ptr @F_UNASSIGNED, align 4, !tbaa !9
  store i32 %8, ptr @LastCmd, align 4, !tbaa !9
  store i64 0, ptr @IncMatchLen, align 8, !tbaa !11
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, ptr @MacroLvl, align 4, !tbaa !9
  br label %11

11:                                               ; preds = %10, %1
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
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
