; ModuleID = '../benchmarks/fine_grained/exebench/kernel1549.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1549.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TRIG_NOW = dso_local local_unnamed_addr global i32 0, align 4
@TRIG_EXT = dso_local local_unnamed_addr global i32 0, align 4
@TRIG_TIMER = dso_local local_unnamed_addr global i32 0, align 4
@TRIG_FOLLOW = dso_local local_unnamed_addr global i32 0, align 4
@TRIG_COUNT = dso_local local_unnamed_addr global i32 0, align 4
@TRIG_NONE = dso_local local_unnamed_addr global i32 0, align 4
@this_board = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @i_APCI3120_CommandTestAnalogInput(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 8, !tbaa !5
  %5 = load i32, ptr @TRIG_NOW, align 4, !tbaa !11
  %6 = load i32, ptr @TRIG_EXT, align 4, !tbaa !11
  %7 = or i32 %6, %5
  %8 = and i32 %7, %4
  store i32 %8, ptr %2, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %4, %8
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = load i32, ptr @TRIG_TIMER, align 4, !tbaa !11
  %16 = load i32, ptr @TRIG_FOLLOW, align 4
  %17 = or i32 %16, %15
  %18 = and i32 %17, %14
  store i32 %18, ptr %13, align 4, !tbaa !12
  %19 = icmp ne i32 %18, 0
  %20 = icmp eq i32 %14, %18
  %21 = and i1 %19, %20
  %22 = select i1 %11, i32 2, i32 1
  %23 = select i1 %21, i32 %12, i32 %22
  %24 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !13
  %26 = and i32 %25, %15
  store i32 %26, ptr %24, align 8, !tbaa !13
  %27 = icmp eq i32 %26, 0
  %28 = icmp ne i32 %25, %26
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i32
  %31 = add nuw nsw i32 %23, %30
  %32 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !14
  %34 = load i32, ptr @TRIG_COUNT, align 4
  %35 = and i32 %34, %33
  store i32 %35, ptr %32, align 4, !tbaa !14
  %36 = icmp eq i32 %35, 0
  %37 = icmp ne i32 %33, %35
  %38 = or i1 %36, %37
  %39 = sext i1 %38 to i32
  %40 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !15
  %42 = load i32, ptr @TRIG_NONE, align 4, !tbaa !11
  %43 = or i32 %42, %34
  %44 = and i32 %43, %41
  store i32 %44, ptr %40, align 8, !tbaa !15
  %45 = icmp ne i32 %44, 0
  %46 = icmp eq i32 %41, %44
  %47 = and i1 %45, %46
  %48 = icmp eq i32 %31, %39
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %152

50:                                               ; preds = %3
  %51 = load i32, ptr @TRIG_NOW, align 4, !tbaa !11
  %52 = icmp ne i32 %8, %51
  %53 = load i32, ptr @TRIG_EXT, align 4
  %54 = icmp ne i32 %8, %53
  %55 = select i1 %52, i1 %54, i1 false
  %56 = zext i1 %55 to i32
  %57 = icmp eq i32 %18, %15
  %58 = icmp eq i32 %18, %16
  %59 = select i1 %57, i1 true, i1 %58
  %60 = select i1 %55, i32 2, i32 1
  %61 = select i1 %59, i32 %56, i32 %60
  %62 = icmp ne i32 %26, %15
  %63 = zext i1 %62 to i32
  %64 = add nuw nsw i32 %61, %63
  %65 = icmp eq i32 %35, %34
  br i1 %65, label %68, label %66

66:                                               ; preds = %50
  store i32 %34, ptr %32, align 4, !tbaa !14
  %67 = add nuw nsw i32 %64, 1
  br label %68

68:                                               ; preds = %66, %50
  %69 = phi i32 [ %67, %66 ], [ %64, %50 ]
  %70 = icmp ne i32 %41, %42
  %71 = icmp ne i32 %41, %34
  %72 = and i1 %70, %71
  %73 = sext i1 %72 to i32
  %74 = icmp eq i32 %69, %73
  br i1 %74, label %75, label %152

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 5
  %77 = load i64, ptr %76, align 8, !tbaa !16
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i64 0, ptr %76, align 8, !tbaa !16
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32 [ 1, %79 ], [ 0, %75 ]
  br i1 %57, label %82, label %92

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 6
  %84 = load i32, ptr %83, align 8, !tbaa !17
  %85 = load ptr, ptr @this_board, align 8, !tbaa !18
  %86 = load i32, ptr %85, align 4, !tbaa !20
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  store i32 %86, ptr %83, align 8, !tbaa !17
  %89 = add nuw nsw i32 %81, 1
  br label %90

90:                                               ; preds = %82, %88
  %91 = phi i32 [ %89, %88 ], [ %81, %82 ]
  br i1 %62, label %112, label %93

92:                                               ; preds = %80
  br i1 %62, label %112, label %103

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 7
  %95 = load i32, ptr %94, align 4, !tbaa !22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_2__, ptr %85, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !23
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  store i32 %99, ptr %94, align 4, !tbaa !22
  %102 = add nuw nsw i32 %91, 1
  br label %112

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 7
  %105 = load i32, ptr %104, align 4, !tbaa !22
  %106 = load ptr, ptr @this_board, align 8, !tbaa !18
  %107 = getelementptr inbounds %struct.TYPE_2__, ptr %106, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !23
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  store i32 %108, ptr %104, align 4, !tbaa !22
  %111 = add nuw nsw i32 %81, 1
  br label %112

112:                                              ; preds = %92, %101, %97, %93, %110, %103, %90
  %113 = phi i32 [ %102, %101 ], [ %91, %97 ], [ %91, %93 ], [ %111, %110 ], [ %81, %103 ], [ %91, %90 ], [ %81, %92 ]
  %114 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 8
  %115 = load i32, ptr %114, align 8, !tbaa !24
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  store i32 1, ptr %114, align 8, !tbaa !24
  %118 = add nuw nsw i32 %113, 1
  br label %119

119:                                              ; preds = %117, %112
  %120 = phi i32 [ %115, %112 ], [ 1, %117 ]
  %121 = phi i32 [ %113, %112 ], [ %118, %117 ]
  %122 = load ptr, ptr @this_board, align 8, !tbaa !18
  %123 = getelementptr inbounds %struct.TYPE_2__, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !25
  %125 = icmp sgt i32 %120, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 %124, ptr %114, align 8, !tbaa !24
  br label %127

127:                                              ; preds = %126, %119
  %128 = phi i32 [ 1, %126 ], [ %121, %119 ]
  %129 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 9
  %130 = load i32, ptr %129, align 4, !tbaa !26
  %131 = icmp eq i32 %130, 0
  br i1 %71, label %134, label %132

132:                                              ; preds = %127
  br i1 %131, label %133, label %136

133:                                              ; preds = %132
  store i32 1, ptr %129, align 4, !tbaa !26
  br label %152

134:                                              ; preds = %127
  br i1 %131, label %136, label %135

135:                                              ; preds = %134
  store i32 0, ptr %129, align 4, !tbaa !26
  br label %152

136:                                              ; preds = %134, %132
  %137 = icmp ne i32 %128, 0
  %138 = select i1 %137, i1 true, i1 %62
  %139 = xor i1 %57, true
  %140 = select i1 %138, i1 true, i1 %139
  %141 = select i1 %137, i32 3, i32 0
  br i1 %140, label %152, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 6
  %144 = load i32, ptr %143, align 8, !tbaa !17
  %145 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 7
  %146 = load i32, ptr %145, align 4, !tbaa !22
  %147 = getelementptr inbounds %struct.comedi_cmd, ptr %2, i64 0, i32 10
  %148 = load i32, ptr %147, align 8, !tbaa !27
  %149 = mul nsw i32 %148, %146
  %150 = icmp slt i32 %144, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  store i32 %149, ptr %143, align 8, !tbaa !17
  br label %152

152:                                              ; preds = %136, %135, %133, %151, %142, %68, %3
  %153 = phi i32 [ 1, %3 ], [ 2, %68 ], [ %141, %136 ], [ 4, %151 ], [ 0, %142 ], [ 3, %133 ], [ 3, %135 ]
  ret i32 %153
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
!6 = !{!"comedi_cmd", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!6, !7, i64 4}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 12}
!15 = !{!6, !7, i64 16}
!16 = !{!6, !10, i64 24}
!17 = !{!6, !7, i64 32}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !8, i64 0}
!20 = !{!21, !7, i64 0}
!21 = !{!"TYPE_2__", !7, i64 0, !7, i64 4, !7, i64 8}
!22 = !{!6, !7, i64 36}
!23 = !{!21, !7, i64 4}
!24 = !{!6, !7, i64 40}
!25 = !{!21, !7, i64 8}
!26 = !{!6, !7, i64 44}
!27 = !{!6, !7, i64 48}
