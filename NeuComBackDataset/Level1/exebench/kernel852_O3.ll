; ModuleID = '../benchmarks/fine_grained/exebench/kernel852.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel852.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_zero = dso_local local_unnamed_addr global i32 0, align 4
@F_half = dso_local local_unnamed_addr global i32 0, align 4
@F_one = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ieee_single(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = load i32, ptr @F_zero, align 4, !tbaa !5
  %5 = icmp slt i32 %3, %4
  %6 = sub nsw i32 0, %3
  %7 = select i1 %5, i64 2147483648, i64 0
  %8 = select i1 %5, i32 %6, i32 %3
  %9 = load i32, ptr @F_half, align 4, !tbaa !5
  br label %10

10:                                               ; preds = %43, %2
  %11 = phi i32 [ 126, %2 ], [ %45, %43 ]
  %12 = phi i32 [ %8, %2 ], [ %44, %43 ]
  %13 = icmp slt i32 %12, %9
  br i1 %13, label %28, label %24

14:                                               ; preds = %40
  %15 = add nsw i32 %11, -5
  br label %24

16:                                               ; preds = %37
  %17 = add nsw i32 %11, -4
  br label %24

18:                                               ; preds = %34
  %19 = add nsw i32 %11, -3
  br label %24

20:                                               ; preds = %31
  %21 = add nsw i32 %11, -2
  br label %24

22:                                               ; preds = %28
  %23 = add nsw i32 %11, -1
  br label %24

24:                                               ; preds = %10, %22, %20, %18, %16, %14
  %25 = phi i32 [ %15, %14 ], [ %17, %16 ], [ %19, %18 ], [ %21, %20 ], [ %23, %22 ], [ %11, %10 ]
  %26 = phi i32 [ %41, %14 ], [ %38, %16 ], [ %35, %18 ], [ %32, %20 ], [ %29, %22 ], [ %12, %10 ]
  %27 = load i32, ptr @F_one, align 4, !tbaa !5
  br label %47

28:                                               ; preds = %10
  %29 = shl nsw i32 %12, 1
  %30 = icmp slt i32 %29, %9
  br i1 %30, label %31, label %22

31:                                               ; preds = %28
  %32 = shl nsw i32 %12, 2
  %33 = icmp slt i32 %32, %9
  br i1 %33, label %34, label %20

34:                                               ; preds = %31
  %35 = shl nsw i32 %12, 3
  %36 = icmp slt i32 %35, %9
  br i1 %36, label %37, label %18

37:                                               ; preds = %34
  %38 = shl nsw i32 %12, 4
  %39 = icmp slt i32 %38, %9
  br i1 %39, label %40, label %16

40:                                               ; preds = %37
  %41 = shl nsw i32 %12, 5
  %42 = icmp slt i32 %41, %9
  br i1 %42, label %43, label %14

43:                                               ; preds = %40
  %44 = shl nsw i32 %12, 6
  %45 = add nsw i32 %11, -6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %218, label %10, !llvm.loop !9

47:                                               ; preds = %24, %212
  %48 = phi i32 [ %214, %212 ], [ %25, %24 ]
  %49 = phi i32 [ %213, %212 ], [ %26, %24 ]
  %50 = icmp slt i32 %49, %27
  br i1 %50, label %51, label %212

51:                                               ; preds = %47
  %52 = shl nsw i32 %49, 1
  %53 = icmp slt i32 %52, %27
  %54 = select i1 %53, i32 0, i32 %27
  %55 = sub nsw i32 %52, %54
  %56 = shl nsw i32 %55, 1
  %57 = icmp slt i32 %56, %27
  %58 = select i1 %57, i32 0, i32 %27
  %59 = sub nsw i32 %56, %58
  %60 = shl nsw i32 %59, 1
  %61 = select i1 %57, i64 0, i64 2
  %62 = icmp sge i32 %60, %27
  %63 = zext i1 %62 to i64
  %64 = or i64 %61, %63
  %65 = select i1 %62, i32 %27, i32 0
  %66 = sub nsw i32 %60, %65
  %67 = shl nsw i32 %66, 1
  %68 = icmp slt i32 %67, %27
  %69 = select i1 %68, i32 0, i32 %27
  %70 = sub nsw i32 %67, %69
  %71 = shl nsw i32 %70, 1
  %72 = shl nuw nsw i64 %64, 2
  %73 = select i1 %68, i64 0, i64 2
  %74 = or i64 %72, %73
  %75 = icmp sge i32 %71, %27
  %76 = zext i1 %75 to i64
  %77 = or i64 %74, %76
  %78 = select i1 %75, i32 %27, i32 0
  %79 = sub nsw i32 %71, %78
  %80 = shl nsw i32 %79, 1
  %81 = icmp slt i32 %80, %27
  %82 = select i1 %81, i32 0, i32 %27
  %83 = sub nsw i32 %80, %82
  %84 = shl nsw i32 %83, 1
  %85 = shl nuw nsw i64 %77, 2
  %86 = select i1 %81, i64 0, i64 2
  %87 = or i64 %85, %86
  %88 = icmp sge i32 %84, %27
  %89 = zext i1 %88 to i64
  %90 = or i64 %87, %89
  %91 = select i1 %88, i32 %27, i32 0
  %92 = sub nsw i32 %84, %91
  %93 = shl nsw i32 %92, 1
  %94 = icmp slt i32 %93, %27
  %95 = select i1 %94, i32 0, i32 %27
  %96 = sub nsw i32 %93, %95
  %97 = shl nsw i32 %96, 1
  %98 = shl nuw nsw i64 %90, 2
  %99 = select i1 %94, i64 0, i64 2
  %100 = or i64 %98, %99
  %101 = icmp sge i32 %97, %27
  %102 = zext i1 %101 to i64
  %103 = or i64 %100, %102
  %104 = select i1 %101, i32 %27, i32 0
  %105 = sub nsw i32 %97, %104
  %106 = shl nsw i32 %105, 1
  %107 = icmp slt i32 %106, %27
  %108 = select i1 %107, i32 0, i32 %27
  %109 = sub nsw i32 %106, %108
  %110 = shl nsw i32 %109, 1
  %111 = shl nuw nsw i64 %103, 2
  %112 = select i1 %107, i64 0, i64 2
  %113 = or i64 %111, %112
  %114 = icmp sge i32 %110, %27
  %115 = zext i1 %114 to i64
  %116 = or i64 %113, %115
  %117 = select i1 %114, i32 %27, i32 0
  %118 = sub nsw i32 %110, %117
  %119 = shl nsw i32 %118, 1
  %120 = icmp slt i32 %119, %27
  %121 = select i1 %120, i32 0, i32 %27
  %122 = sub nsw i32 %119, %121
  %123 = shl nsw i32 %122, 1
  %124 = shl nuw nsw i64 %116, 2
  %125 = select i1 %120, i64 0, i64 2
  %126 = or i64 %124, %125
  %127 = icmp sge i32 %123, %27
  %128 = zext i1 %127 to i64
  %129 = or i64 %126, %128
  %130 = select i1 %127, i32 %27, i32 0
  %131 = sub nsw i32 %123, %130
  %132 = shl nsw i32 %131, 1
  %133 = icmp slt i32 %132, %27
  %134 = select i1 %133, i32 0, i32 %27
  %135 = sub nsw i32 %132, %134
  %136 = shl nsw i32 %135, 1
  %137 = shl nuw nsw i64 %129, 2
  %138 = select i1 %133, i64 0, i64 2
  %139 = or i64 %137, %138
  %140 = icmp sge i32 %136, %27
  %141 = zext i1 %140 to i64
  %142 = or i64 %139, %141
  %143 = select i1 %140, i32 %27, i32 0
  %144 = sub nsw i32 %136, %143
  %145 = shl nsw i32 %144, 1
  %146 = icmp slt i32 %145, %27
  %147 = select i1 %146, i32 0, i32 %27
  %148 = sub nsw i32 %145, %147
  %149 = shl nsw i32 %148, 1
  %150 = shl nuw nsw i64 %142, 2
  %151 = select i1 %146, i64 0, i64 2
  %152 = or i64 %150, %151
  %153 = icmp sge i32 %149, %27
  %154 = zext i1 %153 to i64
  %155 = or i64 %152, %154
  %156 = select i1 %153, i32 %27, i32 0
  %157 = sub nsw i32 %149, %156
  %158 = shl nsw i32 %157, 1
  %159 = icmp slt i32 %158, %27
  %160 = select i1 %159, i32 0, i32 %27
  %161 = sub nsw i32 %158, %160
  %162 = shl nsw i32 %161, 1
  %163 = shl nuw nsw i64 %155, 2
  %164 = select i1 %159, i64 0, i64 2
  %165 = or i64 %163, %164
  %166 = icmp sge i32 %162, %27
  %167 = zext i1 %166 to i64
  %168 = or i64 %165, %167
  %169 = select i1 %166, i32 %27, i32 0
  %170 = sub nsw i32 %162, %169
  %171 = shl nsw i32 %170, 1
  %172 = icmp slt i32 %171, %27
  %173 = select i1 %172, i32 0, i32 %27
  %174 = sub nsw i32 %171, %173
  %175 = shl nsw i32 %174, 1
  %176 = shl nuw nsw i64 %168, 2
  %177 = select i1 %172, i64 0, i64 2
  %178 = or i64 %176, %177
  %179 = icmp sge i32 %175, %27
  %180 = zext i1 %179 to i64
  %181 = or i64 %178, %180
  %182 = select i1 %179, i32 %27, i32 0
  %183 = sub nsw i32 %175, %182
  %184 = shl nsw i32 %183, 1
  %185 = icmp slt i32 %184, %27
  %186 = select i1 %185, i32 0, i32 %27
  %187 = sub nsw i32 %184, %186
  %188 = shl nsw i32 %187, 1
  %189 = shl nuw nsw i64 %181, 2
  %190 = select i1 %185, i64 0, i64 2
  %191 = or i64 %189, %190
  %192 = icmp sge i32 %188, %27
  %193 = zext i1 %192 to i64
  %194 = or i64 %191, %193
  %195 = select i1 %192, i32 %27, i32 0
  %196 = sub nsw i32 %188, %195
  %197 = shl nsw i32 %196, 1
  %198 = shl nuw nsw i64 %194, 1
  %199 = icmp sge i32 %197, %27
  %200 = zext i1 %199 to i64
  %201 = or i64 %198, %200
  %202 = select i1 %199, i32 %27, i32 0
  %203 = sub nsw i32 %197, %202
  %204 = icmp sge i32 %203, %9
  %205 = zext i1 %204 to i64
  %206 = add nuw nsw i64 %201, %205
  %207 = and i64 %206, 8388607
  %208 = sext i32 %48 to i64
  %209 = shl nsw i64 %208, 23
  %210 = or i64 %209, %207
  %211 = or i64 %210, %7
  br label %218

212:                                              ; preds = %47
  %213 = mul nsw i32 %49, %9
  %214 = add nuw nsw i32 %48, 1
  %215 = icmp eq i32 %214, 255
  br i1 %215, label %216, label %47, !llvm.loop !11

216:                                              ; preds = %212
  %217 = or i64 %7, 2147483647
  br label %218

218:                                              ; preds = %43, %51, %216
  %219 = phi i64 [ %211, %51 ], [ %217, %216 ], [ 0, %43 ]
  store i64 %219, ptr %1, align 8, !tbaa !12
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
