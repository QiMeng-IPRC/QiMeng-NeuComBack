; ModuleID = '../benchmarks/fine_grained/exebench/kernel1221.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1221.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64 }

@USB_FS_CORE_ID = dso_local local_unnamed_addr global i64 0, align 8
@USB_OK = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @usb_core_select(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {
  store i32 1, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  store i32 64, ptr %3, align 4, !tbaa !12
  %4 = load i64, ptr @USB_FS_CORE_ID, align 8, !tbaa !13
  %5 = icmp eq i64 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 6
  store i64 %1, ptr %7, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 2
  store <4 x i32> <i32 8, i32 4, i32 320, i32 2>, ptr %8, align 8, !tbaa !15
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr @USB_OK, align 4, !tbaa !15
  ret i32 %10
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 0}
!6 = !{!"TYPE_5__", !7, i64 0}
!7 = !{!"TYPE_4__", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !11, i64 24}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!6, !8, i64 4}
!13 = !{!11, !11, i64 0}
!14 = !{!6, !11, i64 24}
!15 = !{!8, !8, i64 0}
