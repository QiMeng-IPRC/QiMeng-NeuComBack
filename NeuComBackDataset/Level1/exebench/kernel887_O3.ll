; ModuleID = '../benchmarks/fine_grained/exebench/kernel887.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel887.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@A_CEN = dso_local local_unnamed_addr global i32 0, align 4
@A_RIG = dso_local local_unnamed_addr global i32 0, align 4
@A_BOT = dso_local local_unnamed_addr global i32 0, align 4
@fb = dso_local local_unnamed_addr global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @sprite_offsets(i64 %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = trunc i64 %0 to i32
  %9 = lshr i64 %0, 32
  %10 = trunc i64 %9 to i32
  %11 = load i32, ptr @A_CEN, align 4, !tbaa !5
  %12 = icmp eq i32 %11, %5
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = ashr i32 %8, 1
  %15 = load i32, ptr %1, align 4, !tbaa !9
  %16 = sub nsw i32 %15, %14
  store i32 %16, ptr %1, align 4, !tbaa !9
  br label %17

17:                                               ; preds = %13, %7
  %18 = load i32, ptr @A_RIG, align 4, !tbaa !5
  %19 = icmp eq i32 %18, %5
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, ptr %1, align 4, !tbaa !9
  %22 = sub i32 %21, %8
  %23 = add i32 %22, 1
  store i32 %23, ptr %1, align 4, !tbaa !9
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, ptr @A_CEN, align 4, !tbaa !5
  %26 = icmp eq i32 %25, %6
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = ashr i32 %10, 1
  %29 = getelementptr inbounds %struct.TYPE_16__, ptr %1, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !11
  %31 = sub nsw i32 %30, %28
  store i32 %31, ptr %29, align 4, !tbaa !11
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, ptr @A_BOT, align 4, !tbaa !5
  %34 = icmp eq i32 %33, %6
  %35 = getelementptr inbounds %struct.TYPE_16__, ptr %1, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !11
  br i1 %34, label %37, label %40

37:                                               ; preds = %32
  %38 = sub i32 %36, %10
  %39 = add i32 %38, 1
  store i32 %39, ptr %35, align 4, !tbaa !11
  br label %40

40:                                               ; preds = %32, %37
  %41 = phi i32 [ %39, %37 ], [ %36, %32 ]
  %42 = load i32, ptr %1, align 4, !tbaa !9
  store i32 %42, ptr %2, align 4, !tbaa !9
  %43 = getelementptr inbounds %struct.TYPE_16__, ptr %1, i64 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, ptr %2, i64 0, i32 1
  store i32 %41, ptr %44, align 4, !tbaa !11
  %45 = load <2 x i32>, ptr %1, align 4, !tbaa !5
  %46 = icmp slt <2 x i32> %45, zeroinitializer
  %47 = sub nsw <2 x i32> zeroinitializer, %45
  %48 = select <2 x i1> %46, <2 x i32> %47, <2 x i32> zeroinitializer
  store <2 x i32> %48, ptr %3, align 4
  %49 = load i32, ptr %1, align 4, !tbaa !9
  %50 = add nsw i32 %49, %8
  %51 = load i32, ptr @fb, align 4, !tbaa !12
  %52 = icmp slt i32 %50, %51
  %53 = sub nsw i32 %51, %49
  %54 = select i1 %52, i32 %8, i32 %53
  store i32 %54, ptr %4, align 4, !tbaa !9
  %55 = load i32, ptr %43, align 4, !tbaa !11
  %56 = add nsw i32 %55, %10
  %57 = load i32, ptr getelementptr inbounds (%struct.TYPE_12__, ptr @fb, i64 0, i32 0, i32 0, i32 1), align 4, !tbaa !16
  %58 = icmp slt i32 %56, %57
  %59 = sub nsw i32 %57, %55
  %60 = select i1 %58, i32 %10, i32 %59
  %61 = getelementptr inbounds %struct.TYPE_16__, ptr %4, i64 0, i32 1
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %3, align 4, !tbaa !9
  %63 = icmp sgt i32 %54, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %40
  %65 = getelementptr inbounds %struct.TYPE_16__, ptr %3, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !11
  %67 = icmp sle i32 %60, %66
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %64, %40
  %70 = phi i32 [ 1, %40 ], [ %68, %64 ]
  ret i32 %70
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
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_16__", !6, i64 0, !6, i64 4}
!11 = !{!10, !6, i64 4}
!12 = !{!13, !6, i64 0}
!13 = !{!"TYPE_12__", !14, i64 0}
!14 = !{!"TYPE_14__", !15, i64 0}
!15 = !{!"TYPE_13__", !6, i64 0, !6, i64 4}
!16 = !{!13, !6, i64 4}
