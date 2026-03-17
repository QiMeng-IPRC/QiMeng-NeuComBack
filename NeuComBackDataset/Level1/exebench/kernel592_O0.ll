; ModuleID = '../benchmarks/fine_grained/exebench/kernel592.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel592.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BotLoadCharacter = dso_local global i32 0, align 4
@BotFreeCharacter = dso_local global i32 0, align 4
@Characteristic_Float = dso_local global i32 0, align 4
@Characteristic_BFloat = dso_local global i32 0, align 4
@Characteristic_Integer = dso_local global i32 0, align 4
@Characteristic_BInteger = dso_local global i32 0, align 4
@Characteristic_String = dso_local global i32 0, align 4
@BotAllocChatState = dso_local global i32 0, align 4
@BotFreeChatState = dso_local global i32 0, align 4
@BotQueueConsoleMessage = dso_local global i32 0, align 4
@BotRemoveConsoleMessage = dso_local global i32 0, align 4
@BotNextConsoleMessage = dso_local global i32 0, align 4
@BotNumConsoleMessages = dso_local global i32 0, align 4
@BotInitialChat = dso_local global i32 0, align 4
@BotNumInitialChats = dso_local global i32 0, align 4
@BotReplyChat = dso_local global i32 0, align 4
@BotChatLength = dso_local global i32 0, align 4
@BotEnterChat = dso_local global i32 0, align 4
@BotGetChatMessage = dso_local global i32 0, align 4
@StringContains = dso_local global i32 0, align 4
@BotFindMatch = dso_local global i32 0, align 4
@BotMatchVariable = dso_local global i32 0, align 4
@UnifyWhiteSpaces = dso_local global i32 0, align 4
@BotReplaceSynonyms = dso_local global i32 0, align 4
@BotLoadChatFile = dso_local global i32 0, align 4
@BotSetChatGender = dso_local global i32 0, align 4
@BotSetChatName = dso_local global i32 0, align 4
@BotResetGoalState = dso_local global i32 0, align 4
@BotResetAvoidGoals = dso_local global i32 0, align 4
@BotRemoveFromAvoidGoals = dso_local global i32 0, align 4
@BotPushGoal = dso_local global i32 0, align 4
@BotPopGoal = dso_local global i32 0, align 4
@BotEmptyGoalStack = dso_local global i32 0, align 4
@BotDumpAvoidGoals = dso_local global i32 0, align 4
@BotDumpGoalStack = dso_local global i32 0, align 4
@BotGoalName = dso_local global i32 0, align 4
@BotGetTopGoal = dso_local global i32 0, align 4
@BotGetSecondGoal = dso_local global i32 0, align 4
@BotChooseLTGItem = dso_local global i32 0, align 4
@BotChooseNBGItem = dso_local global i32 0, align 4
@BotTouchingGoal = dso_local global i32 0, align 4
@BotItemGoalInVisButNotVisible = dso_local global i32 0, align 4
@BotGetLevelItemGoal = dso_local global i32 0, align 4
@BotGetNextCampSpotGoal = dso_local global i32 0, align 4
@BotGetMapLocationGoal = dso_local global i32 0, align 4
@BotAvoidGoalTime = dso_local global i32 0, align 4
@BotInitLevelItems = dso_local global i32 0, align 4
@BotUpdateEntityItems = dso_local global i32 0, align 4
@BotLoadItemWeights = dso_local global i32 0, align 4
@BotFreeItemWeights = dso_local global i32 0, align 4
@BotInterbreedGoalFuzzyLogic = dso_local global i32 0, align 4
@BotSaveGoalFuzzyLogic = dso_local global i32 0, align 4
@BotMutateGoalFuzzyLogic = dso_local global i32 0, align 4
@BotAllocGoalState = dso_local global i32 0, align 4
@BotFreeGoalState = dso_local global i32 0, align 4
@BotResetMoveState = dso_local global i32 0, align 4
@BotMoveToGoal = dso_local global i32 0, align 4
@BotMoveInDirection = dso_local global i32 0, align 4
@BotResetAvoidReach = dso_local global i32 0, align 4
@BotResetLastAvoidReach = dso_local global i32 0, align 4
@BotReachabilityArea = dso_local global i32 0, align 4
@BotMovementViewTarget = dso_local global i32 0, align 4
@BotPredictVisiblePosition = dso_local global i32 0, align 4
@BotAllocMoveState = dso_local global i32 0, align 4
@BotFreeMoveState = dso_local global i32 0, align 4
@BotInitMoveState = dso_local global i32 0, align 4
@BotInitAvoidReach = dso_local global i32 0, align 4
@BotChooseBestFightWeapon = dso_local global i32 0, align 4
@BotGetWeaponInfo = dso_local global i32 0, align 4
@BotLoadWeaponWeights = dso_local global i32 0, align 4
@BotAllocWeaponState = dso_local global i32 0, align 4
@BotFreeWeaponState = dso_local global i32 0, align 4
@BotResetWeaponState = dso_local global i32 0, align 4
@GeneticParentsAndChildSelection = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Init_AI_Export(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @BotLoadCharacter, align 4
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %4, i32 0, i32 73
  store i32 %3, ptr %5, align 4
  %6 = load i32, ptr @BotFreeCharacter, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %7, i32 0, i32 72
  store i32 %6, ptr %8, align 4
  %9 = load i32, ptr @Characteristic_Float, align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %10, i32 0, i32 71
  store i32 %9, ptr %11, align 4
  %12 = load i32, ptr @Characteristic_BFloat, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %13, i32 0, i32 70
  store i32 %12, ptr %14, align 4
  %15 = load i32, ptr @Characteristic_Integer, align 4
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %16, i32 0, i32 69
  store i32 %15, ptr %17, align 4
  %18 = load i32, ptr @Characteristic_BInteger, align 4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %19, i32 0, i32 68
  store i32 %18, ptr %20, align 4
  %21 = load i32, ptr @Characteristic_String, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %22, i32 0, i32 67
  store i32 %21, ptr %23, align 4
  %24 = load i32, ptr @BotAllocChatState, align 4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, ptr %25, i32 0, i32 66
  store i32 %24, ptr %26, align 4
  %27 = load i32, ptr @BotFreeChatState, align 4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %28, i32 0, i32 65
  store i32 %27, ptr %29, align 4
  %30 = load i32, ptr @BotQueueConsoleMessage, align 4
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, ptr %31, i32 0, i32 64
  store i32 %30, ptr %32, align 4
  %33 = load i32, ptr @BotRemoveConsoleMessage, align 4
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, ptr %34, i32 0, i32 63
  store i32 %33, ptr %35, align 4
  %36 = load i32, ptr @BotNextConsoleMessage, align 4
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, ptr %37, i32 0, i32 62
  store i32 %36, ptr %38, align 4
  %39 = load i32, ptr @BotNumConsoleMessages, align 4
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i32 0, i32 61
  store i32 %39, ptr %41, align 4
  %42 = load i32, ptr @BotInitialChat, align 4
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, ptr %43, i32 0, i32 60
  store i32 %42, ptr %44, align 4
  %45 = load i32, ptr @BotNumInitialChats, align 4
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, ptr %46, i32 0, i32 59
  store i32 %45, ptr %47, align 4
  %48 = load i32, ptr @BotReplyChat, align 4
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, ptr %49, i32 0, i32 58
  store i32 %48, ptr %50, align 4
  %51 = load i32, ptr @BotChatLength, align 4
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, ptr %52, i32 0, i32 57
  store i32 %51, ptr %53, align 4
  %54 = load i32, ptr @BotEnterChat, align 4
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, ptr %55, i32 0, i32 56
  store i32 %54, ptr %56, align 4
  %57 = load i32, ptr @BotGetChatMessage, align 4
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, ptr %58, i32 0, i32 55
  store i32 %57, ptr %59, align 4
  %60 = load i32, ptr @StringContains, align 4
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, ptr %61, i32 0, i32 54
  store i32 %60, ptr %62, align 4
  %63 = load i32, ptr @BotFindMatch, align 4
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, ptr %64, i32 0, i32 53
  store i32 %63, ptr %65, align 4
  %66 = load i32, ptr @BotMatchVariable, align 4
  %67 = load ptr, ptr %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, ptr %67, i32 0, i32 52
  store i32 %66, ptr %68, align 4
  %69 = load i32, ptr @UnifyWhiteSpaces, align 4
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, ptr %70, i32 0, i32 51
  store i32 %69, ptr %71, align 4
  %72 = load i32, ptr @BotReplaceSynonyms, align 4
  %73 = load ptr, ptr %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, ptr %73, i32 0, i32 50
  store i32 %72, ptr %74, align 4
  %75 = load i32, ptr @BotLoadChatFile, align 4
  %76 = load ptr, ptr %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, ptr %76, i32 0, i32 49
  store i32 %75, ptr %77, align 4
  %78 = load i32, ptr @BotSetChatGender, align 4
  %79 = load ptr, ptr %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, ptr %79, i32 0, i32 48
  store i32 %78, ptr %80, align 4
  %81 = load i32, ptr @BotSetChatName, align 4
  %82 = load ptr, ptr %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, ptr %82, i32 0, i32 47
  store i32 %81, ptr %83, align 4
  %84 = load i32, ptr @BotResetGoalState, align 4
  %85 = load ptr, ptr %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, ptr %85, i32 0, i32 46
  store i32 %84, ptr %86, align 4
  %87 = load i32, ptr @BotResetAvoidGoals, align 4
  %88 = load ptr, ptr %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, ptr %88, i32 0, i32 45
  store i32 %87, ptr %89, align 4
  %90 = load i32, ptr @BotRemoveFromAvoidGoals, align 4
  %91 = load ptr, ptr %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, ptr %91, i32 0, i32 44
  store i32 %90, ptr %92, align 4
  %93 = load i32, ptr @BotPushGoal, align 4
  %94 = load ptr, ptr %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, ptr %94, i32 0, i32 43
  store i32 %93, ptr %95, align 4
  %96 = load i32, ptr @BotPopGoal, align 4
  %97 = load ptr, ptr %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, ptr %97, i32 0, i32 42
  store i32 %96, ptr %98, align 4
  %99 = load i32, ptr @BotEmptyGoalStack, align 4
  %100 = load ptr, ptr %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, ptr %100, i32 0, i32 41
  store i32 %99, ptr %101, align 4
  %102 = load i32, ptr @BotDumpAvoidGoals, align 4
  %103 = load ptr, ptr %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, ptr %103, i32 0, i32 40
  store i32 %102, ptr %104, align 4
  %105 = load i32, ptr @BotDumpGoalStack, align 4
  %106 = load ptr, ptr %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, ptr %106, i32 0, i32 39
  store i32 %105, ptr %107, align 4
  %108 = load i32, ptr @BotGoalName, align 4
  %109 = load ptr, ptr %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, ptr %109, i32 0, i32 38
  store i32 %108, ptr %110, align 4
  %111 = load i32, ptr @BotGetTopGoal, align 4
  %112 = load ptr, ptr %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, ptr %112, i32 0, i32 37
  store i32 %111, ptr %113, align 4
  %114 = load i32, ptr @BotGetSecondGoal, align 4
  %115 = load ptr, ptr %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, ptr %115, i32 0, i32 36
  store i32 %114, ptr %116, align 4
  %117 = load i32, ptr @BotChooseLTGItem, align 4
  %118 = load ptr, ptr %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, ptr %118, i32 0, i32 35
  store i32 %117, ptr %119, align 4
  %120 = load i32, ptr @BotChooseNBGItem, align 4
  %121 = load ptr, ptr %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, ptr %121, i32 0, i32 34
  store i32 %120, ptr %122, align 4
  %123 = load i32, ptr @BotTouchingGoal, align 4
  %124 = load ptr, ptr %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, ptr %124, i32 0, i32 33
  store i32 %123, ptr %125, align 4
  %126 = load i32, ptr @BotItemGoalInVisButNotVisible, align 4
  %127 = load ptr, ptr %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, ptr %127, i32 0, i32 32
  store i32 %126, ptr %128, align 4
  %129 = load i32, ptr @BotGetLevelItemGoal, align 4
  %130 = load ptr, ptr %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, ptr %130, i32 0, i32 31
  store i32 %129, ptr %131, align 4
  %132 = load i32, ptr @BotGetNextCampSpotGoal, align 4
  %133 = load ptr, ptr %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, ptr %133, i32 0, i32 30
  store i32 %132, ptr %134, align 4
  %135 = load i32, ptr @BotGetMapLocationGoal, align 4
  %136 = load ptr, ptr %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, ptr %136, i32 0, i32 29
  store i32 %135, ptr %137, align 4
  %138 = load i32, ptr @BotAvoidGoalTime, align 4
  %139 = load ptr, ptr %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, ptr %139, i32 0, i32 28
  store i32 %138, ptr %140, align 4
  %141 = load i32, ptr @BotInitLevelItems, align 4
  %142 = load ptr, ptr %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, ptr %142, i32 0, i32 27
  store i32 %141, ptr %143, align 4
  %144 = load i32, ptr @BotUpdateEntityItems, align 4
  %145 = load ptr, ptr %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, ptr %145, i32 0, i32 26
  store i32 %144, ptr %146, align 4
  %147 = load i32, ptr @BotLoadItemWeights, align 4
  %148 = load ptr, ptr %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, ptr %148, i32 0, i32 25
  store i32 %147, ptr %149, align 4
  %150 = load i32, ptr @BotFreeItemWeights, align 4
  %151 = load ptr, ptr %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, ptr %151, i32 0, i32 24
  store i32 %150, ptr %152, align 4
  %153 = load i32, ptr @BotInterbreedGoalFuzzyLogic, align 4
  %154 = load ptr, ptr %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, ptr %154, i32 0, i32 23
  store i32 %153, ptr %155, align 4
  %156 = load i32, ptr @BotSaveGoalFuzzyLogic, align 4
  %157 = load ptr, ptr %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, ptr %157, i32 0, i32 22
  store i32 %156, ptr %158, align 4
  %159 = load i32, ptr @BotMutateGoalFuzzyLogic, align 4
  %160 = load ptr, ptr %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, ptr %160, i32 0, i32 21
  store i32 %159, ptr %161, align 4
  %162 = load i32, ptr @BotAllocGoalState, align 4
  %163 = load ptr, ptr %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, ptr %163, i32 0, i32 20
  store i32 %162, ptr %164, align 4
  %165 = load i32, ptr @BotFreeGoalState, align 4
  %166 = load ptr, ptr %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, ptr %166, i32 0, i32 19
  store i32 %165, ptr %167, align 4
  %168 = load i32, ptr @BotResetMoveState, align 4
  %169 = load ptr, ptr %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, ptr %169, i32 0, i32 18
  store i32 %168, ptr %170, align 4
  %171 = load i32, ptr @BotMoveToGoal, align 4
  %172 = load ptr, ptr %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, ptr %172, i32 0, i32 17
  store i32 %171, ptr %173, align 4
  %174 = load i32, ptr @BotMoveInDirection, align 4
  %175 = load ptr, ptr %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, ptr %175, i32 0, i32 16
  store i32 %174, ptr %176, align 4
  %177 = load i32, ptr @BotResetAvoidReach, align 4
  %178 = load ptr, ptr %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, ptr %178, i32 0, i32 15
  store i32 %177, ptr %179, align 4
  %180 = load i32, ptr @BotResetLastAvoidReach, align 4
  %181 = load ptr, ptr %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, ptr %181, i32 0, i32 14
  store i32 %180, ptr %182, align 4
  %183 = load i32, ptr @BotReachabilityArea, align 4
  %184 = load ptr, ptr %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, ptr %184, i32 0, i32 13
  store i32 %183, ptr %185, align 4
  %186 = load i32, ptr @BotMovementViewTarget, align 4
  %187 = load ptr, ptr %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, ptr %187, i32 0, i32 12
  store i32 %186, ptr %188, align 4
  %189 = load i32, ptr @BotPredictVisiblePosition, align 4
  %190 = load ptr, ptr %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, ptr %190, i32 0, i32 11
  store i32 %189, ptr %191, align 4
  %192 = load i32, ptr @BotAllocMoveState, align 4
  %193 = load ptr, ptr %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, ptr %193, i32 0, i32 10
  store i32 %192, ptr %194, align 4
  %195 = load i32, ptr @BotFreeMoveState, align 4
  %196 = load ptr, ptr %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, ptr %196, i32 0, i32 9
  store i32 %195, ptr %197, align 4
  %198 = load i32, ptr @BotInitMoveState, align 4
  %199 = load ptr, ptr %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, ptr %199, i32 0, i32 8
  store i32 %198, ptr %200, align 4
  %201 = load i32, ptr @BotInitAvoidReach, align 4
  %202 = load ptr, ptr %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, ptr %202, i32 0, i32 7
  store i32 %201, ptr %203, align 4
  %204 = load i32, ptr @BotChooseBestFightWeapon, align 4
  %205 = load ptr, ptr %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, ptr %205, i32 0, i32 6
  store i32 %204, ptr %206, align 4
  %207 = load i32, ptr @BotGetWeaponInfo, align 4
  %208 = load ptr, ptr %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, ptr %208, i32 0, i32 5
  store i32 %207, ptr %209, align 4
  %210 = load i32, ptr @BotLoadWeaponWeights, align 4
  %211 = load ptr, ptr %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, ptr %211, i32 0, i32 4
  store i32 %210, ptr %212, align 4
  %213 = load i32, ptr @BotAllocWeaponState, align 4
  %214 = load ptr, ptr %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, ptr %214, i32 0, i32 3
  store i32 %213, ptr %215, align 4
  %216 = load i32, ptr @BotFreeWeaponState, align 4
  %217 = load ptr, ptr %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, ptr %217, i32 0, i32 2
  store i32 %216, ptr %218, align 4
  %219 = load i32, ptr @BotResetWeaponState, align 4
  %220 = load ptr, ptr %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, ptr %220, i32 0, i32 1
  store i32 %219, ptr %221, align 4
  %222 = load i32, ptr @GeneticParentsAndChildSelection, align 4
  %223 = load ptr, ptr %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, ptr %223, i32 0, i32 0
  store i32 %222, ptr %224, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
