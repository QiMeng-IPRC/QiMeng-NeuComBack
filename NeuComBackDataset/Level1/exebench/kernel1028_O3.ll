; ModuleID = '../benchmarks/fine_grained/exebench/kernel1028.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1028.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@None_Device = dso_local local_unnamed_addr global i32 0, align 4
@CRT_Device = dso_local local_unnamed_addr global i32 0, align 4
@DVI_Device = dso_local local_unnamed_addr global i32 0, align 4
@LCD_Device = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @viafb_get_gamma_support_state(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 8
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load i32, ptr @None_Device, align 4, !tbaa !5
  br label %12

6:                                                ; preds = %2
  %7 = load i32, ptr @CRT_Device, align 4, !tbaa !5
  %8 = load i32, ptr @DVI_Device, align 4, !tbaa !5
  %9 = or i32 %8, %7
  %10 = load i32, ptr @LCD_Device, align 4, !tbaa !5
  %11 = or i32 %9, %10
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i32 [ %11, %6 ], [ %5, %4 ]
  store i32 %13, ptr %1, align 4, !tbaa !5
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
