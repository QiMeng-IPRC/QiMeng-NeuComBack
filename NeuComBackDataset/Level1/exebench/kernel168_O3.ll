; ModuleID = '../benchmarks/fine_grained/exebench/kernel168.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel168.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @qp_set_rate_wobble_inv(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = load double, ptr %0, align 8, !tbaa !5
  %4 = fcmp une double %3, %1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store double %1, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  store i32 -1, ptr %6, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %5, %2
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
!5 = !{!6, !8, i64 0}
!6 = !{!"TYPE_5__", !7, i64 0}
!7 = !{!"TYPE_4__", !8, i64 0, !11, i64 8}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!6, !11, i64 8}
