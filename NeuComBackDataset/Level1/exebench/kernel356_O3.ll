; ModuleID = '../benchmarks/fine_grained/exebench/kernel356.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel356.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rgba = type { i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgba_desaturate(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.rgba, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %struct.rgba, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = add nsw i32 %6, %8
  %10 = sdiv i32 %9, 3
  store i32 %10, ptr %0, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.rgba, ptr %0, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !10
  %12 = getelementptr inbounds %struct.rgba, ptr %0, i64 0, i32 2
  store i32 %10, ptr %12, align 4, !tbaa !11
  %13 = getelementptr inbounds %struct.rgba, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = getelementptr inbounds %struct.rgba, ptr %0, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !12
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
!5 = !{!6, !7, i64 0}
!6 = !{!"rgba", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 12}
