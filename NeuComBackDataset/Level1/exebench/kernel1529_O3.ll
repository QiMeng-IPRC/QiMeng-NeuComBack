; ModuleID = '../benchmarks/fine_grained/exebench/kernel1529.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1529.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @mrc_fix_li(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 15
  %6 = load i64, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !11
  br label %74

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 14
  %13 = load i64, ptr %12, align 8, !tbaa !12
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 13
  %16 = load i64, ptr %15, align 8, !tbaa !13
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 12
  %19 = load i64, ptr %18, align 8, !tbaa !14
  %20 = trunc i64 %19 to i32
  %21 = load i32, ptr %0, align 8, !tbaa !15
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %28, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 11
  %25 = load i64, ptr %24, align 8, !tbaa !16
  %26 = trunc i64 %25 to i32
  %27 = sub nsw i32 %21, %26
  store i32 %27, ptr %0, align 8, !tbaa !15
  br label %28

28:                                               ; preds = %23, %11
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !11
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 11
  %34 = load i64, ptr %33, align 8, !tbaa !16
  %35 = trunc i64 %34 to i32
  %36 = sub nsw i32 %30, %35
  store i32 %36, ptr %29, align 4, !tbaa !11
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i32 [ %36, %32 ], [ -1, %28 ]
  %39 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !17
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 10
  %44 = load i64, ptr %43, align 8, !tbaa !18
  %45 = trunc i64 %44 to i32
  %46 = sub nsw i32 %40, %45
  store i32 %46, ptr %39, align 8, !tbaa !17
  br label %47

47:                                               ; preds = %42, %37
  %48 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !19
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 10
  %53 = load i64, ptr %52, align 8, !tbaa !18
  %54 = trunc i64 %53 to i32
  %55 = sub nsw i32 %49, %54
  store i32 %55, ptr %48, align 4, !tbaa !19
  br label %56

56:                                               ; preds = %51, %47
  %57 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !20
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 9
  %62 = load i64, ptr %61, align 8, !tbaa !21
  %63 = trunc i64 %62 to i32
  %64 = sub nsw i32 %58, %63
  store i32 %64, ptr %57, align 8, !tbaa !20
  br label %65

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !22
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 9
  %71 = load i64, ptr %70, align 8, !tbaa !21
  %72 = trunc i64 %71 to i32
  %73 = sub nsw i32 %67, %72
  store i32 %73, ptr %66, align 4, !tbaa !22
  br label %74

74:                                               ; preds = %8, %65, %69
  %75 = phi i32 [ %38, %69 ], [ %38, %65 ], [ %10, %8 ]
  %76 = phi i32 [ %14, %69 ], [ %14, %65 ], [ %1, %8 ]
  %77 = phi i32 [ %17, %69 ], [ %17, %65 ], [ %2, %8 ]
  %78 = phi i32 [ %20, %69 ], [ %20, %65 ], [ %3, %8 ]
  %79 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %80 = icmp slt i32 %75, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load i32, ptr %0, align 8, !tbaa !15
  %83 = icmp sgt i32 %82, 0
  %84 = icmp slt i32 %82, %76
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = lshr i32 %76, 1
  %88 = lshr i32 %82, 1
  %89 = add nuw nsw i32 %88, %87
  store i32 %89, ptr %79, align 4, !tbaa !11
  %90 = sub nsw i32 %89, %82
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %0, align 8, !tbaa !15
  br label %92

92:                                               ; preds = %86, %74
  %93 = phi i32 [ %89, %86 ], [ %75, %74 ]
  %94 = icmp slt i32 %93, %76
  br i1 %94, label %97, label %95

95:                                               ; preds = %81, %92
  %96 = add nsw i32 %76, -1
  store i32 %96, ptr %79, align 4, !tbaa !11
  br label %97

97:                                               ; preds = %92, %95
  %98 = phi i32 [ %93, %92 ], [ %96, %95 ]
  %99 = load i32, ptr %0, align 8, !tbaa !15
  %100 = icmp slt i32 %99, 0
  %101 = icmp sgt i32 %99, %98
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 0, ptr %0, align 8, !tbaa !15
  br label %104

