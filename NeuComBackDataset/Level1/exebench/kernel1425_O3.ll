; ModuleID = '../benchmarks/fine_grained/exebench/kernel1425.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1425.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32 }

@IGNBRK = dso_local local_unnamed_addr global i32 0, align 4
@BRKINT = dso_local local_unnamed_addr global i32 0, align 4
@PARMRK = dso_local local_unnamed_addr global i32 0, align 4
@ISTRIP = dso_local local_unnamed_addr global i32 0, align 4
@INLCR = dso_local local_unnamed_addr global i32 0, align 4
@IGNCR = dso_local local_unnamed_addr global i32 0, align 4
@ICRNL = dso_local local_unnamed_addr global i32 0, align 4
@IXON = dso_local local_unnamed_addr global i32 0, align 4
@OPOST = dso_local local_unnamed_addr global i32 0, align 4
@ECHO = dso_local local_unnamed_addr global i32 0, align 4
@ECHONL = dso_local local_unnamed_addr global i32 0, align 4
@ICANON = dso_local local_unnamed_addr global i32 0, align 4
@ISIG = dso_local local_unnamed_addr global i32 0, align 4
@IEXTEN = dso_local local_unnamed_addr global i32 0, align 4
@CSIZE = dso_local local_unnamed_addr global i32 0, align 4
@PARENB = dso_local local_unnamed_addr global i32 0, align 4
@CS8 = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @cfmakeraw(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @IGNBRK, align 4, !tbaa !5
  %3 = load i32, ptr @BRKINT, align 4, !tbaa !5
  %4 = or i32 %3, %2
  %5 = load i32, ptr @PARMRK, align 4, !tbaa !5
  %6 = or i32 %4, %5
  %7 = load i32, ptr @ISTRIP, align 4, !tbaa !5
  %8 = or i32 %6, %7
  %9 = load i32, ptr @INLCR, align 4, !tbaa !5
  %10 = or i32 %8, %9
  %11 = load i32, ptr @IGNCR, align 4, !tbaa !5
  %12 = or i32 %10, %11
  %13 = load i32, ptr @ICRNL, align 4, !tbaa !5
  %14 = or i32 %12, %13
  %15 = load i32, ptr @IXON, align 4, !tbaa !5
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, ptr %0, align 4, !tbaa !9
  %19 = and i32 %18, %17
  store i32 %19, ptr %0, align 4, !tbaa !9
  %20 = load i32, ptr @OPOST, align 4, !tbaa !5
  %21 = xor i32 %20, -1
  %22 = getelementptr inbounds %struct.termios, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = and i32 %23, %21
  store i32 %24, ptr %22, align 4, !tbaa !11
  %25 = load i32, ptr @ECHO, align 4, !tbaa !5
  %26 = load i32, ptr @ECHONL, align 4, !tbaa !5
  %27 = or i32 %26, %25
  %28 = load i32, ptr @ICANON, align 4, !tbaa !5
  %29 = or i32 %27, %28
  %30 = load i32, ptr @ISIG, align 4, !tbaa !5
  %31 = or i32 %29, %30
  %32 = load i32, ptr @IEXTEN, align 4, !tbaa !5
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = getelementptr inbounds %struct.termios, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %37 = and i32 %36, %34
  store i32 %37, ptr %35, align 4, !tbaa !12
  %38 = load i32, ptr @CSIZE, align 4, !tbaa !5
  %39 = load i32, ptr @PARENB, align 4, !tbaa !5
  %40 = or i32 %39, %38
  %41 = xor i32 %40, -1
  %42 = getelementptr inbounds %struct.termios, ptr %0, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !13
  %44 = and i32 %43, %41
  %45 = load i32, ptr @CS8, align 4, !tbaa !5
  %46 = or i32 %45, %44
  store i32 %46, ptr %42, align 4, !tbaa !13
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"termios", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!11 = !{!10, !6, i64 12}
!12 = !{!10, !6, i64 4}
!13 = !{!10, !6, i64 8}
