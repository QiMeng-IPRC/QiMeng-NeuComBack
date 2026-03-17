; ModuleID = 'tmp/s31111_inner.c'
source_filename = "tmp/s31111_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s31111_inner() local_unnamed_addr #0 {
  br label %2

1:                                                ; preds = %2
  ret void

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %21, %2 ]
  %4 = tail call float @test(ptr noundef nonnull @a) #2
  %5 = fadd float %4, 0.000000e+00
  %6 = tail call float @test(ptr noundef nonnull getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 4)) #2
  %7 = fadd float %5, %6
  %8 = tail call float @test(ptr noundef nonnull getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 8)) #2
  %9 = fadd float %7, %8
  %10 = tail call float @test(ptr noundef nonnull getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 12)) #2
  %11 = fadd float %9, %10
  %12 = tail call float @test(ptr noundef nonnull getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 16)) #2
  %13 = fadd float %11, %12
  %14 = tail call float @test(ptr noundef nonnull getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 20)) #2
  %15 = fadd float %13, %14
  %16 = tail call float @test(ptr noundef nonnull getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 24)) #2
  %17 = fadd float %15, %16
  %18 = tail call float @test(ptr noundef nonnull getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 28)) #2
  %19 = fadd float %17, %18
  %20 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %19) #2
  %21 = add nuw nsw i32 %3, 1
  %22 = icmp eq i32 %21, 200000000
  br i1 %22, label %1, label %2, !llvm.loop !5
}

declare float @test(ptr noundef) local_unnamed_addr #1

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
