; ModuleID = '../benchmarks/fine_grained/exebench/kernel990.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel990.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@joy_multijoy_no = dso_local local_unnamed_addr global i32 0, align 4
@INPUT_joy_multijoy = dso_local local_unnamed_addr global i64 0, align 8
@Atari800_machine_type = dso_local local_unnamed_addr global i64 0, align 8
@Atari800_MACHINE_5200 = dso_local local_unnamed_addr global i64 0, align 8
@STICK = dso_local local_unnamed_addr global ptr null, align 8
@PIA_PORT_input = dso_local local_unnamed_addr global ptr null, align 8
@TRIG_input = dso_local local_unnamed_addr global ptr null, align 8
@GTIA_TRIG = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @INPUT_SelectMultiJoy(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 3
  store i32 %2, ptr @joy_multijoy_no, align 4, !tbaa !5
  %3 = load i64, ptr @INPUT_joy_multijoy, align 8, !tbaa !9
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr @Atari800_machine_type, align 8, !tbaa !9
  %7 = load i64, ptr @Atari800_MACHINE_5200, align 8, !tbaa !9
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @STICK, align 8, !tbaa !11
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !5
  %14 = or i32 %13, 240
  %15 = load ptr, ptr @PIA_PORT_input, align 8, !tbaa !11
  store i32 %14, ptr %15, align 4, !tbaa !5
  %16 = load ptr, ptr @TRIG_input, align 8, !tbaa !11
  %17 = getelementptr inbounds i32, ptr %16, i64 %11
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = load ptr, ptr @GTIA_TRIG, align 8, !tbaa !11
  store i32 %18, ptr %19, align 4, !tbaa !5
  br label %20

20:                                               ; preds = %9, %5, %1
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
