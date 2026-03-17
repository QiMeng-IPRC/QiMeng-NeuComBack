; ModuleID = '../benchmarks/fine_grained/exebench/kernel484.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel484.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@status = dso_local local_unnamed_addr global i32 0, align 4
@pc = dso_local local_unnamed_addr global i32 0, align 4
@oldpc = dso_local local_unnamed_addr global i32 0, align 4
@reladdr = dso_local local_unnamed_addr global i64 0, align 8
@clockticks6502 = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @bvc() local_unnamed_addr #0 {
  %1 = load i32, ptr @status, align 4, !tbaa !5
  %2 = and i32 %1, 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = load i32, ptr @pc, align 4, !tbaa !5
  store i32 %5, ptr @oldpc, align 4, !tbaa !5
  %6 = load i64, ptr @reladdr, align 8, !tbaa !9
  %7 = trunc i64 %6 to i32
  %8 = add i32 %5, %7
  store i32 %8, ptr @pc, align 4, !tbaa !5
  %9 = xor i32 %8, %5
  %10 = and i32 %9, 65280
  %11 = icmp eq i32 %10, 0
  %12 = load i64, ptr @clockticks6502, align 8, !tbaa !9
  %13 = select i1 %11, i64 1, i64 2
  %14 = add nsw i64 %12, %13
  store i64 %14, ptr @clockticks6502, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %4, %0
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
