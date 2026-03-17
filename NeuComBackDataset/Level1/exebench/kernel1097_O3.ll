; ModuleID = '../benchmarks/fine_grained/exebench/kernel1097.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1097.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pidListAlloc = dso_local local_unnamed_addr global i32 0, align 4
@pidList = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @ensurePidList(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @pidListAlloc, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  store i32 %0, ptr @pidListAlloc, align 4, !tbaa !5
  %5 = load i32, ptr @pidList, align 4, !tbaa !5
  %6 = shl i32 %0, 2
  %7 = tail call i32 @realloc(i32 noundef %5, i32 noundef %6) #2
  store i32 %7, ptr @pidList, align 4, !tbaa !5
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

declare i32 @realloc(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
