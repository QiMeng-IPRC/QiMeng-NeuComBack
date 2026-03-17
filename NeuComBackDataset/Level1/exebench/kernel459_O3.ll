; ModuleID = '../benchmarks/fine_grained/exebench/kernel459.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel459.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@codes = dso_local local_unnamed_addr global ptr null, align 8
@loc = dso_local local_unnamed_addr global i64 0, align 8
@highLoc = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: nounwind uwtable
define dso_local void @emitJmp(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  store i32 %3, ptr %6, align 4, !tbaa !5
  %7 = load ptr, ptr @codes, align 8, !tbaa !9
  %8 = load i64, ptr @loc, align 8, !tbaa !11
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  store i32 %0, ptr %9, align 4, !tbaa !5
  %10 = add i64 %8, 1
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  store i32 %1, ptr %11, align 4, !tbaa !5
  %12 = add i64 %8, 2
  %13 = getelementptr inbounds i32, ptr %7, i64 %12
  store i32 %2, ptr %13, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, ptr %9, i64 3
  %15 = call i32 @memcpy(ptr noundef nonnull %14, ptr noundef nonnull %6, i32 noundef 4) #2
  %16 = load ptr, ptr @codes, align 8, !tbaa !9
  %17 = load i64, ptr @loc, align 8, !tbaa !11
  %18 = add i64 %17, 7
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  store i32 %4, ptr %19, align 4, !tbaa !5
  %20 = add i64 %17, 8
  store i64 %20, ptr @loc, align 8, !tbaa !11
  %21 = load i64, ptr @highLoc, align 8, !tbaa !11
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i64 %20, ptr @highLoc, align 8, !tbaa !11
  br label %24

24:                                               ; preds = %23, %5
  ret void
}

declare i32 @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
