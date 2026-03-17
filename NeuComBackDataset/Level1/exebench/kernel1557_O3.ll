; ModuleID = '../benchmarks/fine_grained/exebench/kernel1557.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1557.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr }

@memory = dso_local local_unnamed_addr global ptr null, align 8
@vcpu = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@LAST_REG = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @load_ld(i64 noundef %0, i64 %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @memory, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %6 = load ptr, ptr @vcpu, align 8, !tbaa !11
  %7 = getelementptr inbounds i32, ptr %6, i64 %1
  store i32 %5, ptr %7, align 4, !tbaa !9
  store i64 %1, ptr @LAST_REG, align 8, !tbaa !13
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
!11 = !{!12, !6, i64 0}
!12 = !{!"TYPE_2__", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
