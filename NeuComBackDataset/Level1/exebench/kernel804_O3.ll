; ModuleID = '../benchmarks/fine_grained/exebench/kernel804.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel804.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L = dso_local local_unnamed_addr global i32 0, align 4
@F = dso_local local_unnamed_addr global i32 0, align 4
@parrity = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @op_srll() local_unnamed_addr #0 {
  %1 = load i32, ptr @L, align 4, !tbaa !5
  %2 = and i32 %1, 1
  %3 = load i32, ptr @F, align 4
  %4 = and i32 %3, -84
  %5 = or i32 %4, %2
  %6 = ashr i32 %1, 1
  store i32 %6, ptr @L, align 4, !tbaa !5
  %7 = icmp ult i32 %1, 2
  %8 = or i32 %5, 64
  %9 = select i1 %7, i32 %8, i32 %5
  %10 = and i32 %1, 256
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %9, -147
  %13 = or i32 %9, 128
  %14 = select i1 %11, i32 %12, i32 %13
  %15 = load ptr, ptr @parrity, align 8, !tbaa !9
  %16 = sext i32 %6 to i64
  %17 = getelementptr inbounds i64, ptr %15, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !11
  %19 = icmp eq i64 %18, 0
  %20 = or i32 %14, 4
  %21 = and i32 %14, -23
  %22 = select i1 %19, i32 %20, i32 %21
  store i32 %22, ptr @F, align 4, !tbaa !5
  ret i32 8
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
