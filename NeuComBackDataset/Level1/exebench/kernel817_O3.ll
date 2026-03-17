; ModuleID = '../benchmarks/fine_grained/exebench/kernel817.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel817.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Op0dc0() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg, align 8, !tbaa !5
  %2 = getelementptr inbounds i32, ptr %1, i64 6
  %3 = load i32, ptr %2, align 4, !tbaa !9
  %4 = load i32, ptr @inst, align 4, !tbaa !9
  %5 = and i32 %4, 7
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = and i32 %3, 31
  %10 = shl nuw i32 1, %9
  %11 = and i32 %8, %10
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr @status, align 4
  %14 = and i32 %13, -5
  %15 = select i1 %12, i32 4, i32 0
  %16 = or i32 %15, %14
  store i32 %16, ptr @status, align 4, !tbaa !9
  %17 = or i32 %8, %10
  store i32 %17, ptr %7, align 4, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
