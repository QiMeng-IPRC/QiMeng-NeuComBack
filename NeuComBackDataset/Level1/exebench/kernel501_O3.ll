; ModuleID = '../benchmarks/fine_grained/exebench/kernel501.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel501.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @LzmaEncProps_Normalize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !5
  %3 = icmp slt i32 %2, 0
  %4 = select i1 %3, i32 5, i32 %2
  store i32 %4, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = icmp slt i32 %4, 6
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = shl nsw i32 %4, 1
  %12 = add nsw i32 %11, 14
  %13 = shl nuw i32 1, %12
  br label %17

14:                                               ; preds = %8
  %15 = icmp ult i32 %4, 8
  %16 = select i1 %15, i32 33554432, i32 67108864
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i32 [ %13, %10 ], [ %16, %14 ]
  store i32 %18, ptr %5, align 4, !tbaa !11
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i32 [ %18, %17 ], [ %6, %1 ]
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !12
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %106

24:                                               ; preds = %19
  %25 = icmp ugt i32 %22, 4096
  br i1 %25, label %102, label %104

26:                                               ; preds = %102
  %27 = icmp ugt i32 %22, 8192
  br i1 %27, label %28, label %104

28:                                               ; preds = %26
  %29 = icmp ugt i32 %22, 12288
  br i1 %29, label %30, label %104

30:                                               ; preds = %28
  %31 = icmp ugt i32 %22, 16384
  br i1 %31, label %32, label %104

32:                                               ; preds = %30
  %33 = icmp ugt i32 %22, 24576
  br i1 %33, label %34, label %104

34:                                               ; preds = %32
  %35 = icmp ugt i32 %22, 32768
  br i1 %35, label %36, label %104

36:                                               ; preds = %34
  %37 = icmp ugt i32 %22, 49152
  br i1 %37, label %38, label %104

38:                                               ; preds = %36
  %39 = icmp ugt i32 %22, 65536
  br i1 %39, label %40, label %104

40:                                               ; preds = %38
  %41 = icmp ugt i32 %22, 98304
  br i1 %41, label %42, label %104

42:                                               ; preds = %40
  %43 = icmp ugt i32 %22, 131072
  br i1 %43, label %44, label %104

44:                                               ; preds = %42
  %45 = icmp ugt i32 %22, 196608
  br i1 %45, label %46, label %104

46:                                               ; preds = %44
  %47 = icmp ugt i32 %22, 262144
  br i1 %47, label %48, label %104

48:                                               ; preds = %46
  %49 = icmp ugt i32 %22, 393216
  br i1 %49, label %50, label %104

50:                                               ; preds = %48
  %51 = icmp ugt i32 %22, 524288
  br i1 %51, label %52, label %104

52:                                               ; preds = %50
  %53 = icmp ugt i32 %22, 786432
  br i1 %53, label %54, label %104

54:                                               ; preds = %52
  %55 = icmp ugt i32 %22, 1048576
  br i1 %55, label %56, label %104

56:                                               ; preds = %54
  %57 = icmp ugt i32 %22, 1572864
  br i1 %57, label %58, label %104

58:                                               ; preds = %56
  %59 = icmp ugt i32 %22, 2097152
  br i1 %59, label %60, label %104

60:                                               ; preds = %58
  %61 = icmp ugt i32 %22, 3145728
  br i1 %61, label %62, label %104

62:                                               ; preds = %60
  %63 = icmp ugt i32 %22, 4194304
  br i1 %63, label %64, label %104

64:                                               ; preds = %62
  %65 = icmp ugt i32 %22, 6291456
  br i1 %65, label %66, label %104

66:                                               ; preds = %64
  %67 = icmp ugt i32 %22, 8388608
  br i1 %67, label %68, label %104

68:                                               ; preds = %66
  %69 = icmp ugt i32 %22, 12582912
  br i1 %69, label %70, label %104

70:                                               ; preds = %68
  %71 = icmp ugt i32 %22, 16777216
  br i1 %71, label %72, label %104

72:                                               ; preds = %70
  %73 = icmp ugt i32 %22, 25165824
  br i1 %73, label %74, label %104

74:                                               ; preds = %72
  %75 = icmp ugt i32 %22, 33554432
  br i1 %75, label %76, label %104

76:                                               ; preds = %74
  %77 = icmp ugt i32 %22, 50331648
  br i1 %77, label %78, label %104

78:                                               ; preds = %76
  %79 = icmp ugt i32 %22, 67108864
  br i1 %79, label %80, label %104

80:                                               ; preds = %78
  %81 = icmp ugt i32 %22, 100663296
  br i1 %81, label %82, label %104

82:                                               ; preds = %80
  %83 = icmp ugt i32 %22, 134217728
  br i1 %83, label %84, label %104

84:                                               ; preds = %82
  %85 = icmp ugt i32 %22, 201326592
  br i1 %85, label %86, label %104

86:                                               ; preds = %84
  %87 = icmp ugt i32 %22, 268435456
  br i1 %87, label %88, label %104

88:                                               ; preds = %86
  %89 = icmp ugt i32 %22, 402653184
  br i1 %89, label %90, label %104

90:                                               ; preds = %88
  %91 = icmp ugt i32 %22, 536870912
  br i1 %91, label %92, label %104

92:                                               ; preds = %90
  %93 = icmp ugt i32 %22, 805306368
  br i1 %93, label %94, label %104

