; ModuleID = '../benchmarks/fine_grained/exebench/kernel642.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel642.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@start_idx = dso_local local_unnamed_addr global i32 0, align 4
@ges_count = dso_local local_unnamed_addr global i32 0, align 4
@channel_data = dso_local local_unnamed_addr global ptr null, align 8
@opt = dso_local local_unnamed_addr global i32 0, align 4
@paras = dso_local local_unnamed_addr global ptr null, align 8
@filter_buffer = dso_local local_unnamed_addr global ptr null, align 8
@ges_raws = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_gesture_data(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @start_idx, align 4, !tbaa !5
  %4 = load i32, ptr @ges_count, align 4, !tbaa !5
  %5 = add nsw i32 %4, %3
  %6 = icmp sgt i32 %5, 799
  %7 = add nsw i32 %5, -800
  %8 = select i1 %6, i32 %7, i32 %5
  %9 = icmp eq i32 %1, 0
  %10 = load ptr, ptr @channel_data, align 8, !tbaa !9
  br i1 %9, label %22, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 4, !tbaa !5
  store i32 %12, ptr %10, align 4, !tbaa !5
  %13 = getelementptr inbounds i32, ptr %0, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, ptr %10, i64 1
  store i32 %14, ptr %15, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, ptr %0, i64 2
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = getelementptr inbounds i32, ptr %10, i64 2
  store i32 %17, ptr %18, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, ptr %0, i64 3
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, ptr %10, i64 3
  store i32 %20, ptr %21, align 4, !tbaa !5
  br label %223

22:                                               ; preds = %2
  %23 = load i32, ptr %10, align 4, !tbaa !5
  %24 = load i32, ptr %0, align 4, !tbaa !5
  %25 = icmp sgt i32 %23, %24
  %26 = sub nsw i32 %23, %24
  %27 = select i1 %25, i32 %26, i32 0
  store i32 %27, ptr %10, align 4, !tbaa !5
  %28 = getelementptr inbounds i32, ptr %10, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, ptr %0, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %32 = icmp sgt i32 %29, %31
  %33 = sub nsw i32 %29, %31
  %34 = select i1 %32, i32 %33, i32 0
  store i32 %34, ptr %28, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, ptr %10, i64 2
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, ptr %0, i64 2
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = icmp sgt i32 %36, %38
  %40 = sub nsw i32 %36, %38
  %41 = select i1 %39, i32 %40, i32 0
  store i32 %41, ptr %35, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, ptr %10, i64 3
  %43 = load i32, ptr %42, align 4, !tbaa !5
  %44 = getelementptr inbounds i32, ptr %0, i64 3
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = icmp sgt i32 %43, %45
  %47 = sub nsw i32 %43, %45
  %48 = select i1 %46, i32 %47, i32 0
  store i32 %48, ptr %42, align 4, !tbaa !5
  %49 = load i32, ptr @opt, align 4, !tbaa !5
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %170

51:                                               ; preds = %22
  %52 = load ptr, ptr @paras, align 8, !tbaa !9
  %53 = load ptr, ptr @filter_buffer, align 8, !tbaa !9
  %54 = getelementptr inbounds i32, ptr %52, i64 1
  %55 = getelementptr inbounds i32, ptr %52, i64 2
  %56 = getelementptr inbounds i32, ptr %52, i64 3
  %57 = getelementptr inbounds i32, ptr %52, i64 4
  %58 = getelementptr inbounds i32, ptr %52, i64 5
  %59 = getelementptr inbounds i32, ptr %52, i64 6
  %60 = getelementptr inbounds i32, ptr %52, i64 7
  %61 = getelementptr inbounds i32, ptr %52, i64 8
  %62 = getelementptr inbounds i32, ptr %52, i64 9
  %63 = getelementptr inbounds i32, ptr %52, i64 10
  %64 = getelementptr inbounds i32, ptr %52, i64 11
  br label %65

65:                                               ; preds = %51, %65
  %66 = phi i64 [ 0, %51 ], [ %165, %65 ]
  %67 = getelementptr inbounds i32, ptr %10, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = load i32, ptr %52, align 4, !tbaa !5
  %70 = mul nsw i32 %69, %68
  store i32 %70, ptr %67, align 4, !tbaa !5
  %71 = getelementptr inbounds i32, ptr %53, i64 %66
  %72 = load i32, ptr %71, align 4, !tbaa !5
  %73 = load i32, ptr %54, align 4, !tbaa !5
  %74 = mul nsw i32 %73, %72
  %75 = add nsw i32 %70, %74
  store i32 %75, ptr %67, align 4, !tbaa !5
  %76 = add nuw nsw i64 %66, 4
  %77 = getelementptr inbounds i32, ptr %53, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !5
  %79 = load i32, ptr %55, align 4, !tbaa !5
  %80 = mul nsw i32 %79, %78
  %81 = add nsw i32 %75, %80
  store i32 %81, ptr %67, align 4, !tbaa !5
  %82 = add nuw nsw i64 %66, 8
  %83 = getelementptr inbounds i32, ptr %53, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !5
  %85 = load i32, ptr %56, align 4, !tbaa !5
  %86 = mul nsw i32 %85, %84
  %87 = add nsw i32 %81, %86
  store i32 %87, ptr %67, align 4, !tbaa !5
  %88 = add nuw nsw i64 %66, 12
  %89 = getelementptr inbounds i32, ptr %53, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !5
  %91 = load i32, ptr %57, align 4, !tbaa !5
  %92 = mul nsw i32 %91, %90
  %93 = add nsw i32 %87, %92
  store i32 %93, ptr %67, align 4, !tbaa !5
  %94 = add nuw nsw i64 %66, 16
  %95 = getelementptr inbounds i32, ptr %53, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !5
  %97 = load i32, ptr %58, align 4, !tbaa !5
  %98 = mul nsw i32 %97, %96
  %99 = add nsw i32 %93, %98
  store i32 %99, ptr %67, align 4, !tbaa !5
  %100 = add nuw nsw i64 %66, 20
  %101 = getelementptr inbounds i32, ptr %53, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !5
  %103 = load i32, ptr %59, align 4, !tbaa !5
  %104 = mul nsw i32 %103, %102
  %105 = add nsw i32 %99, %104
  store i32 %105, ptr %67, align 4, !tbaa !5
  %106 = add nuw nsw i64 %66, 24
  %107 = getelementptr inbounds i32, ptr %53, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !5
  %109 = load i32, ptr %60, align 4, !tbaa !5
  %110 = mul nsw i32 %109, %108
  %111 = add nsw i32 %105, %110
  store i32 %111, ptr %67, align 4, !tbaa !5
  %112 = add nuw nsw i64 %66, 28
  %113 = getelementptr inbounds i32, ptr %53, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !5
  %115 = load i32, ptr %61, align 4, !tbaa !5
  %116 = mul nsw i32 %115, %114
  %117 = add nsw i32 %111, %116
  store i32 %117, ptr %67, align 4, !tbaa !5
  %118 = add nuw nsw i64 %66, 32
  %119 = getelementptr inbounds i32, ptr %53, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = load i32, ptr %62, align 4, !tbaa !5
  %122 = mul nsw i32 %121, %120
  %123 = add nsw i32 %117, %122
  store i32 %123, ptr %67, align 4, !tbaa !5
  %124 = add nuw nsw i64 %66, 36
  %125 = getelementptr inbounds i32, ptr %53, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !5
  %127 = load i32, ptr %63, align 4, !tbaa !5
  %128 = mul nsw i32 %127, %126
  %129 = add nsw i32 %123, %128
  store i32 %129, ptr %67, align 4, !tbaa !5
  %130 = add nuw nsw i64 %66, 40
  %131 = getelementptr inbounds i32, ptr %53, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = load i32, ptr %64, align 4, !tbaa !5
  %134 = mul nsw i32 %133, %132
  %135 = add nsw i32 %129, %134
  %136 = sdiv i32 %135, 1024
  store i32 %136, ptr %67, align 4, !tbaa !5
  %137 = add nuw nsw i64 %66, 36
  %138 = getelementptr inbounds i32, ptr %53, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !5
  store i32 %139, ptr %131, align 4, !tbaa !5
  %140 = add nuw nsw i64 %66, 32
  %141 = getelementptr inbounds i32, ptr %53, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !5
  store i32 %142, ptr %125, align 4, !tbaa !5
  %143 = add nuw nsw i64 %66, 28
  %144 = getelementptr inbounds i32, ptr %53, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !5
  store i32 %145, ptr %119, align 4, !tbaa !5
  %146 = add nuw nsw i64 %66, 24
  %147 = getelementptr inbounds i32, ptr %53, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !5
  store i32 %148, ptr %113, align 4, !tbaa !5
  %149 = add nuw nsw i64 %66, 20
  %150 = getelementptr inbounds i32, ptr %53, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !5
  store i32 %151, ptr %107, align 4, !tbaa !5
  %152 = add nuw nsw i64 %66, 16
  %153 = getelementptr inbounds i32, ptr %53, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !5
  store i32 %154, ptr %101, align 4, !tbaa !5
  %155 = add nuw nsw i64 %66, 12
  %156 = getelementptr inbounds i32, ptr %53, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !5
  store i32 %157, ptr %95, align 4, !tbaa !5
  %158 = add nuw nsw i64 %66, 8
  %159 = getelementptr inbounds i32, ptr %53, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !5
  store i32 %160, ptr %89, align 4, !tbaa !5
  %161 = add nuw nsw i64 %66, 4
  %162 = getelementptr inbounds i32, ptr %53, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !5
  store i32 %163, ptr %83, align 4, !tbaa !5
  %164 = load i32, ptr %71, align 4, !tbaa !5
  store i32 %164, ptr %77, align 4, !tbaa !5
  store i32 %68, ptr %71, align 4, !tbaa !5
  %165 = add nuw nsw i64 %66, 1
  %166 = icmp eq i64 %165, 4
  br i1 %166, label %167, label %65, !llvm.loop !11

167:                                              ; preds = %65
  %168 = load ptr, ptr @channel_data, align 8, !tbaa !9
  %169 = load i32, ptr %168, align 4, !tbaa !5
  br label %170

170:                                              ; preds = %167, %22
  %171 = phi i32 [ %169, %167 ], [ %27, %22 ]
  %172 = phi ptr [ %168, %167 ], [ %10, %22 ]
  %173 = load ptr, ptr @ges_raws, align 8, !tbaa !9
  %174 = sext i32 %8 to i64
  %175 = getelementptr inbounds i32, ptr %173, i64 %174
  store i32 %171, ptr %175, align 4, !tbaa !5
  %176 = load i32, ptr @ges_count, align 4, !tbaa !5
  %177 = icmp sgt i32 %176, 799
  br i1 %177, label %178, label %183

178:                                              ; preds = %170
  %179 = load i32, ptr @start_idx, align 4, !tbaa !5
  %180 = add nsw i32 %179, 1
  %181 = icmp sgt i32 %179, 798
  %182 = select i1 %181, i32 0, i32 %180
  store i32 %182, ptr @start_idx, align 4
  br label %183

183:                                              ; preds = %170, %178
  %184 = getelementptr inbounds i32, ptr %172, i64 1
  %185 = load i32, ptr %184, align 4, !tbaa !5
  %186 = add nsw i64 %174, 1
  %187 = getelementptr inbounds i32, ptr %173, i64 %186
  store i32 %185, ptr %187, align 4, !tbaa !5
  %188 = load i32, ptr @ges_count, align 4, !tbaa !5
  %189 = icmp sgt i32 %188, 799
  br i1 %189, label %190, label %195

190:                                              ; preds = %183
  %191 = load i32, ptr @start_idx, align 4, !tbaa !5
  %192 = add nsw i32 %191, 1
  %193 = icmp sgt i32 %191, 798
  %194 = select i1 %193, i32 0, i32 %192
  store i32 %194, ptr @start_idx, align 4
  br label %195

195:                                              ; preds = %190, %183
  %196 = getelementptr inbounds i32, ptr %172, i64 2
  %197 = load i32, ptr %196, align 4, !tbaa !5
  %198 = add nsw i64 %174, 2
  %199 = getelementptr inbounds i32, ptr %173, i64 %198
  store i32 %197, ptr %199, align 4, !tbaa !5
  %200 = load i32, ptr @ges_count, align 4, !tbaa !5
  %201 = icmp sgt i32 %200, 799
  br i1 %201, label %202, label %207

202:                                              ; preds = %195
  %203 = load i32, ptr @start_idx, align 4, !tbaa !5
  %204 = add nsw i32 %203, 1
  %205 = icmp sgt i32 %203, 798
  %206 = select i1 %205, i32 0, i32 %204
  store i32 %206, ptr @start_idx, align 4
  br label %207

207:                                              ; preds = %202, %195
  %208 = getelementptr inbounds i32, ptr %172, i64 3
  %209 = load i32, ptr %208, align 4, !tbaa !5
  %210 = add nsw i64 %174, 3
  %211 = getelementptr inbounds i32, ptr %173, i64 %210
  store i32 %209, ptr %211, align 4, !tbaa !5
  %212 = load i32, ptr @ges_count, align 4, !tbaa !5
  %213 = icmp sgt i32 %212, 799
  br i1 %213, label %214, label %219

214:                                              ; preds = %207
  %215 = load i32, ptr @start_idx, align 4, !tbaa !5
  %216 = add nsw i32 %215, 1
  %217 = icmp sgt i32 %215, 798
  %218 = select i1 %217, i32 0, i32 %216
  store i32 %218, ptr @start_idx, align 4
  br label %219

219:                                              ; preds = %214, %207
  %220 = add nsw i32 %212, 4
  %221 = icmp sgt i32 %212, 795
  %222 = select i1 %221, i32 800, i32 %220
  store i32 %222, ptr @ges_count, align 4
  br label %223

223:                                              ; preds = %11, %219
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
