; ModuleID = '../benchmarks/fine_grained/exebench/kernel193.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel193.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8, i8 }

@iTableCacheIndex = dso_local global i32 0, align 4
@iTableCacheUsed = dso_local global ptr null, align 8
@iTableCache = dso_local global ptr null, align 8
@iTable = dso_local global ptr null, align 8
@allow_unify = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @ItableLookup(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, ptr %5, align 1
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %9 = load i32, ptr @iTableCacheIndex, align 4
  store i32 %9, ptr %8, align 4
  br label %10

10:                                               ; preds = %57, %3
  %11 = load i32, ptr %8, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %10
  %14 = load ptr, ptr @iTableCacheUsed, align 8
  %15 = load i32, ptr %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 1, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %13
  %21 = load i32, ptr %6, align 4
  %22 = load ptr, ptr @iTableCache, align 8
  %23 = load i32, ptr %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, ptr %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, ptr %25, i32 0, i32 0
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %21, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %20
  %30 = load i32, ptr %7, align 4
  %31 = load ptr, ptr @iTableCache, align 8
  %32 = load i32, ptr %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, ptr %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %30, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %29
  %39 = load i8, ptr %5, align 1
  %40 = zext i8 %39 to i32
  %41 = load ptr, ptr @iTableCache, align 8
  %42 = load i32, ptr %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, ptr %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, ptr %44, i32 0, i32 2
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %40, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load ptr, ptr @iTableCache, align 8
  %51 = load i32, ptr %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, ptr %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, ptr %53, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  store i8 %55, ptr %4, align 1
  br label %182

56:                                               ; preds = %38, %29, %20, %13
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %8, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, ptr %8, align 4
  br label %10, !llvm.loop !6

60:                                               ; preds = %10
  store i32 3, ptr %8, align 4
  br label %61

61:                                               ; preds = %109, %60
  %62 = load i32, ptr %8, align 4
  %63 = load i32, ptr @iTableCacheIndex, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %112

65:                                               ; preds = %61
  %66 = load ptr, ptr @iTableCacheUsed, align 8
  %67 = load i32, ptr %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %66, i64 %68
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 1, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %65
  %73 = load i32, ptr %6, align 4
  %74 = load ptr, ptr @iTableCache, align 8
  %75 = load i32, ptr %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, ptr %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, ptr %77, i32 0, i32 0
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %73, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %72
  %82 = load i32, ptr %7, align 4
  %83 = load ptr, ptr @iTableCache, align 8
  %84 = load i32, ptr %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, ptr %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, ptr %86, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %82, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %81
  %91 = load i8, ptr %5, align 1
  %92 = zext i8 %91 to i32
  %93 = load ptr, ptr @iTableCache, align 8
  %94 = load i32, ptr %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, ptr %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, ptr %96, i32 0, i32 2
  %98 = load i8, ptr %97, align 4
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %92, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %90
  %102 = load ptr, ptr @iTableCache, align 8
  %103 = load i32, ptr %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, ptr %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, ptr %105, i32 0, i32 3
  %107 = load i8, ptr %106, align 1
  store i8 %107, ptr %4, align 1
  br label %182

108:                                              ; preds = %90, %81, %72, %65
  br label %109

109:                                              ; preds = %108
  %110 = load i32, ptr %8, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, ptr %8, align 4
  br label %61, !llvm.loop !8

112:                                              ; preds = %61
  store i32 0, ptr %8, align 4
  br label %113

113:                                              ; preds = %167, %112
  %114 = load i32, ptr %8, align 4
  %115 = icmp slt i32 %114, 35
  br i1 %115, label %116, label %170

116:                                              ; preds = %113
  %117 = load i32, ptr %6, align 4
  %118 = load ptr, ptr @iTable, align 8
  %119 = load i32, ptr %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, ptr %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, ptr %121, i32 0, i32 0
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %117, %123
  br i1 %124, label %125, label %166

125:                                              ; preds = %116
  %126 = load i32, ptr %7, align 4
  %127 = load ptr, ptr @iTable, align 8
  %128 = load i32, ptr %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, ptr %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, ptr %130, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %126, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %125
  %135 = load i8, ptr %5, align 1
  %136 = zext i8 %135 to i32
  %137 = load ptr, ptr @iTable, align 8
  %138 = load i32, ptr %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, ptr %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, ptr %140, i32 0, i32 2
  %142 = load i8, ptr %141, align 4
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %136, %143
  br i1 %144, label %145, label %166

145:                                              ; preds = %134
  %146 = load i32, ptr @iTableCacheIndex, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr @iTableCacheIndex, align 4
  %148 = load i32, ptr @iTableCacheIndex, align 4
  %149 = icmp sge i32 %148, 4
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 0, ptr @iTableCacheIndex, align 4
  br label %151

151:                                              ; preds = %150, %145
  %152 = load ptr, ptr @iTableCache, align 8
  %153 = load i32, ptr @iTableCacheIndex, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, ptr %152, i64 %154
  %156 = load ptr, ptr @iTable, align 8
  %157 = load i32, ptr %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_3__, ptr %156, i64 %158
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %155, ptr align 4 %159, i64 12, i1 false)
  %160 = load ptr, ptr @iTableCacheUsed, align 8
  %161 = load i32, ptr @iTableCacheIndex, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, ptr %160, i64 %162
  store i32 1, ptr %163, align 4
  %164 = load i32, ptr %8, align 4
  %165 = trunc i32 %164 to i8
  store i8 %165, ptr %4, align 1
  br label %182

166:                                              ; preds = %134, %125, %116
  br label %167

167:                                              ; preds = %166
  %168 = load i32, ptr %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr %8, align 4
  br label %113, !llvm.loop !9

170:                                              ; preds = %113
  %171 = load i32, ptr @allow_unify, align 4
  %172 = icmp eq i32 1, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load i32, ptr %6, align 4
  %175 = icmp eq i32 0, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, ptr %7, align 4
  %178 = icmp eq i32 1, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store i8 0, ptr %4, align 1
  br label %182

180:                                              ; preds = %176, %173
  br label %181

181:                                              ; preds = %180, %170
  store i8 40, ptr %4, align 1
  br label %182

182:                                              ; preds = %181, %179, %151, %101, %49
  %183 = load i8, ptr %4, align 1
  ret i8 %183
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
