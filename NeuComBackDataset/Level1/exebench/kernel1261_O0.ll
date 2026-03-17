; ModuleID = '../benchmarks/fine_grained/exebench/kernel1261.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1261.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@FB_ACTIVATE_NOW = dso_local global i32 0, align 4
@FB_ACTIVATE_FORCE = dso_local global i32 0, align 4
@fb_var_info = dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@fb = dso_local global i32 0, align 4
@FBIOGET_VSCREENINFO = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lfb_refresh() #0 {
  %1 = load i32, ptr @FB_ACTIVATE_NOW, align 4
  %2 = load i32, ptr @FB_ACTIVATE_FORCE, align 4
  %3 = or i32 %1, %2
  %4 = load i32, ptr @fb_var_info, align 4
  %5 = or i32 %4, %3
  store i32 %5, ptr @fb_var_info, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @fb_var_info, i32 0, i32 2), align 4
  %7 = mul nsw i32 %6, 2
  store i32 %7, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @fb_var_info, i32 0, i32 1), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @fb_var_info, i32 0, i32 2), align 4
  store i32 %8, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @fb_var_info, i32 0, i32 3), align 4
  %9 = load i32, ptr @fb, align 4
  %10 = load i32, ptr @FBIOGET_VSCREENINFO, align 4
  %11 = call i32 @ioctl(i32 noundef %9, i32 noundef %10, ptr noundef @fb_var_info)
  ret void
}

declare i32 @ioctl(i32 noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
