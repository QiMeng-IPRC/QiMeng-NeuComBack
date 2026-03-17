; ModuleID = '../benchmarks/fine_grained/exebench/kernel677.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel677.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i32, %struct.TYPE_5__, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }

@country_united_states = dso_local local_unnamed_addr global i32 0, align 4
@t35_provider_atsc = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @cea708_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @memset(ptr noundef %0, i32 noundef 0, i32 noundef 56) #3
  %3 = load i32, ptr @country_united_states, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 5
  store i32 %3, ptr %4, align 4, !tbaa !9
  %5 = load i32, ptr @t35_provider_atsc, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 4
  store i32 %5, ptr %6, align 8, !tbaa !13
  store i8 52, ptr %0, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  store i32 3, ptr %7, align 4, !tbaa !15
  %8 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store i32 1, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret i32 1
}

declare i32 @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

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
!9 = !{!10, !6, i64 52}
!10 = !{!"TYPE_6__", !7, i64 0, !6, i64 4, !11, i64 8, !12, i64 40, !6, i64 48, !6, i64 52}
!11 = !{!"TYPE_5__", !6, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!12 = !{!"long", !7, i64 0}
!13 = !{!10, !6, i64 48}
!14 = !{!10, !7, i64 0}
!15 = !{!10, !6, i64 4}
!16 = !{!10, !6, i64 8}
