; ModuleID = '../benchmarks/fine_grained/exebench/kernel667.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel667.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { ptr, i32 }
%struct.gr_info_s = type { i32, i32, i32, i64 }

@__const.III_get_scale_factors_2.stab = private unnamed_addr constant [3 x [6 x [4 x i8]]] [[6 x [4 x i8]] [[4 x i8] c"\06\05\05\05", [4 x i8] c"\06\05\07\03", [4 x i8] c"\0B\0A\00\00", [4 x i8] c"\07\07\07\00", [4 x i8] c"\06\06\06\03", [4 x i8] c"\08\08\05\00"], [6 x [4 x i8]] [[4 x i8] c"\09\09\09\09", [4 x i8] c"\09\09\0C\06", [4 x i8] c"\12\12\00\00", [4 x i8] c"\0C\0C\0C\00", [4 x i8] c"\0C\09\09\06", [4 x i8] c"\0F\0C\09\00"], [6 x [4 x i8]] [[4 x i8] c"\06\09\09\09", [4 x i8] c"\06\09\0C\06", [4 x i8] c"\0F\12\00\00", [4 x i8] c"\06\0F\0C\00", [4 x i8] c"\06\0C\09\06", [4 x i8] c"\06\12\09\00"]], align 16
@i_slen2 = dso_local local_unnamed_addr global ptr null, align 8
@n_slen2 = dso_local local_unnamed_addr global ptr null, align 8
@bsi = dso_local local_unnamed_addr global %struct.TYPE_14__ zeroinitializer, align 8
@rval = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @III_get_scale_factors_2(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne i32 %2, 0
  %5 = load i32, ptr %1, align 8, !tbaa !5
  %6 = load ptr, ptr @n_slen2, align 8
  %7 = load ptr, ptr @i_slen2, align 8
  %8 = zext i1 %4 to i32
  %9 = ashr i32 %5, %8
  %10 = select i1 %4, ptr %7, ptr %6
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = lshr i32 %13, 15
  %15 = and i32 %14, 1
  %16 = getelementptr inbounds %struct.gr_info_s, ptr %1, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !12
  %17 = getelementptr inbounds %struct.gr_info_s, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !13
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.gr_info_s, ptr %1, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !14
  %23 = icmp eq i64 %22, 0
  %24 = select i1 %23, i64 1, i64 2
  br label %25

25:                                               ; preds = %20, %3
  %26 = phi i64 [ 0, %3 ], [ %24, %20 ]
  %27 = lshr i32 %13, 12
  %28 = and i32 %27, 7
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [3 x [6 x [4 x i8]]], ptr @__const.III_get_scale_factors_2.stab, i64 0, i64 %26, i64 %29
  %31 = load ptr, ptr @bsi, align 8, !tbaa !15
  %32 = and i32 %13, 7
  %33 = lshr i32 %13, 3
  %34 = icmp eq i32 %32, 0
  %35 = load i8, ptr %30, align 4, !tbaa !18
  br i1 %34, label %41, label %36

36:                                               ; preds = %25
  %37 = zext i8 %35 to i32
  %38 = icmp eq i8 %35, 0
  br i1 %38, label %80, label %39

39:                                               ; preds = %36
  %40 = zext i32 %32 to i64
  br label %52

41:                                               ; preds = %25
  %42 = icmp eq i8 %35, 0
  br i1 %42, label %84, label %43

43:                                               ; preds = %41
  %44 = zext i8 %35 to i64
  %45 = zext i8 %35 to i64
  %46 = shl nuw nsw i64 %45, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %46, i1 false), !tbaa !11
  %47 = shl nuw nsw i64 %44, 2
  %48 = add nuw nsw i64 %47, 17179869180
  %49 = and i64 %48, 17179869180
  %50 = getelementptr i8, ptr %0, i64 4
  %51 = getelementptr i8, ptr %50, i64 %49
  br label %84

