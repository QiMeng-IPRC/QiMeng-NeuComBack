; ModuleID = '../benchmarks/fine_grained/exebench/kernel207.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel207.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @readCoord(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = shl i32 %4, 24
  %6 = getelementptr inbounds i64, ptr %0, i64 1
  %7 = load i64, ptr %6, align 8, !tbaa !5
  %8 = trunc i64 %7 to i32
  %9 = shl i32 %8, 16
  %10 = add nsw i32 %9, %5
  %11 = getelementptr inbounds i64, ptr %0, i64 2
  %12 = load i64, ptr %11, align 8, !tbaa !5
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 8
  %15 = add nsw i32 %10, %14
  %16 = getelementptr inbounds i64, ptr %0, i64 3
  %17 = load i64, ptr %16, align 8, !tbaa !5
  %18 = trunc i64 %17 to i32
  %19 = add nsw i32 %15, %18
  store i32 %19, ptr %1, align 4, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
