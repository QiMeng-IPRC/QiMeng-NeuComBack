; ModuleID = '../benchmarks/fine_grained/exebench/kernel1579.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1579.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShiftRows(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #2
  store i32 1, ptr @i, align 4, !tbaa !5
  %3 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 1
  %4 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 2
  %5 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 3
  br label %6

6:                                                ; preds = %1, %39
  %7 = phi i32 [ 1, %1 ], [ %41, %39 ]
  %8 = sext i32 %7 to i64
  store i32 0, ptr @j, align 4, !tbaa !5
  %9 = srem i32 %7, 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i32], ptr %0, i64 %8, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !5
  store i32 %12, ptr %2, align 16, !tbaa !5
  store i32 1, ptr @j, align 4, !tbaa !5
  %13 = add nsw i32 %7, 1
  %14 = srem i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i32], ptr %0, i64 %8, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !5
  store i32 %17, ptr %3, align 4, !tbaa !5
  store i32 2, ptr @j, align 4, !tbaa !5
  %18 = add nsw i32 %7, 2
  %19 = srem i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], ptr %0, i64 %8, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !5
  store i32 %22, ptr %4, align 8, !tbaa !5
  store i32 3, ptr @j, align 4, !tbaa !5
  %23 = add nsw i32 %7, 3
  %24 = srem i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], ptr %0, i64 %8, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !5
  store i32 %27, ptr %5, align 4, !tbaa !5
  store i32 0, ptr @j, align 4, !tbaa !5
  br label %28

28:                                               ; preds = %6, %28
  %29 = phi i32 [ 0, %6 ], [ %37, %28 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !5
  %33 = load i32, ptr @i, align 4, !tbaa !5
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], ptr %0, i64 %34, i64 %30
  store i32 %32, ptr %35, align 4, !tbaa !5
  %36 = load i32, ptr @j, align 4, !tbaa !5
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @j, align 4, !tbaa !5
  %38 = icmp slt i32 %36, 3
  br i1 %38, label %28, label %39, !llvm.loop !9

39:                                               ; preds = %28
  %40 = load i32, ptr @i, align 4, !tbaa !5
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @i, align 4, !tbaa !5
  %42 = icmp slt i32 %40, 3
  br i1 %42, label %6, label %43, !llvm.loop !11

43:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
