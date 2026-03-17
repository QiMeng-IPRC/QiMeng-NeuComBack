; ModuleID = '../benchmarks/fine_grained/exebench/kernel1594.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1594.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@sign_states = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_signature_state(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  store i32 %1, ptr %0, align 4, !tbaa !5
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = load ptr, ptr @sign_states, align 8, !tbaa !12
  %7 = getelementptr inbounds i32, ptr %6, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !14
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !15
  br label %10

10:                                               ; preds = %4, %2
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
!5 = !{!6, !9, i64 0}
!6 = !{!"TYPE_7__", !7, i64 0}
!7 = !{!"TYPE_6__", !8, i64 0}
!8 = !{!"TYPE_5__", !9, i64 0, !9, i64 4}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!6, !9, i64 4}