104:                                              ; preds = %97, %103
  %105 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  %106 = load i32, ptr %105, align 4, !tbaa !19
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !17
  %111 = icmp sgt i32 %110, 0
  %112 = icmp slt i32 %110, %77
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = lshr i32 %77, 1
  %116 = lshr i32 %110, 1
  %117 = add nuw nsw i32 %116, %115
  store i32 %117, ptr %105, align 4, !tbaa !19
  %118 = sub nsw i32 %117, %110
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %109, align 8, !tbaa !17
  br label %120

120:                                              ; preds = %114, %104
  %121 = phi i32 [ %117, %114 ], [ %106, %104 ]
  %122 = icmp slt i32 %121, %77
  br i1 %122, label %125, label %123

123:                                              ; preds = %108, %120
  %124 = add nsw i32 %77, -1
  store i32 %124, ptr %105, align 4, !tbaa !19
  br label %125

125:                                              ; preds = %120, %123
  %126 = phi i32 [ %121, %120 ], [ %124, %123 ]
  %127 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !17
  %129 = icmp slt i32 %128, 0
  %130 = icmp sgt i32 %128, %126
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 0, ptr %127, align 8, !tbaa !17
  br label %133

133:                                              ; preds = %125, %132
  %134 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  %135 = load i32, ptr %134, align 4, !tbaa !22
  %136 = icmp slt i32 %135, %78
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = add nsw i32 %78, -1
  store i32 %138, ptr %134, align 4, !tbaa !22
  br label %139

139:                                              ; preds = %137, %133
  %140 = phi i32 [ %138, %137 ], [ %135, %133 ]
  %141 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  %142 = load i32, ptr %141, align 8, !tbaa !20
  %143 = icmp slt i32 %142, %78
  br i1 %143, label %146, label %144

144:                                              ; preds = %139
  %145 = add nsw i32 %78, -1
  store i32 %145, ptr %141, align 8, !tbaa !20
  br label %146

146:                                              ; preds = %144, %139
  %147 = phi i32 [ %145, %144 ], [ %142, %139 ]
  %148 = icmp slt i32 %140, 0
  %149 = icmp slt i32 %140, %147
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = add nsw i32 %78, -1
  %153 = icmp slt i32 %147, 0
  %154 = select i1 %153, i32 %152, i32 %147
  store i32 %154, ptr %134, align 4, !tbaa !22
  br label %155

155:                                              ; preds = %146, %151
  %156 = phi i32 [ %154, %151 ], [ %140, %146 ]
  %157 = icmp slt i32 %147, 0
  %158 = icmp sgt i32 %147, %156
  %159 = select i1 %157, i1 true, i1 %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 0, ptr %141, align 8, !tbaa !20
  br label %161

161:                                              ; preds = %155, %160
  %162 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 6
  %163 = load i32, ptr %162, align 8, !tbaa !23
  %164 = add i32 %163, -256
  %165 = icmp ult i32 %164, -255
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  store i32 255, ptr %162, align 8, !tbaa !23
  br label %167

167:                                              ; preds = %161, %166
  %168 = phi i32 [ %163, %161 ], [ 255, %166 ]
  %169 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 7
  %170 = load i32, ptr %169, align 4, !tbaa !24
  %171 = icmp slt i32 %170, 0
  %172 = icmp ugt i32 %170, %168
  %173 = or i1 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i32 0, ptr %169, align 4, !tbaa !24
  br label %175

175:                                              ; preds = %167, %174
  %176 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 8
  %177 = load i32, ptr %176, align 8, !tbaa !25
  %178 = add i32 %177, -4
  %179 = icmp ult i32 %178, -3
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i32 3, ptr %176, align 8, !tbaa !25
  br label %181

181:                                              ; preds = %175, %180
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !10, i64 88}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !10, i64 80}
!13 = !{!6, !10, i64 72}
!14 = !{!6, !10, i64 64}
!15 = !{!6, !7, i64 0}
!16 = !{!6, !10, i64 56}
!17 = !{!6, !7, i64 8}
!18 = !{!6, !10, i64 48}
!19 = !{!6, !7, i64 12}
!20 = !{!6, !7, i64 16}
!21 = !{!6, !10, i64 40}
!22 = !{!6, !7, i64 20}
!23 = !{!6, !7, i64 24}
!24 = !{!6, !7, i64 28}
!25 = !{!6, !7, i64 32}
