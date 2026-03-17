; ModuleID = '../benchmarks/fine_grained/exebench/kernel1306.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1306.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_sp_buffer_offsets = type { i32, i32, i32, i32 }
%struct.fman_buffer_prefix_content = type { i32, i32, i64, i64, i64 }
%struct.fman_sp_int_context_data_copy = type { i32, i32, i64 }

@OFFSET_UNITS = dso_local local_unnamed_addr global i32 0, align 4
@ILLEGAL_BASE = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @fman_sp_build_buffer_struct(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  %6 = load i32, ptr %1, align 8, !tbaa !5
  %7 = load i32, ptr @OFFSET_UNITS, align 4, !tbaa !11
  %8 = add nsw i32 %7, -1
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  %11 = add nsw i32 %7, %6
  %12 = sub i32 0, %7
  %13 = and i32 %11, %12
  %14 = select i1 %10, i32 %6, i32 %13
  store i32 %14, ptr %0, align 8, !tbaa !12
  %15 = load i64, ptr @ILLEGAL_BASE, align 8, !tbaa !14
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %3, align 4, !tbaa !15
  %17 = getelementptr inbounds %struct.fman_sp_buffer_offsets, ptr %3, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !17
  %18 = getelementptr inbounds %struct.fman_sp_buffer_offsets, ptr %3, i64 0, i32 2
  store i32 %16, ptr %18, align 4, !tbaa !18
  %19 = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %1, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !19
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %21, i32 0, i32 32
  %23 = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %1, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !20
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %1, i64 0, i32 3
  %28 = load i64, ptr %27, align 8, !tbaa !21
  %29 = icmp eq i64 %28, 0
  %30 = select i1 %29, i32 0, i32 16
  %31 = or i32 %30, %22
  %32 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, ptr %0, i64 0, i32 1
  store i32 %31, ptr %32, align 4, !tbaa !22
  br i1 %21, label %46, label %49

33:                                               ; preds = %5
  %34 = or i32 %22, 16
  %35 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, ptr %0, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !22
  %36 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, ptr %0, i64 0, i32 2
  br i1 %21, label %37, label %41

37:                                               ; preds = %33
  store i64 64, ptr %36, align 8, !tbaa !23
  store i32 %14, ptr %17, align 4, !tbaa !17
  %38 = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %1, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !21
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %58, label %51

41:                                               ; preds = %33
  store i64 32, ptr %36, align 8, !tbaa !23
  store i32 %14, ptr %3, align 4, !tbaa !15
  %42 = add i32 %14, 4
  store i32 %42, ptr %17, align 4, !tbaa !17
  %43 = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %1, i64 0, i32 3
  %44 = load i64, ptr %43, align 8, !tbaa !21
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %58, label %51

46:                                               ; preds = %26
  %47 = select i1 %29, i64 0, i64 64
  %48 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, ptr %0, i64 0, i32 2
  store i64 %47, ptr %48, align 8, !tbaa !23
  br i1 %29, label %55, label %51

49:                                               ; preds = %26
  %50 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, ptr %0, i64 0, i32 2
  store i64 32, ptr %50, align 8, !tbaa !23
  store i32 %14, ptr %3, align 4, !tbaa !15
  br i1 %29, label %55, label %51

51:                                               ; preds = %46, %37, %49, %41
  %52 = phi i32 [ 12, %41 ], [ 12, %49 ], [ 8, %37 ], [ 8, %46 ]
  %53 = phi i32 [ %34, %41 ], [ %31, %49 ], [ %34, %37 ], [ %31, %46 ]
  %54 = add i32 %14, %52
  store i32 %54, ptr %18, align 4, !tbaa !18
  br label %55

55:                                               ; preds = %46, %49, %51
  %56 = phi i32 [ %31, %49 ], [ %53, %51 ], [ %31, %46 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %41, %37, %55
  %59 = phi i32 [ %56, %55 ], [ %34, %37 ], [ %34, %41 ]
  %60 = add nsw i32 %59, %14
  br label %61

61:                                               ; preds = %55, %58
  %62 = phi i32 [ %60, %58 ], [ %6, %55 ]
  store i32 %62, ptr %2, align 4, !tbaa !24
  %63 = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %1, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !26
  %65 = srem i32 %62, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = add i32 %64, %62
  %69 = sub i32 %68, %65
  store i32 %69, ptr %2, align 4, !tbaa !24
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i32 [ %69, %67 ], [ %62, %61 ]
  %72 = getelementptr inbounds %struct.fman_sp_buffer_offsets, ptr %3, i64 0, i32 3
  store i32 %71, ptr %72, align 4, !tbaa !27
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"fman_buffer_prefix_content", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"fman_sp_int_context_data_copy", !7, i64 0, !7, i64 4, !10, i64 8}
!14 = !{!10, !10, i64 0}
!15 = !{!16, !7, i64 0}
!16 = !{!"fman_sp_buffer_offsets", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!17 = !{!16, !7, i64 4}
!18 = !{!16, !7, i64 8}
!19 = !{!6, !10, i64 8}
!20 = !{!6, !10, i64 24}
!21 = !{!6, !10, i64 16}
!22 = !{!13, !7, i64 4}
!23 = !{!13, !10, i64 8}
!24 = !{!25, !7, i64 0}
!25 = !{!"fman_sp_buf_margins", !7, i64 0}
!26 = !{!6, !7, i64 4}
!27 = !{!16, !7, i64 12}
