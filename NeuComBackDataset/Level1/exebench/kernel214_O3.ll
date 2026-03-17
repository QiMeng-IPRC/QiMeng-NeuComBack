; ModuleID = '../benchmarks/fine_grained/exebench/kernel214.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel214.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i64, i64, i64, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { ptr }

@acc_data = dso_local local_unnamed_addr global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @yas_lis331dlh_init_data() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i64 0, i32 7), i8 0, i64 16, i1 false)
  store i32 100, ptr @acc_data, align 8, !tbaa !5
  %1 = load ptr, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i64 0, i32 6), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i64 0, i32 5), align 8, !tbaa !15
  store i32 20000, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i64 0, i32 1), align 4, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i64 0, i32 2), i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_6__", !7, i64 0, !7, i64 4, !10, i64 8, !11, i64 56, !11, i64 64, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 96}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_5__", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!11 = !{!"long", !8, i64 0}
!12 = !{!"TYPE_4__", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!6, !13, i64 80}
!15 = !{!6, !11, i64 72}
!16 = !{!6, !7, i64 4}
