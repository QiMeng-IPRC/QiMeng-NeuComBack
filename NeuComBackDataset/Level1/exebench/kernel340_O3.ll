; ModuleID = '../benchmarks/fine_grained/exebench/kernel340.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel340.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { float }

@DC = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AdjustFrom640(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @DC, align 8, !tbaa !5
  %6 = load float, ptr %5, align 4, !tbaa !9
  %7 = load float, ptr %0, align 4, !tbaa !13
  %8 = fmul float %6, %7
  store float %8, ptr %0, align 4, !tbaa !13
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %5, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !14
  %11 = load float, ptr %1, align 4, !tbaa !13
  %12 = fmul float %10, %11
  store float %12, ptr %1, align 4, !tbaa !13
  %13 = load float, ptr %5, align 4, !tbaa !9
  %14 = load float, ptr %2, align 4, !tbaa !13
  %15 = fmul float %13, %14
  store float %15, ptr %2, align 4, !tbaa !13
  %16 = load float, ptr %9, align 4, !tbaa !14
  %17 = load float, ptr %3, align 4, !tbaa !13
  %18 = fmul float %16, %17
  store float %18, ptr %3, align 4, !tbaa !13
  %19 = getelementptr inbounds %struct.TYPE_4__, ptr %5, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !15
  %21 = fcmp ogt float %20, 0x3FF5555560000000
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = fdiv float 0x3FF5555560000000, %20
  %24 = load float, ptr %0, align 4, !tbaa !13
  %25 = fmul float %23, %24
  store float %25, ptr %0, align 4, !tbaa !13
  %26 = load float, ptr %19, align 4, !tbaa !15
  %27 = fdiv float 0x3FF5555560000000, %26
  %28 = load float, ptr %2, align 4, !tbaa !13
  %29 = fmul float %28, %27
  store float %29, ptr %2, align 4, !tbaa !13
  br label %30

30:                                               ; preds = %22, %4
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_4__", !11, i64 0, !11, i64 4, !12, i64 8}
!11 = !{!"float", !7, i64 0}
!12 = !{!"TYPE_3__", !11, i64 0}
!13 = !{!11, !11, i64 0}
!14 = !{!10, !11, i64 4}
!15 = !{!10, !11, i64 8}
