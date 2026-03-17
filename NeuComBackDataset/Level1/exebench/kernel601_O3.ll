; ModuleID = '../benchmarks/fine_grained/exebench/kernel601.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel601.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdt_entries = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @load_gdt_entries() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gdt_entries, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %1, i8 0, i64 36, i1 false), !tbaa !9
  %2 = getelementptr inbounds i32, ptr %1, i64 9
  store i32 64, ptr %2, align 4, !tbaa !9
  %3 = getelementptr inbounds i32, ptr %1, i64 10
  store i32 154, ptr %3, align 4, !tbaa !9
  %4 = getelementptr inbounds i32, ptr %1, i64 11
  %5 = getelementptr inbounds i32, ptr %1, i64 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 64, ptr %5, align 4, !tbaa !9
  %6 = getelementptr inbounds i32, ptr %1, i64 18
  store i32 144, ptr %6, align 4, !tbaa !9
  %7 = getelementptr inbounds i32, ptr %1, i64 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
