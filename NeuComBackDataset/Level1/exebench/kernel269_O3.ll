; ModuleID = '../benchmarks/fine_grained/exebench/kernel269.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel269.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl = type { i32, i32, i32 }

@clients = dso_local local_unnamed_addr global ptr null, align 8
@SHUT_RDWR = dso_local local_unnamed_addr global i32 0, align 4
@CL_UNUSED = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @del_client(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @clients, align 8, !tbaa !5
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.cl, ptr %2, i64 %3
  %5 = getelementptr inbounds %struct.cl, ptr %2, i64 %3, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !9
  %7 = load i32, ptr @SHUT_RDWR, align 4, !tbaa !12
  %8 = tail call i32 @shutdown(i32 noundef %6, i32 noundef %7) #2
  %9 = getelementptr inbounds %struct.cl, ptr %2, i64 %3, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = load i32, ptr @SHUT_RDWR, align 4, !tbaa !12
  %12 = tail call i32 @shutdown(i32 noundef %10, i32 noundef %11) #2
  %13 = load i32, ptr %5, align 4, !tbaa !9
  %14 = tail call i32 @close(i32 noundef %13) #2
  %15 = load i32, ptr %9, align 4, !tbaa !13
  %16 = tail call i32 @close(i32 noundef %15) #2
  %17 = load i32, ptr @CL_UNUSED, align 4, !tbaa !12
  store i32 %17, ptr %4, align 4, !tbaa !14
  ret void
}

declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"cl", !11, i64 0, !11, i64 4, !11, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!10, !11, i64 4}
!14 = !{!10, !11, i64 0}
