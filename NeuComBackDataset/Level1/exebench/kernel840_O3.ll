; ModuleID = '../benchmarks/fine_grained/exebench/kernel840.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel840.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EXTEND = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_ext(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8, !tbaa !5
  %5 = load i32, ptr %1, align 8, !tbaa !5
  %6 = xor i32 %5, %4
  store i32 %6, ptr %2, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.EXTEND, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.EXTEND, ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !12
  %11 = add nsw i64 %10, %8
  %12 = add nsw i64 %11, 1
  %13 = getelementptr inbounds %struct.EXTEND, ptr %2, i64 0, i32 1
  store i64 %12, ptr %13, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.EXTEND, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !13
  %16 = lshr i32 %15, 16
  %17 = getelementptr inbounds %struct.EXTEND, ptr %0, i64 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !14
  %19 = lshr i32 %18, 16
  %20 = getelementptr inbounds %struct.EXTEND, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !13
  %22 = lshr i32 %21, 16
  %23 = getelementptr inbounds %struct.EXTEND, ptr %1, i64 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !14
  %25 = lshr i32 %24, 16
  %26 = and i32 %18, 65535
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %3
  %29 = and i32 %18, 65535
  %30 = and i32 %24, 65535
  %31 = mul nuw i32 %30, %29
  %32 = lshr i32 %31, 16
  %33 = zext i32 %32 to i64
  %34 = mul nuw i32 %25, %29
  %35 = zext i32 %34 to i64
  %36 = add nuw nsw i64 %33, %35
  %37 = lshr i64 %36, 16
  %38 = and i32 %21, 65535
  %39 = mul nuw i32 %38, %29
  %40 = zext i32 %39 to i64
  %41 = add nuw nsw i64 %37, %40
  %42 = trunc i64 %41 to i16
  %43 = lshr i64 %41, 16
  %44 = mul nuw i32 %22, %29
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %43, %45
  %47 = trunc i64 %46 to i16
  %48 = lshr i64 %46, 16
  %49 = trunc i64 %48 to i16
  %50 = and i64 %36, 65535
  br label %51

51:                                               ; preds = %3, %28
  %52 = phi i16 [ 0, %3 ], [ %49, %28 ]
  %53 = phi i16 [ 0, %3 ], [ %47, %28 ]
  %54 = phi i16 [ 0, %3 ], [ %42, %28 ]
  %55 = phi i64 [ 0, %3 ], [ %50, %28 ]
  %56 = icmp ult i32 %18, 65536
  br i1 %56, label %86, label %57

57:                                               ; preds = %51
  %58 = and i32 %24, 65535
  %59 = mul nuw i32 %58, %19
  %60 = zext i32 %59 to i64
  %61 = add nuw nsw i64 %55, %60
  %62 = lshr i64 %61, 16
  %63 = zext i16 %54 to i64
  %64 = add nuw nsw i64 %62, %63
  %65 = mul nuw i32 %25, %19
  %66 = zext i32 %65 to i64
  %67 = add nuw nsw i64 %64, %66
  %68 = trunc i64 %67 to i16
  %69 = lshr i64 %67, 16
  %70 = zext i16 %53 to i64
  %71 = add nuw nsw i64 %69, %70
  %72 = and i32 %21, 65535
  %73 = mul nuw i32 %72, %19
  %74 = zext i32 %73 to i64
  %75 = add nuw nsw i64 %71, %74
  %76 = trunc i64 %75 to i16
  %77 = lshr i64 %75, 16
  %78 = zext i16 %52 to i64
  %79 = add nuw nsw i64 %77, %78
  %80 = mul nuw i32 %22, %19
  %81 = zext i32 %80 to i64
  %82 = add nuw nsw i64 %79, %81
  %83 = trunc i64 %82 to i16
  %84 = lshr i64 %82, 16
  %85 = trunc i64 %84 to i16
  br label %86

86:                                               ; preds = %57, %51
  %87 = phi i16 [ 0, %51 ], [ %85, %57 ]
  %88 = phi i16 [ %52, %51 ], [ %83, %57 ]
  %89 = phi i16 [ %53, %51 ], [ %76, %57 ]
  %90 = phi i16 [ %54, %51 ], [ %68, %57 ]
  %91 = and i32 %15, 65535
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %124, label %93

93:                                               ; preds = %86
  %94 = and i32 %15, 65535
  %95 = zext i16 %90 to i64
  %96 = and i32 %24, 65535
  %97 = mul nuw i32 %96, %94
  %98 = zext i32 %97 to i64
  %99 = add nuw nsw i64 %95, %98
  %100 = lshr i64 %99, 16
  %101 = zext i16 %89 to i64
  %102 = add nuw nsw i64 %100, %101
  %103 = mul nuw i32 %25, %94
  %104 = zext i32 %103 to i64
  %105 = add nuw nsw i64 %102, %104
  %106 = trunc i64 %105 to i16
  %107 = lshr i64 %105, 16
  %108 = zext i16 %88 to i64
  %109 = add nuw nsw i64 %107, %108
  %110 = and i32 %21, 65535
  %111 = mul nuw i32 %110, %94
  %112 = zext i32 %111 to i64
  %113 = add nuw nsw i64 %109, %112
  %114 = trunc i64 %113 to i16
  %115 = lshr i64 %113, 16
  %116 = zext i16 %87 to i64
  %117 = add nuw nsw i64 %115, %116
  %118 = mul nuw i32 %22, %94
  %119 = zext i32 %118 to i64
  %120 = add nuw nsw i64 %117, %119
  %121 = trunc i64 %120 to i16
  %122 = lshr i64 %120, 16
  %123 = trunc i64 %122 to i16
  br label %124

