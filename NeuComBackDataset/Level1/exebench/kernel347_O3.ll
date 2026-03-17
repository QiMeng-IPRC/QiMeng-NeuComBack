; ModuleID = '../benchmarks/fine_grained/exebench/kernel347.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel347.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_timing = type { i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ide_timing_merge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 8, !tbaa !5
  %9 = load i64, ptr %1, align 8, !tbaa !5
  %10 = tail call i64 @llvm.smax.i64(i64 %8, i64 %9)
  store i64 %10, ptr %2, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %7, %4
  %12 = and i32 %3, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ide_timing, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct.ide_timing, ptr %1, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !10
  %19 = tail call i64 @llvm.smax.i64(i64 %16, i64 %18)
  %20 = getelementptr inbounds %struct.ide_timing, ptr %2, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !10
  br label %21

21:                                               ; preds = %14, %11
  %22 = and i32 %3, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ide_timing, ptr %0, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.ide_timing, ptr %1, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !11
  %29 = tail call i64 @llvm.smax.i64(i64 %26, i64 %28)
  %30 = getelementptr inbounds %struct.ide_timing, ptr %2, i64 0, i32 2
  store i64 %29, ptr %30, align 8, !tbaa !11
  br label %31

31:                                               ; preds = %24, %21
  %32 = and i32 %3, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ide_timing, ptr %0, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !12
  %37 = getelementptr inbounds %struct.ide_timing, ptr %1, i64 0, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !12
  %39 = tail call i64 @llvm.smax.i64(i64 %36, i64 %38)
  %40 = getelementptr inbounds %struct.ide_timing, ptr %2, i64 0, i32 3
  store i64 %39, ptr %40, align 8, !tbaa !12
  br label %41

41:                                               ; preds = %34, %31
  %42 = and i32 %3, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ide_timing, ptr %0, i64 0, i32 4
  %46 = load i64, ptr %45, align 8, !tbaa !13
  %47 = getelementptr inbounds %struct.ide_timing, ptr %1, i64 0, i32 4
  %48 = load i64, ptr %47, align 8, !tbaa !13
  %49 = tail call i64 @llvm.smax.i64(i64 %46, i64 %48)
  %50 = getelementptr inbounds %struct.ide_timing, ptr %2, i64 0, i32 4
  store i64 %49, ptr %50, align 8, !tbaa !13
  br label %51

51:                                               ; preds = %44, %41
  %52 = and i32 %3, 32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ide_timing, ptr %0, i64 0, i32 5
  %56 = load i64, ptr %55, align 8, !tbaa !14
  %57 = getelementptr inbounds %struct.ide_timing, ptr %1, i64 0, i32 5
  %58 = load i64, ptr %57, align 8, !tbaa !14
  %59 = tail call i64 @llvm.smax.i64(i64 %56, i64 %58)
  %60 = getelementptr inbounds %struct.ide_timing, ptr %2, i64 0, i32 5
  store i64 %59, ptr %60, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %54, %51
  %62 = and i32 %3, 64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ide_timing, ptr %0, i64 0, i32 6
  %66 = load i64, ptr %65, align 8, !tbaa !15
  %67 = getelementptr inbounds %struct.ide_timing, ptr %1, i64 0, i32 6
  %68 = load i64, ptr %67, align 8, !tbaa !15
  %69 = tail call i64 @llvm.smax.i64(i64 %66, i64 %68)
  %70 = getelementptr inbounds %struct.ide_timing, ptr %2, i64 0, i32 6
  store i64 %69, ptr %70, align 8, !tbaa !15
  br label %71

71:                                               ; preds = %64, %61
  %72 = and i32 %3, 128
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.ide_timing, ptr %0, i64 0, i32 7
  %76 = load i64, ptr %75, align 8, !tbaa !16
  %77 = getelementptr inbounds %struct.ide_timing, ptr %1, i64 0, i32 7
  %78 = load i64, ptr %77, align 8, !tbaa !16
  %79 = tail call i64 @llvm.smax.i64(i64 %76, i64 %78)
  %80 = getelementptr inbounds %struct.ide_timing, ptr %2, i64 0, i32 7
  store i64 %79, ptr %80, align 8, !tbaa !16
  br label %81

81:                                               ; preds = %74, %71
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"ide_timing", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 24}
!13 = !{!6, !7, i64 32}
!14 = !{!6, !7, i64 40}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 56}
