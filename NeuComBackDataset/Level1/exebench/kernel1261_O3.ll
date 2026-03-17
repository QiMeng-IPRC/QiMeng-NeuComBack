; ModuleID = '../benchmarks/fine_grained/exebench/kernel1261.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1261.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@FB_ACTIVATE_NOW = dso_local local_unnamed_addr global i32 0, align 4
@FB_ACTIVATE_FORCE = dso_local local_unnamed_addr global i32 0, align 4
@fb_var_info = dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@fb = dso_local local_unnamed_addr global i32 0, align 4
@FBIOGET_VSCREENINFO = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @lfb_refresh() local_unnamed_addr #0 {
  %1 = load i32, ptr @FB_ACTIVATE_NOW, align 4, !tbaa !5
  %2 = load i32, ptr @FB_ACTIVATE_FORCE, align 4, !tbaa !5
  %3 = or i32 %2, %1
  %4 = load i32, ptr @fb_var_info, align 4, !tbaa !9
  %5 = or i32 %3, %4
  store i32 %5, ptr @fb_var_info, align 4, !tbaa !9
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @fb_var_info, i64 0, i32 2), align 4, !tbaa !11
  %7 = shl nsw i32 %6, 1
  store i32 %7, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @fb_var_info, i64 0, i32 1), align 4, !tbaa !12
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @fb_var_info, i64 0, i32 3), align 4, !tbaa !13
  %8 = load i32, ptr @fb, align 4, !tbaa !5
  %9 = load i32, ptr @FBIOGET_VSCREENINFO, align 4, !tbaa !5
  %10 = tail call i32 @ioctl(i32 noundef %8, i32 noundef %9, ptr noundef nonnull @fb_var_info) #2
  ret void
}

declare i32 @ioctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_3__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!11 = !{!10, !6, i64 8}
!12 = !{!10, !6, i64 4}
!13 = !{!10, !6, i64 12}