94:                                               ; preds = %92
  %95 = icmp ugt i32 %22, 1073741824
  br i1 %95, label %96, label %104

96:                                               ; preds = %94
  %97 = icmp ugt i32 %22, 1610612736
  br i1 %97, label %98, label %104

98:                                               ; preds = %96
  %99 = icmp ugt i32 %22, -2147483648
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  %101 = icmp ugt i32 %22, -1073741824
  br i1 %101, label %106, label %104

102:                                              ; preds = %24
  %103 = icmp ugt i32 %22, 6144
  br i1 %103, label %26, label %104

104:                                              ; preds = %102, %28, %32, %36, %40, %44, %48, %52, %56, %60, %64, %68, %72, %76, %80, %84, %88, %92, %96, %100, %24, %26, %30, %34, %38, %42, %46, %50, %54, %58, %62, %66, %70, %74, %78, %82, %86, %90, %94, %98
  %105 = phi i32 [ 4096, %24 ], [ 8192, %26 ], [ 16384, %30 ], [ 32768, %34 ], [ 65536, %38 ], [ 131072, %42 ], [ 262144, %46 ], [ 524288, %50 ], [ 1048576, %54 ], [ 2097152, %58 ], [ 4194304, %62 ], [ 8388608, %66 ], [ 16777216, %70 ], [ 33554432, %74 ], [ 67108864, %78 ], [ 134217728, %82 ], [ 268435456, %86 ], [ 536870912, %90 ], [ 1073741824, %94 ], [ -2147483648, %98 ], [ 6144, %102 ], [ 12288, %28 ], [ 24576, %32 ], [ 49152, %36 ], [ 98304, %40 ], [ 196608, %44 ], [ 393216, %48 ], [ 786432, %52 ], [ 1572864, %56 ], [ 3145728, %60 ], [ 6291456, %64 ], [ 12582912, %68 ], [ 25165824, %72 ], [ 50331648, %76 ], [ 100663296, %80 ], [ 201326592, %84 ], [ 402653184, %88 ], [ 805306368, %92 ], [ 1610612736, %96 ], [ -1073741824, %100 ]
  store i32 %105, ptr %5, align 4, !tbaa !11
  br label %106

106:                                              ; preds = %104, %100, %19
  %107 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !13
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 3, ptr %107, align 4, !tbaa !13
  br label %111

111:                                              ; preds = %110, %106
  %112 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  %113 = load i64, ptr %112, align 8, !tbaa !14
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i64 0, ptr %112, align 8, !tbaa !14
  br label %116

116:                                              ; preds = %115, %111
  %117 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  %118 = load i32, ptr %117, align 8, !tbaa !15
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 2, ptr %117, align 8, !tbaa !15
  br label %121

121:                                              ; preds = %120, %116
  %122 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 6
  %123 = load i32, ptr %122, align 4, !tbaa !16
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = icmp sgt i32 %4, 4
  %127 = zext i1 %126 to i32
  store i32 %127, ptr %122, align 4, !tbaa !16
  br label %128

128:                                              ; preds = %125, %121
  %129 = phi i32 [ %127, %125 ], [ %123, %121 ]
  %130 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 7
  %131 = load i32, ptr %130, align 8, !tbaa !17
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = icmp slt i32 %4, 7
  %135 = select i1 %134, i32 32, i32 64
  store i32 %135, ptr %130, align 8, !tbaa !17
  br label %136

136:                                              ; preds = %133, %128
  %137 = phi i32 [ %135, %133 ], [ %131, %128 ]
  %138 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 8
  %139 = load i32, ptr %138, align 4, !tbaa !18
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = icmp ne i32 %129, 0
  %143 = zext i1 %142 to i32
  store i32 %143, ptr %138, align 4, !tbaa !18
  br label %144

144:                                              ; preds = %141, %136
  %145 = phi i32 [ %143, %141 ], [ %139, %136 ]
  %146 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 9
  %147 = load i32, ptr %146, align 8, !tbaa !19
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i32 4, ptr %146, align 8, !tbaa !19
  br label %150

150:                                              ; preds = %149, %144
  %151 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 10
  %152 = load i32, ptr %151, align 4, !tbaa !20
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = lshr i32 %137, 1
  %156 = add nuw nsw i32 %155, 16
  %157 = icmp eq i32 %145, 0
  %158 = zext i1 %157 to i32
  %159 = lshr i32 %156, %158
  store i32 %159, ptr %151, align 4, !tbaa !20
  br label %160

160:                                              ; preds = %154, %150
  %161 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 11
  %162 = load i32, ptr %161, align 8, !tbaa !21
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = icmp eq i32 %145, 0
  %166 = icmp eq i32 %129, 0
  %167 = select i1 %165, i1 true, i1 %166
  %168 = select i1 %167, i32 1, i32 2
  store i32 %168, ptr %161, align 8, !tbaa !21
  br label %169

169:                                              ; preds = %164, %160
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !7, i64 8}
!13 = !{!6, !7, i64 12}
!14 = !{!6, !10, i64 16}
!15 = !{!6, !7, i64 24}
!16 = !{!6, !7, i64 28}
!17 = !{!6, !7, i64 32}
!18 = !{!6, !7, i64 36}
!19 = !{!6, !7, i64 40}
!20 = !{!6, !7, i64 44}
!21 = !{!6, !7, i64 48}
