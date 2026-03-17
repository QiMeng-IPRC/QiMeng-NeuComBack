; ModuleID = '../benchmarks/fine_grained/exebench/kernel608.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel608.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@asn_DEF_NativeInteger = dso_local local_unnamed_addr global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Accuracy_1_inherit_TYPE_descriptor(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 8
  %3 = load <4 x i32>, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_NativeInteger, i64 0, i32 8), align 8, !tbaa !5
  store <4 x i32> %3, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 4
  %5 = load <4 x i32>, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_NativeInteger, i64 0, i32 4), align 8, !tbaa !5
  store <4 x i32> %5, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !9
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_NativeInteger, i64 0, i32 3), align 8, !tbaa !12
  store i64 %10, ptr %6, align 8, !tbaa !9
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_NativeInteger, i64 0, i32 2), align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !15
  %14 = load <2 x i32>, ptr @asn_DEF_NativeInteger, align 8, !tbaa !5
  store <2 x i32> %14, ptr %0, align 8, !tbaa !5
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 16}
!10 = !{!"TYPE_4__", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !11, i64 16}
!13 = !{!"TYPE_5__", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52}
!14 = !{!13, !6, i64 8}
!15 = !{!10, !6, i64 8}
