; ModuleID = '../benchmarks/fine_grained/exebench/kernel193.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel193.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8, i8 }

@iTableCacheIndex = dso_local local_unnamed_addr global i32 0, align 4
@iTableCacheUsed = dso_local local_unnamed_addr global ptr null, align 8
@iTableCache = dso_local local_unnamed_addr global ptr null, align 8
@iTable = dso_local local_unnamed_addr global ptr null, align 8
@allow_unify = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ItableLookup(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @iTableCacheIndex, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load ptr, ptr @iTableCacheUsed, align 8, !tbaa !9
  %8 = load ptr, ptr @iTableCache, align 8
  %9 = zext i32 %4 to i64
  br label %16

10:                                               ; preds = %36
  %11 = icmp slt i32 %4, 3
  br i1 %11, label %12, label %39

12:                                               ; preds = %3, %10
  %13 = load ptr, ptr @iTableCacheUsed, align 8, !tbaa !9
  %14 = load ptr, ptr @iTableCache, align 8
  %15 = sext i32 %4 to i64
  br label %41

16:                                               ; preds = %6, %36
  %17 = phi i64 [ %9, %6 ], [ %37, %36 ]
  %18 = getelementptr inbounds i32, ptr %7, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i64 %17
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i64 %17, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !13
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i64 %17, i32 2
  %31 = load i8, ptr %30, align 4, !tbaa !14
  %32 = icmp eq i8 %31, %0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i64 %17, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !15
  br label %114

36:                                               ; preds = %16, %21, %25, %29
  %37 = add nsw i64 %17, -1
  %38 = icmp sgt i64 %17, 0
  br i1 %38, label %16, label %10, !llvm.loop !16

39:                                               ; preds = %61, %10
  %40 = load ptr, ptr @iTable, align 8, !tbaa !9
  br label %64

41:                                               ; preds = %12, %61
  %42 = phi i64 [ 3, %12 ], [ %62, %61 ]
  %43 = getelementptr inbounds i32, ptr %13, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !5
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i64 %42
  %48 = load i32, ptr %47, align 4, !tbaa !11
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i64 %42, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !13
  %53 = icmp eq i32 %52, %2
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i64 %42, i32 2
  %56 = load i8, ptr %55, align 4, !tbaa !14
  %57 = icmp eq i8 %56, %0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i64 %42, i32 3
  %60 = load i8, ptr %59, align 1, !tbaa !15
  br label %114

61:                                               ; preds = %41, %46, %50, %54
  %62 = add nsw i64 %42, -1
  %63 = icmp sgt i64 %62, %15
  br i1 %63, label %41, label %39, !llvm.loop !18

64:                                               ; preds = %104, %39
  %65 = phi i64 [ 0, %39 ], [ %105, %104 ]
  %66 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !11
  %68 = icmp eq i32 %67, %1
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i64 %65, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !13
  %72 = icmp eq i32 %71, %2
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i64 %65, i32 2
  %75 = load i8, ptr %74, align 4, !tbaa !14
  %76 = icmp eq i8 %75, %0
  br i1 %76, label %77, label %89

77:                                               ; preds = %100, %73
  %78 = phi i64 [ %65, %73 ], [ %90, %100 ]
  %79 = phi ptr [ %66, %73 ], [ %93, %100 ]
  %80 = add nsw i32 %4, 1
  %81 = icmp sgt i32 %4, 2
  %82 = select i1 %81, i32 0, i32 %80
  store i32 %82, ptr @iTableCacheIndex, align 4
  %83 = load ptr, ptr @iTableCache, align 8, !tbaa !9
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, ptr %83, i64 %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %85, ptr noundef nonnull align 4 dereferenceable(12) %79, i64 12, i1 false), !tbaa.struct !19
  %86 = load ptr, ptr @iTableCacheUsed, align 8, !tbaa !9
  %87 = getelementptr inbounds i32, ptr %86, i64 %84
  store i32 1, ptr %87, align 4, !tbaa !5
  %88 = trunc i64 %78 to i8
  br label %114

89:                                               ; preds = %64, %69, %73
  %90 = or i64 %65, 1
  %91 = icmp eq i64 %90, 35
  br i1 %91, label %106, label %92, !llvm.loop !21

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i64 %90
  %94 = load i32, ptr %93, align 4, !tbaa !11
  %95 = icmp eq i32 %94, %1
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i64 %90, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !13
  %99 = icmp eq i32 %98, %2
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i64 %90, i32 2
  %102 = load i8, ptr %101, align 4, !tbaa !14
  %103 = icmp eq i8 %102, %0
  br i1 %103, label %77, label %104

104:                                              ; preds = %100, %96, %92
  %105 = add nuw nsw i64 %65, 2
  br label %64

106:                                              ; preds = %89
  %107 = load i32, ptr @allow_unify, align 4, !tbaa !5
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = icmp eq i32 %1, 0
  %111 = icmp eq i32 %2, 1
  %112 = and i1 %110, %111
  br i1 %112, label %114, label %113

113:                                              ; preds = %109, %106
  br label %114

114:                                              ; preds = %109, %113, %77, %58, %33
  %115 = phi i8 [ %35, %33 ], [ %60, %58 ], [ %88, %77 ], [ 40, %113 ], [ 0, %109 ]
  ret i8 %115
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"TYPE_3__", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 9}
!13 = !{!12, !6, i64 4}
!14 = !{!12, !7, i64 8}
!15 = !{!12, !7, i64 9}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 1, !20, i64 9, i64 1, !20}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !17}
