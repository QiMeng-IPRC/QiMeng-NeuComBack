; ModuleID = '../benchmarks/fine_grained/exebench/kernel125.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel125.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F = dso_local local_unnamed_addr global i32 0, align 4
@ram = dso_local local_unnamed_addr global ptr null, align 8
@IY = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @op_tb3iyd(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @F, align 4, !tbaa !5
  %3 = and i32 %2, -147
  %4 = or i32 %3, 16
  store i32 %4, ptr @F, align 4, !tbaa !5
  %5 = load ptr, ptr @ram, align 8, !tbaa !9
  %6 = load i32, ptr @IY, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  %14 = or i32 %3, 84
  %15 = and i32 %4, -199
  %16 = select i1 %13, i32 %14, i32 %15
  store i32 %16, ptr @F, align 4, !tbaa !5
  ret i32 20
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
