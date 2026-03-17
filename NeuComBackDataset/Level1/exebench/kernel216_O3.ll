; ModuleID = '../benchmarks/fine_grained/exebench/kernel216.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel216.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F = dso_local local_unnamed_addr global i32 0, align 4
@C = dso_local local_unnamed_addr global i32 0, align 4
@parrity = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @op_rrc() local_unnamed_addr #0 {
  %1 = load i32, ptr @F, align 4, !tbaa !5
  %2 = load i32, ptr @C, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %4 = and i32 %1, -84
  %5 = or i32 %3, %4
  %6 = ashr i32 %2, 1
  %7 = shl i32 %1, 7
  %8 = and i32 %7, 128
  %9 = or i32 %8, %6
  store i32 %9, ptr @C, align 4, !tbaa !5
  %10 = icmp eq i32 %9, 0
  %11 = or i32 %5, 64
  %12 = select i1 %10, i32 %11, i32 %5
  %13 = and i32 %9, 128
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, -147
  %16 = or i32 %12, 128
  %17 = select i1 %14, i32 %15, i32 %16
  %18 = load ptr, ptr @parrity, align 8, !tbaa !9
  %19 = sext i32 %9 to i64
  %20 = getelementptr inbounds i64, ptr %18, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !11
  %22 = icmp eq i64 %21, 0
  %23 = or i32 %17, 4
  %24 = and i32 %17, -23
  %25 = select i1 %22, i32 %23, i32 %24
  store i32 %25, ptr @F, align 4, !tbaa !5
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
