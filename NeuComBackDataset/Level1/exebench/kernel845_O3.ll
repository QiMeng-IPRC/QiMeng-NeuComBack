; ModuleID = '../benchmarks/fine_grained/exebench/kernel845.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel845.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plcvm_sp = dso_local local_unnamed_addr global i64 0, align 8
@plcvm_sfp = dso_local local_unnamed_addr global i64 0, align 8
@plcvm_ram = dso_local local_unnamed_addr global ptr null, align 8
@PLC_ANSWER_ERROR_OFR_SP = dso_local local_unnamed_addr global i32 0, align 4
@plcvm_stat = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cb_not() local_unnamed_addr #0 {
  %1 = load i64, ptr @plcvm_sp, align 8, !tbaa !5
  %2 = load i64, ptr @plcvm_sfp, align 8, !tbaa !5
  %3 = icmp ult i64 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load ptr, ptr @plcvm_ram, align 8, !tbaa !9
  %6 = getelementptr inbounds i32, ptr %5, i64 %1
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = xor i32 %7, -1
  store i32 %8, ptr %6, align 4, !tbaa !11
  br label %11

9:                                                ; preds = %0
  %10 = load i32, ptr @PLC_ANSWER_ERROR_OFR_SP, align 4, !tbaa !11
  store i32 %10, ptr @plcvm_stat, align 4, !tbaa !11
  br label %11

11:                                               ; preds = %9, %4
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