52:                                               ; preds = %39, %52
  %53 = phi ptr [ %0, %39 ], [ %76, %52 ]
  %54 = phi i32 [ 0, %39 ], [ %77, %52 ]
  %55 = phi ptr [ %31, %39 ], [ %73, %52 ]
  %56 = load i32, ptr %55, align 4, !tbaa !11
  %57 = load i32, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i64 0, i32 1), align 8, !tbaa !19
  %58 = shl i32 %56, %57
  %59 = and i32 %58, 255
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %55, i64 1
  %62 = load i32, ptr %61, align 4, !tbaa !11
  %63 = sext i32 %62 to i64
  %64 = zext i32 %57 to i64
  %65 = shl i64 %63, %64
  %66 = lshr i64 %65, 8
  %67 = or i64 %66, %60
  %68 = shl nuw nsw i64 %67, %40
  %69 = lshr i64 %68, 8
  %70 = add nsw i32 %57, %32
  %71 = ashr i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %55, i64 %72
  %74 = and i32 %70, 7
  store i32 %74, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i64 0, i32 1), align 8, !tbaa !19
  %75 = trunc i64 %69 to i32
  %76 = getelementptr inbounds i32, ptr %53, i64 1
  store i32 %75, ptr %53, align 4, !tbaa !11
  %77 = add nuw nsw i32 %54, 1
  %78 = icmp eq i32 %77, %37
  br i1 %78, label %79, label %52, !llvm.loop !20

79:                                               ; preds = %52
  store i64 %69, ptr @rval, align 8, !tbaa !22
  store ptr %73, ptr @bsi, align 8, !tbaa !15
  br label %80

80:                                               ; preds = %79, %36
  %81 = phi ptr [ %73, %79 ], [ %31, %36 ]
  %82 = phi ptr [ %76, %79 ], [ %0, %36 ]
  %83 = mul nuw nsw i32 %32, %37
  br label %84

84:                                               ; preds = %43, %41, %80
  %85 = phi ptr [ %81, %80 ], [ %31, %41 ], [ %31, %43 ]
  %86 = phi i32 [ %83, %80 ], [ 0, %41 ], [ 0, %43 ]
  %87 = phi ptr [ %82, %80 ], [ %0, %41 ], [ %51, %43 ]
  %88 = and i32 %33, 7
  %89 = lshr i32 %13, 6
  %90 = icmp eq i32 %88, 0
  %91 = getelementptr inbounds i8, ptr %30, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !18
  br i1 %90, label %131, label %93

93:                                               ; preds = %84
  %94 = zext i8 %92 to i32
  %95 = icmp eq i8 %92, 0
  br i1 %95, label %126, label %96

96:                                               ; preds = %93
  %97 = zext i32 %88 to i64
  br label %98

98:                                               ; preds = %98, %96
  %99 = phi ptr [ %87, %96 ], [ %122, %98 ]
  %100 = phi i32 [ 0, %96 ], [ %123, %98 ]
  %101 = phi ptr [ %85, %96 ], [ %119, %98 ]
  %102 = load i32, ptr %101, align 4, !tbaa !11
  %103 = load i32, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i64 0, i32 1), align 8, !tbaa !19
  %104 = shl i32 %102, %103
  %105 = and i32 %104, 255
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %101, i64 1
  %108 = load i32, ptr %107, align 4, !tbaa !11
  %109 = sext i32 %108 to i64
  %110 = zext i32 %103 to i64
  %111 = shl i64 %109, %110
  %112 = lshr i64 %111, 8
  %113 = or i64 %112, %106
  %114 = shl nuw nsw i64 %113, %97
  %115 = lshr i64 %114, 8
  %116 = add nsw i32 %103, %88
  %117 = ashr i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %101, i64 %118
  %120 = and i32 %116, 7
  store i32 %120, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i64 0, i32 1), align 8, !tbaa !19
  %121 = trunc i64 %115 to i32
  %122 = getelementptr inbounds i32, ptr %99, i64 1
  store i32 %121, ptr %99, align 4, !tbaa !11
  %123 = add nuw nsw i32 %100, 1
  %124 = icmp eq i32 %123, %94
  br i1 %124, label %125, label %98, !llvm.loop !20

125:                                              ; preds = %98
  store i64 %115, ptr @rval, align 8, !tbaa !22
  store ptr %119, ptr @bsi, align 8, !tbaa !15
  br label %126

126:                                              ; preds = %125, %93
  %127 = phi ptr [ %119, %125 ], [ %85, %93 ]
  %128 = phi ptr [ %122, %125 ], [ %87, %93 ]
  %129 = mul nuw nsw i32 %88, %94
  %130 = add nuw nsw i32 %129, %86
  br label %142

