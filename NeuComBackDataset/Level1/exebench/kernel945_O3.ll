; ModuleID = '../benchmarks/fine_grained/exebench/kernel945.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel945.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @initScsdis(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  store i8 %3, ptr %0, align 8, !tbaa !5
  %4 = sitofp i32 %1 to double
  %5 = fadd double %4, 1.000000e+00
  %6 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 1
  store double %5, ptr %6, align 8, !tbaa !12
  %7 = add nsw i32 %1, 2
  %8 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 1, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !13
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_5__", !7, i64 0, !9, i64 8}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"TYPE_4__", !10, i64 0, !11, i64 8}
!10 = !{!"double", !7, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !11, i64 16}
