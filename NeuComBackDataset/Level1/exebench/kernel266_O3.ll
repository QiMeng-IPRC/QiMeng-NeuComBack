; ModuleID = '../benchmarks/fine_grained/exebench/kernel266.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel266.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VME_SOURCE_BASE = dso_local local_unnamed_addr global i32 0, align 4
@VME_MAX_SOURCES = dso_local local_unnamed_addr global i32 0, align 4
@free_vme_vec_bitmap = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @atari_unregister_vme_int(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @VME_SOURCE_BASE, align 4, !tbaa !5
  %3 = icmp ugt i32 %2, %0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @VME_MAX_SOURCES, align 4, !tbaa !5
  %6 = add i32 %5, %2
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = sub i32 %0, %2
  %10 = shl nuw i32 1, %9
  %11 = xor i32 %10, -1
  %12 = load i32, ptr @free_vme_vec_bitmap, align 4, !tbaa !5
  %13 = and i32 %12, %11
  store i32 %13, ptr @free_vme_vec_bitmap, align 4, !tbaa !5
  br label %14

14:                                               ; preds = %8, %4, %1
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