131:                                              ; preds = %84
  %132 = icmp eq i8 %92, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %131
  %134 = zext i8 %92 to i64
  %135 = zext i8 %92 to i64
  %136 = shl nuw nsw i64 %135, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %87, i8 0, i64 %136, i1 false), !tbaa !11
  %137 = shl nuw nsw i64 %134, 2
  %138 = add nuw nsw i64 %137, 17179869180
  %139 = and i64 %138, 17179869180
  %140 = getelementptr i8, ptr %87, i64 4
  %141 = getelementptr i8, ptr %140, i64 %139
  br label %142

142:                                              ; preds = %133, %131, %126
  %143 = phi ptr [ %127, %126 ], [ %85, %131 ], [ %85, %133 ]
  %144 = phi i32 [ %130, %126 ], [ %86, %131 ], [ %86, %133 ]
  %145 = phi ptr [ %128, %126 ], [ %87, %131 ], [ %141, %133 ]
  %146 = and i32 %89, 7
  %147 = lshr i32 %13, 9
  %148 = icmp eq i32 %146, 0
  %149 = getelementptr inbounds i8, ptr %30, i64 2
  %150 = load i8, ptr %149, align 2, !tbaa !18
  br i1 %148, label %189, label %151

151:                                              ; preds = %142
  %152 = zext i8 %150 to i32
  %153 = icmp eq i8 %150, 0
  br i1 %153, label %184, label %154

154:                                              ; preds = %151
  %155 = zext i32 %146 to i64
  br label %156

156:                                              ; preds = %156, %154
  %157 = phi ptr [ %145, %154 ], [ %180, %156 ]
  %158 = phi i32 [ 0, %154 ], [ %181, %156 ]
  %159 = phi ptr [ %143, %154 ], [ %177, %156 ]
  %160 = load i32, ptr %159, align 4, !tbaa !11
  %161 = load i32, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i64 0, i32 1), align 8, !tbaa !19
  %162 = shl i32 %160, %161
  %163 = and i32 %162, 255
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, ptr %159, i64 1
  %166 = load i32, ptr %165, align 4, !tbaa !11
  %167 = sext i32 %166 to i64
  %168 = zext i32 %161 to i64
  %169 = shl i64 %167, %168
  %170 = lshr i64 %169, 8
  %171 = or i64 %170, %164
  %172 = shl nuw nsw i64 %171, %155
  %173 = lshr i64 %172, 8
  %174 = add nsw i32 %161, %146
  %175 = ashr i32 %174, 3
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %159, i64 %176
  %178 = and i32 %174, 7
  store i32 %178, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i64 0, i32 1), align 8, !tbaa !19
  %179 = trunc i64 %173 to i32
  %180 = getelementptr inbounds i32, ptr %157, i64 1
  store i32 %179, ptr %157, align 4, !tbaa !11
  %181 = add nuw nsw i32 %158, 1
  %182 = icmp eq i32 %181, %152
  br i1 %182, label %183, label %156, !llvm.loop !20

183:                                              ; preds = %156
  store i64 %173, ptr @rval, align 8, !tbaa !22
  store ptr %177, ptr @bsi, align 8, !tbaa !15
  br label %184

184:                                              ; preds = %183, %151
  %185 = phi ptr [ %177, %183 ], [ %143, %151 ]
  %186 = phi ptr [ %180, %183 ], [ %145, %151 ]
  %187 = mul nuw nsw i32 %146, %152
  %188 = add nuw nsw i32 %187, %144
  br label %200

189:                                              ; preds = %142
  %190 = icmp eq i8 %150, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %189
  %192 = zext i8 %150 to i64
  %193 = zext i8 %150 to i64
  %194 = shl nuw nsw i64 %193, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %145, i8 0, i64 %194, i1 false), !tbaa !11
  %195 = shl nuw nsw i64 %192, 2
  %196 = add nuw nsw i64 %195, 17179869180
  %197 = and i64 %196, 17179869180
  %198 = getelementptr i8, ptr %145, i64 4
  %199 = getelementptr i8, ptr %198, i64 %197
  br label %200

