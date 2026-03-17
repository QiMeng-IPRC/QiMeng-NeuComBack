; ModuleID = '../benchmarks/fine_grained/exebench/kernel740.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel740.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@SPF_SUPPORTS_CALLBACK = dso_local local_unnamed_addr global i32 0, align 4
@SPF_SUPPORTS_SBUS_MODE = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @sbusUpdateSerialRxFunctionConstraint(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i32 100000, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 100000, ptr %2, align 4, !tbaa !10
  %3 = load i32, ptr @SPF_SUPPORTS_CALLBACK, align 4, !tbaa !11
  %4 = load i32, ptr @SPF_SUPPORTS_SBUS_MODE, align 4, !tbaa !11
  %5 = or i32 %4, %3
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 %5, ptr %6, align 4, !tbaa !12
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!7, !7, i64 0}
!12 = !{!6, !7, i64 8}