124:                                              ; preds = %93, %86
  %125 = phi i16 [ 0, %86 ], [ %123, %93 ]
  %126 = phi i16 [ %87, %86 ], [ %121, %93 ]
  %127 = phi i16 [ %88, %86 ], [ %114, %93 ]
  %128 = phi i16 [ %89, %86 ], [ %106, %93 ]
  %129 = icmp ult i32 %15, 65536
  br i1 %129, label %162, label %130

130:                                              ; preds = %124
  %131 = zext i16 %128 to i64
  %132 = and i32 %24, 65535
  %133 = mul nuw i32 %132, %16
  %134 = zext i32 %133 to i64
  %135 = add nuw nsw i64 %131, %134
  %136 = trunc i64 %135 to i16
  %137 = lshr i64 %135, 16
  %138 = zext i16 %127 to i64
  %139 = add nuw nsw i64 %137, %138
  %140 = mul nuw i32 %25, %16
  %141 = zext i32 %140 to i64
  %142 = add nuw nsw i64 %139, %141
  %143 = trunc i64 %142 to i16
  %144 = lshr i64 %142, 16
  %145 = zext i16 %126 to i64
  %146 = add nuw nsw i64 %144, %145
  %147 = and i32 %21, 65535
  %148 = mul nuw i32 %147, %16
  %149 = zext i32 %148 to i64
  %150 = add nuw nsw i64 %146, %149
  %151 = trunc i64 %150 to i16
  %152 = lshr i64 %150, 16
  %153 = zext i16 %125 to i64
  %154 = add nuw nsw i64 %152, %153
  %155 = mul nuw i32 %22, %16
  %156 = zext i32 %155 to i64
  %157 = add nuw nsw i64 %154, %156
  %158 = trunc i64 %157 to i16
  %159 = lshr i64 %157, 16
  %160 = trunc i64 %159 to i16
  %161 = icmp sgt i16 %160, -1
  br i1 %161, label %162, label %173

162:                                              ; preds = %124, %130
  %163 = phi i16 [ %136, %130 ], [ %128, %124 ]
  %164 = phi i16 [ %143, %130 ], [ %127, %124 ]
  %165 = phi i16 [ %151, %130 ], [ %126, %124 ]
  %166 = phi i16 [ %158, %130 ], [ %125, %124 ]
  %167 = phi i16 [ %160, %130 ], [ 0, %124 ]
  store i64 %11, ptr %13, align 8, !tbaa !12
  %168 = tail call i16 @llvm.fshl.i16(i16 %167, i16 %166, i16 1)
  %169 = tail call i16 @llvm.fshl.i16(i16 %166, i16 %165, i16 1)
  %170 = tail call i16 @llvm.fshl.i16(i16 %165, i16 %164, i16 1)
  %171 = tail call i16 @llvm.fshl.i16(i16 %164, i16 %163, i16 1)
  %172 = shl i16 %163, 1
  br label %173

173:                                              ; preds = %162, %130
  %174 = phi i64 [ %11, %162 ], [ %12, %130 ]
  %175 = phi i16 [ %168, %162 ], [ %160, %130 ]
  %176 = phi i16 [ %169, %162 ], [ %158, %130 ]
  %177 = phi i16 [ %170, %162 ], [ %151, %130 ]
  %178 = phi i16 [ %171, %162 ], [ %143, %130 ]
  %179 = phi i16 [ %172, %162 ], [ %136, %130 ]
  %180 = zext i16 %175 to i32
  %181 = shl nuw i32 %180, 16
  %182 = zext i16 %176 to i32
  %183 = or i32 %181, %182
  %184 = getelementptr inbounds %struct.EXTEND, ptr %2, i64 0, i32 2
  store i32 %183, ptr %184, align 8, !tbaa !13
  %185 = zext i16 %177 to i32
  %186 = shl nuw i32 %185, 16
  %187 = zext i16 %178 to i32
  %188 = or i32 %186, %187
  %189 = getelementptr inbounds %struct.EXTEND, ptr %2, i64 0, i32 2, i32 1
  store i32 %188, ptr %189, align 4, !tbaa !14
  %190 = icmp sgt i16 %179, -1
  br i1 %190, label %199, label %191

191:                                              ; preds = %173
  %192 = add nsw i32 %188, 1
  store i32 %192, ptr %189, align 4, !tbaa !14
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = add nsw i32 %183, 1
  store i32 %195, ptr %184, align 8, !tbaa !13
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  store i32 -2147483648, ptr %184, align 8, !tbaa !13
  %198 = add nsw i64 %174, 1
  store i64 %198, ptr %13, align 8, !tbaa !12
  br label %199

199:                                              ; preds = %191, %197, %194, %173
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #1

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
!6 = !{!"EXTEND", !7, i64 0, !10, i64 8, !11, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"TYPE_2__", !7, i64 0, !7, i64 4}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !7, i64 16}
!14 = !{!6, !7, i64 20}