200:                                              ; preds = %191, %189, %184
  %201 = phi ptr [ %185, %184 ], [ %143, %189 ], [ %143, %191 ]
  %202 = phi i32 [ %188, %184 ], [ %144, %189 ], [ %144, %191 ]
  %203 = phi ptr [ %186, %184 ], [ %145, %189 ], [ %199, %191 ]
  %204 = and i32 %147, 7
  %205 = icmp eq i32 %204, 0
  %206 = getelementptr inbounds i8, ptr %30, i64 3
  %207 = load i8, ptr %206, align 1, !tbaa !18
  br i1 %205, label %245, label %208

208:                                              ; preds = %200
  %209 = zext i8 %207 to i32
  %210 = icmp eq i8 %207, 0
  br i1 %210, label %241, label %211

211:                                              ; preds = %208
  %212 = zext i32 %204 to i64
  br label %213

213:                                              ; preds = %213, %211
  %214 = phi ptr [ %203, %211 ], [ %237, %213 ]
  %215 = phi i32 [ 0, %211 ], [ %238, %213 ]
  %216 = phi ptr [ %201, %211 ], [ %234, %213 ]
  %217 = load i32, ptr %216, align 4, !tbaa !11
  %218 = load i32, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i64 0, i32 1), align 8, !tbaa !19
  %219 = shl i32 %217, %218
  %220 = and i32 %219, 255
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, ptr %216, i64 1
  %223 = load i32, ptr %222, align 4, !tbaa !11
  %224 = sext i32 %223 to i64
  %225 = zext i32 %218 to i64
  %226 = shl i64 %224, %225
  %227 = lshr i64 %226, 8
  %228 = or i64 %227, %221
  %229 = shl nuw nsw i64 %228, %212
  %230 = lshr i64 %229, 8
  %231 = add nsw i32 %218, %204
  %232 = ashr i32 %231, 3
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, ptr %216, i64 %233
  %235 = and i32 %231, 7
  store i32 %235, ptr getelementptr inbounds (%struct.TYPE_14__, ptr @bsi, i64 0, i32 1), align 8, !tbaa !19
  %236 = trunc i64 %230 to i32
  %237 = getelementptr inbounds i32, ptr %214, i64 1
  store i32 %236, ptr %214, align 4, !tbaa !11
  %238 = add nuw nsw i32 %215, 1
  %239 = icmp eq i32 %238, %209
  br i1 %239, label %240, label %213, !llvm.loop !20

240:                                              ; preds = %213
  store i64 %230, ptr @rval, align 8, !tbaa !22
  store ptr %234, ptr @bsi, align 8, !tbaa !15
  br label %241

241:                                              ; preds = %240, %208
  %242 = phi ptr [ %237, %240 ], [ %203, %208 ]
  %243 = mul nuw nsw i32 %204, %209
  %244 = add nuw nsw i32 %243, %202
  br label %256

245:                                              ; preds = %200
  %246 = icmp eq i8 %207, 0
  br i1 %246, label %256, label %247

247:                                              ; preds = %245
  %248 = zext i8 %207 to i64
  %249 = zext i8 %207 to i64
  %250 = shl nuw nsw i64 %249, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %203, i8 0, i64 %250, i1 false), !tbaa !11
  %251 = shl nuw nsw i64 %248, 2
  %252 = add nuw nsw i64 %251, 17179869180
  %253 = and i64 %252, 17179869180
  %254 = getelementptr i8, ptr %203, i64 4
  %255 = getelementptr i8, ptr %254, i64 %253
  br label %256

256:                                              ; preds = %247, %245, %241
  %257 = phi i32 [ %244, %241 ], [ %202, %245 ], [ %202, %247 ]
  %258 = phi ptr [ %242, %241 ], [ %203, %245 ], [ %255, %247 ]
  %259 = shl nuw nsw i64 %26, 3
  %260 = or i64 %259, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %258, i8 0, i64 %260, i1 false), !tbaa !11
  ret i32 %257
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gr_info_s", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!6, !7, i64 4}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !10, i64 16}
!15 = !{!16, !17, i64 0}
!16 = !{!"TYPE_14__", !17, i64 0, !7, i64 8}
!17 = !{!"any pointer", !8, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!16, !7, i64 8}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!10, !10, i64 0}
