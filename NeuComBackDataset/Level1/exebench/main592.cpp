#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  GeneticParentsAndChildSelection; int /*<<< orphan*/  BotResetWeaponState; int /*<<< orphan*/  BotFreeWeaponState; int /*<<< orphan*/  BotAllocWeaponState; int /*<<< orphan*/  BotLoadWeaponWeights; int /*<<< orphan*/  BotGetWeaponInfo; int /*<<< orphan*/  BotChooseBestFightWeapon; int /*<<< orphan*/  BotInitAvoidReach; int /*<<< orphan*/  BotInitMoveState; int /*<<< orphan*/  BotFreeMoveState; int /*<<< orphan*/  BotAllocMoveState; int /*<<< orphan*/  BotPredictVisiblePosition; int /*<<< orphan*/  BotMovementViewTarget; int /*<<< orphan*/  BotReachabilityArea; int /*<<< orphan*/  BotResetLastAvoidReach; int /*<<< orphan*/  BotResetAvoidReach; int /*<<< orphan*/  BotMoveInDirection; int /*<<< orphan*/  BotMoveToGoal; int /*<<< orphan*/  BotResetMoveState; int /*<<< orphan*/  BotFreeGoalState; int /*<<< orphan*/  BotAllocGoalState; int /*<<< orphan*/  BotMutateGoalFuzzyLogic; int /*<<< orphan*/  BotSaveGoalFuzzyLogic; int /*<<< orphan*/  BotInterbreedGoalFuzzyLogic; int /*<<< orphan*/  BotFreeItemWeights; int /*<<< orphan*/  BotLoadItemWeights; int /*<<< orphan*/  BotUpdateEntityItems; int /*<<< orphan*/  BotInitLevelItems; int /*<<< orphan*/  BotAvoidGoalTime; int /*<<< orphan*/  BotGetMapLocationGoal; int /*<<< orphan*/  BotGetNextCampSpotGoal; int /*<<< orphan*/  BotGetLevelItemGoal; int /*<<< orphan*/  BotItemGoalInVisButNotVisible; int /*<<< orphan*/  BotTouchingGoal; int /*<<< orphan*/  BotChooseNBGItem; int /*<<< orphan*/  BotChooseLTGItem; int /*<<< orphan*/  BotGetSecondGoal; int /*<<< orphan*/  BotGetTopGoal; int /*<<< orphan*/  BotGoalName; int /*<<< orphan*/  BotDumpGoalStack; int /*<<< orphan*/  BotDumpAvoidGoals; int /*<<< orphan*/  BotEmptyGoalStack; int /*<<< orphan*/  BotPopGoal; int /*<<< orphan*/  BotPushGoal; int /*<<< orphan*/  BotRemoveFromAvoidGoals; int /*<<< orphan*/  BotResetAvoidGoals; int /*<<< orphan*/  BotResetGoalState; int /*<<< orphan*/  BotSetChatName; int /*<<< orphan*/  BotSetChatGender; int /*<<< orphan*/  BotLoadChatFile; int /*<<< orphan*/  BotReplaceSynonyms; int /*<<< orphan*/  UnifyWhiteSpaces; int /*<<< orphan*/  BotMatchVariable; int /*<<< orphan*/  BotFindMatch; int /*<<< orphan*/  StringContains; int /*<<< orphan*/  BotGetChatMessage; int /*<<< orphan*/  BotEnterChat; int /*<<< orphan*/  BotChatLength; int /*<<< orphan*/  BotReplyChat; int /*<<< orphan*/  BotNumInitialChats; int /*<<< orphan*/  BotInitialChat; int /*<<< orphan*/  BotNumConsoleMessages; int /*<<< orphan*/  BotNextConsoleMessage; int /*<<< orphan*/  BotRemoveConsoleMessage; int /*<<< orphan*/  BotQueueConsoleMessage; int /*<<< orphan*/  BotFreeChatState; int /*<<< orphan*/  BotAllocChatState; int /*<<< orphan*/  Characteristic_String; int /*<<< orphan*/  Characteristic_BInteger; int /*<<< orphan*/  Characteristic_Integer; int /*<<< orphan*/  Characteristic_BFloat; int /*<<< orphan*/  Characteristic_Float; int /*<<< orphan*/  BotFreeCharacter; int /*<<< orphan*/  BotLoadCharacter; } ;
typedef  TYPE_1__ ai_export_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  BotAllocChatState ; 
extern  int /*<<< orphan*/  BotAllocGoalState ; 
extern  int /*<<< orphan*/  BotAllocMoveState ; 
extern  int /*<<< orphan*/  BotAllocWeaponState ; 
extern  int /*<<< orphan*/  BotAvoidGoalTime ; 
extern  int /*<<< orphan*/  BotChatLength ; 
extern  int /*<<< orphan*/  BotChooseBestFightWeapon ; 
extern  int /*<<< orphan*/  BotChooseLTGItem ; 
extern  int /*<<< orphan*/  BotChooseNBGItem ; 
extern  int /*<<< orphan*/  BotDumpAvoidGoals ; 
extern  int /*<<< orphan*/  BotDumpGoalStack ; 
extern  int /*<<< orphan*/  BotEmptyGoalStack ; 
extern  int /*<<< orphan*/  BotEnterChat ; 
extern  int /*<<< orphan*/  BotFindMatch ; 
extern  int /*<<< orphan*/  BotFreeCharacter ; 
extern  int /*<<< orphan*/  BotFreeChatState ; 
extern  int /*<<< orphan*/  BotFreeGoalState ; 
extern  int /*<<< orphan*/  BotFreeItemWeights ; 
extern  int /*<<< orphan*/  BotFreeMoveState ; 
extern  int /*<<< orphan*/  BotFreeWeaponState ; 
extern  int /*<<< orphan*/  BotGetChatMessage ; 
extern  int /*<<< orphan*/  BotGetLevelItemGoal ; 
extern  int /*<<< orphan*/  BotGetMapLocationGoal ; 
extern  int /*<<< orphan*/  BotGetNextCampSpotGoal ; 
extern  int /*<<< orphan*/  BotGetSecondGoal ; 
extern  int /*<<< orphan*/  BotGetTopGoal ; 
extern  int /*<<< orphan*/  BotGetWeaponInfo ; 
extern  int /*<<< orphan*/  BotGoalName ; 
extern  int /*<<< orphan*/  BotInitAvoidReach ; 
extern  int /*<<< orphan*/  BotInitLevelItems ; 
extern  int /*<<< orphan*/  BotInitMoveState ; 
extern  int /*<<< orphan*/  BotInitialChat ; 
extern  int /*<<< orphan*/  BotInterbreedGoalFuzzyLogic ; 
extern  int /*<<< orphan*/  BotItemGoalInVisButNotVisible ; 
extern  int /*<<< orphan*/  BotLoadCharacter ; 
extern  int /*<<< orphan*/  BotLoadChatFile ; 
extern  int /*<<< orphan*/  BotLoadItemWeights ; 
extern  int /*<<< orphan*/  BotLoadWeaponWeights ; 
extern  int /*<<< orphan*/  BotMatchVariable ; 
extern  int /*<<< orphan*/  BotMoveInDirection ; 
extern  int /*<<< orphan*/  BotMoveToGoal ; 
extern  int /*<<< orphan*/  BotMovementViewTarget ; 
extern  int /*<<< orphan*/  BotMutateGoalFuzzyLogic ; 
extern  int /*<<< orphan*/  BotNextConsoleMessage ; 
extern  int /*<<< orphan*/  BotNumConsoleMessages ; 
extern  int /*<<< orphan*/  BotNumInitialChats ; 
extern  int /*<<< orphan*/  BotPopGoal ; 
extern  int /*<<< orphan*/  BotPredictVisiblePosition ; 
extern  int /*<<< orphan*/  BotPushGoal ; 
extern  int /*<<< orphan*/  BotQueueConsoleMessage ; 
extern  int /*<<< orphan*/  BotReachabilityArea ; 
extern  int /*<<< orphan*/  BotRemoveConsoleMessage ; 
extern  int /*<<< orphan*/  BotRemoveFromAvoidGoals ; 
extern  int /*<<< orphan*/  BotReplaceSynonyms ; 
extern  int /*<<< orphan*/  BotReplyChat ; 
extern  int /*<<< orphan*/  BotResetAvoidGoals ; 
extern  int /*<<< orphan*/  BotResetAvoidReach ; 
extern  int /*<<< orphan*/  BotResetGoalState ; 
extern  int /*<<< orphan*/  BotResetLastAvoidReach ; 
extern  int /*<<< orphan*/  BotResetMoveState ; 
extern  int /*<<< orphan*/  BotResetWeaponState ; 
extern  int /*<<< orphan*/  BotSaveGoalFuzzyLogic ; 
extern  int /*<<< orphan*/  BotSetChatGender ; 
extern  int /*<<< orphan*/  BotSetChatName ; 
extern  int /*<<< orphan*/  BotTouchingGoal ; 
extern  int /*<<< orphan*/  BotUpdateEntityItems ; 
extern  int /*<<< orphan*/  Characteristic_BFloat ; 
extern  int /*<<< orphan*/  Characteristic_BInteger ; 
extern  int /*<<< orphan*/  Characteristic_Float ; 
extern  int /*<<< orphan*/  Characteristic_Integer ; 
extern  int /*<<< orphan*/  Characteristic_String ; 
extern  int /*<<< orphan*/  GeneticParentsAndChildSelection ; 
extern  int /*<<< orphan*/  StringContains ; 
extern  int /*<<< orphan*/  UnifyWhiteSpaces ; 
extern "C" { void Init_AI_Export( ai_export_t *ai );
 }

#include <vector>
#include <nlohmann/json.hpp>
#include <fstream>
#include <iomanip>
#include <clib/synthesizer.h>
#include <time.h>
#include <math.h>
#include <iostream>
char* output_file;
char* pre_accel_dump_file;  // optional dump file.
using json = nlohmann::json;
const char* __asan_default_options() {
  return "detect_leaks=0";
}

clock_t AcceleratorStart;
clock_t AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
  AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
  AcceleratorTotalNanos += (clock()) - AcceleratorStart;
}

void write_output(TYPE_1__* ai) {
  json output_json;
  TYPE_1__ output_temp_1 = *ai;
  json output_temp_2;

  output_temp_2["GeneticParentsAndChildSelection"] = output_temp_1.GeneticParentsAndChildSelection;

  output_temp_2["BotResetWeaponState"] = output_temp_1.BotResetWeaponState;

  output_temp_2["BotFreeWeaponState"] = output_temp_1.BotFreeWeaponState;

  output_temp_2["BotAllocWeaponState"] = output_temp_1.BotAllocWeaponState;

  output_temp_2["BotLoadWeaponWeights"] = output_temp_1.BotLoadWeaponWeights;

  output_temp_2["BotGetWeaponInfo"] = output_temp_1.BotGetWeaponInfo;

  output_temp_2["BotChooseBestFightWeapon"] = output_temp_1.BotChooseBestFightWeapon;

  output_temp_2["BotInitAvoidReach"] = output_temp_1.BotInitAvoidReach;

  output_temp_2["BotInitMoveState"] = output_temp_1.BotInitMoveState;

  output_temp_2["BotFreeMoveState"] = output_temp_1.BotFreeMoveState;

  output_temp_2["BotAllocMoveState"] = output_temp_1.BotAllocMoveState;

  output_temp_2["BotPredictVisiblePosition"] = output_temp_1.BotPredictVisiblePosition;

  output_temp_2["BotMovementViewTarget"] = output_temp_1.BotMovementViewTarget;

  output_temp_2["BotReachabilityArea"] = output_temp_1.BotReachabilityArea;

  output_temp_2["BotResetLastAvoidReach"] = output_temp_1.BotResetLastAvoidReach;

  output_temp_2["BotResetAvoidReach"] = output_temp_1.BotResetAvoidReach;

  output_temp_2["BotMoveInDirection"] = output_temp_1.BotMoveInDirection;

  output_temp_2["BotMoveToGoal"] = output_temp_1.BotMoveToGoal;

  output_temp_2["BotResetMoveState"] = output_temp_1.BotResetMoveState;

  output_temp_2["BotFreeGoalState"] = output_temp_1.BotFreeGoalState;

  output_temp_2["BotAllocGoalState"] = output_temp_1.BotAllocGoalState;

  output_temp_2["BotMutateGoalFuzzyLogic"] = output_temp_1.BotMutateGoalFuzzyLogic;

  output_temp_2["BotSaveGoalFuzzyLogic"] = output_temp_1.BotSaveGoalFuzzyLogic;

  output_temp_2["BotInterbreedGoalFuzzyLogic"] = output_temp_1.BotInterbreedGoalFuzzyLogic;

  output_temp_2["BotFreeItemWeights"] = output_temp_1.BotFreeItemWeights;

  output_temp_2["BotLoadItemWeights"] = output_temp_1.BotLoadItemWeights;

  output_temp_2["BotUpdateEntityItems"] = output_temp_1.BotUpdateEntityItems;

  output_temp_2["BotInitLevelItems"] = output_temp_1.BotInitLevelItems;

  output_temp_2["BotAvoidGoalTime"] = output_temp_1.BotAvoidGoalTime;

  output_temp_2["BotGetMapLocationGoal"] = output_temp_1.BotGetMapLocationGoal;

  output_temp_2["BotGetNextCampSpotGoal"] = output_temp_1.BotGetNextCampSpotGoal;

  output_temp_2["BotGetLevelItemGoal"] = output_temp_1.BotGetLevelItemGoal;

  output_temp_2["BotItemGoalInVisButNotVisible"] = output_temp_1.BotItemGoalInVisButNotVisible;

  output_temp_2["BotTouchingGoal"] = output_temp_1.BotTouchingGoal;

  output_temp_2["BotChooseNBGItem"] = output_temp_1.BotChooseNBGItem;

  output_temp_2["BotChooseLTGItem"] = output_temp_1.BotChooseLTGItem;

  output_temp_2["BotGetSecondGoal"] = output_temp_1.BotGetSecondGoal;

  output_temp_2["BotGetTopGoal"] = output_temp_1.BotGetTopGoal;

  output_temp_2["BotGoalName"] = output_temp_1.BotGoalName;

  output_temp_2["BotDumpGoalStack"] = output_temp_1.BotDumpGoalStack;

  output_temp_2["BotDumpAvoidGoals"] = output_temp_1.BotDumpAvoidGoals;

  output_temp_2["BotEmptyGoalStack"] = output_temp_1.BotEmptyGoalStack;

  output_temp_2["BotPopGoal"] = output_temp_1.BotPopGoal;

  output_temp_2["BotPushGoal"] = output_temp_1.BotPushGoal;

  output_temp_2["BotRemoveFromAvoidGoals"] = output_temp_1.BotRemoveFromAvoidGoals;

  output_temp_2["BotResetAvoidGoals"] = output_temp_1.BotResetAvoidGoals;

  output_temp_2["BotResetGoalState"] = output_temp_1.BotResetGoalState;

  output_temp_2["BotSetChatName"] = output_temp_1.BotSetChatName;

  output_temp_2["BotSetChatGender"] = output_temp_1.BotSetChatGender;

  output_temp_2["BotLoadChatFile"] = output_temp_1.BotLoadChatFile;

  output_temp_2["BotReplaceSynonyms"] = output_temp_1.BotReplaceSynonyms;

  output_temp_2["UnifyWhiteSpaces"] = output_temp_1.UnifyWhiteSpaces;

  output_temp_2["BotMatchVariable"] = output_temp_1.BotMatchVariable;

  output_temp_2["BotFindMatch"] = output_temp_1.BotFindMatch;

  output_temp_2["StringContains"] = output_temp_1.StringContains;

  output_temp_2["BotGetChatMessage"] = output_temp_1.BotGetChatMessage;

  output_temp_2["BotEnterChat"] = output_temp_1.BotEnterChat;

  output_temp_2["BotChatLength"] = output_temp_1.BotChatLength;

  output_temp_2["BotReplyChat"] = output_temp_1.BotReplyChat;

  output_temp_2["BotNumInitialChats"] = output_temp_1.BotNumInitialChats;

  output_temp_2["BotInitialChat"] = output_temp_1.BotInitialChat;

  output_temp_2["BotNumConsoleMessages"] = output_temp_1.BotNumConsoleMessages;

  output_temp_2["BotNextConsoleMessage"] = output_temp_1.BotNextConsoleMessage;

  output_temp_2["BotRemoveConsoleMessage"] = output_temp_1.BotRemoveConsoleMessage;

  output_temp_2["BotQueueConsoleMessage"] = output_temp_1.BotQueueConsoleMessage;

  output_temp_2["BotFreeChatState"] = output_temp_1.BotFreeChatState;

  output_temp_2["BotAllocChatState"] = output_temp_1.BotAllocChatState;

  output_temp_2["Characteristic_String"] = output_temp_1.Characteristic_String;

  output_temp_2["Characteristic_BInteger"] = output_temp_1.Characteristic_BInteger;

  output_temp_2["Characteristic_Integer"] = output_temp_1.Characteristic_Integer;

  output_temp_2["Characteristic_BFloat"] = output_temp_1.Characteristic_BFloat;

  output_temp_2["Characteristic_Float"] = output_temp_1.Characteristic_Float;

  output_temp_2["BotFreeCharacter"] = output_temp_1.BotFreeCharacter;

  output_temp_2["BotLoadCharacter"] = output_temp_1.BotLoadCharacter;
  output_json["ai"] = output_temp_2;

  output_json["BotAllocChatState"] = BotAllocChatState;

  output_json["BotAllocGoalState"] = BotAllocGoalState;

  output_json["BotAllocMoveState"] = BotAllocMoveState;

  output_json["BotAllocWeaponState"] = BotAllocWeaponState;

  output_json["BotAvoidGoalTime"] = BotAvoidGoalTime;

  output_json["BotChatLength"] = BotChatLength;

  output_json["BotChooseBestFightWeapon"] = BotChooseBestFightWeapon;

  output_json["BotChooseLTGItem"] = BotChooseLTGItem;

  output_json["BotChooseNBGItem"] = BotChooseNBGItem;

  output_json["BotDumpAvoidGoals"] = BotDumpAvoidGoals;

  output_json["BotDumpGoalStack"] = BotDumpGoalStack;

  output_json["BotEmptyGoalStack"] = BotEmptyGoalStack;

  output_json["BotEnterChat"] = BotEnterChat;

  output_json["BotFindMatch"] = BotFindMatch;

  output_json["BotFreeCharacter"] = BotFreeCharacter;

  output_json["BotFreeChatState"] = BotFreeChatState;

  output_json["BotFreeGoalState"] = BotFreeGoalState;

  output_json["BotFreeItemWeights"] = BotFreeItemWeights;

  output_json["BotFreeMoveState"] = BotFreeMoveState;

  output_json["BotFreeWeaponState"] = BotFreeWeaponState;

  output_json["BotGetChatMessage"] = BotGetChatMessage;

  output_json["BotGetLevelItemGoal"] = BotGetLevelItemGoal;

  output_json["BotGetMapLocationGoal"] = BotGetMapLocationGoal;

  output_json["BotGetNextCampSpotGoal"] = BotGetNextCampSpotGoal;

  output_json["BotGetSecondGoal"] = BotGetSecondGoal;

  output_json["BotGetTopGoal"] = BotGetTopGoal;

  output_json["BotGetWeaponInfo"] = BotGetWeaponInfo;

  output_json["BotGoalName"] = BotGoalName;

  output_json["BotInitAvoidReach"] = BotInitAvoidReach;

  output_json["BotInitLevelItems"] = BotInitLevelItems;

  output_json["BotInitMoveState"] = BotInitMoveState;

  output_json["BotInitialChat"] = BotInitialChat;

  output_json["BotInterbreedGoalFuzzyLogic"] = BotInterbreedGoalFuzzyLogic;

  output_json["BotItemGoalInVisButNotVisible"] = BotItemGoalInVisButNotVisible;

  output_json["BotLoadCharacter"] = BotLoadCharacter;

  output_json["BotLoadChatFile"] = BotLoadChatFile;

  output_json["BotLoadItemWeights"] = BotLoadItemWeights;

  output_json["BotLoadWeaponWeights"] = BotLoadWeaponWeights;

  output_json["BotMatchVariable"] = BotMatchVariable;

  output_json["BotMoveInDirection"] = BotMoveInDirection;

  output_json["BotMoveToGoal"] = BotMoveToGoal;

  output_json["BotMovementViewTarget"] = BotMovementViewTarget;

  output_json["BotMutateGoalFuzzyLogic"] = BotMutateGoalFuzzyLogic;

  output_json["BotNextConsoleMessage"] = BotNextConsoleMessage;

  output_json["BotNumConsoleMessages"] = BotNumConsoleMessages;

  output_json["BotNumInitialChats"] = BotNumInitialChats;

  output_json["BotPopGoal"] = BotPopGoal;

  output_json["BotPredictVisiblePosition"] = BotPredictVisiblePosition;

  output_json["BotPushGoal"] = BotPushGoal;

  output_json["BotQueueConsoleMessage"] = BotQueueConsoleMessage;

  output_json["BotReachabilityArea"] = BotReachabilityArea;

  output_json["BotRemoveConsoleMessage"] = BotRemoveConsoleMessage;

  output_json["BotRemoveFromAvoidGoals"] = BotRemoveFromAvoidGoals;

  output_json["BotReplaceSynonyms"] = BotReplaceSynonyms;

  output_json["BotReplyChat"] = BotReplyChat;

  output_json["BotResetAvoidGoals"] = BotResetAvoidGoals;

  output_json["BotResetAvoidReach"] = BotResetAvoidReach;

  output_json["BotResetGoalState"] = BotResetGoalState;

  output_json["BotResetLastAvoidReach"] = BotResetLastAvoidReach;

  output_json["BotResetMoveState"] = BotResetMoveState;

  output_json["BotResetWeaponState"] = BotResetWeaponState;

  output_json["BotSaveGoalFuzzyLogic"] = BotSaveGoalFuzzyLogic;

  output_json["BotSetChatGender"] = BotSetChatGender;

  output_json["BotSetChatName"] = BotSetChatName;

  output_json["BotTouchingGoal"] = BotTouchingGoal;

  output_json["BotUpdateEntityItems"] = BotUpdateEntityItems;

  output_json["Characteristic_BFloat"] = Characteristic_BFloat;

  output_json["Characteristic_BInteger"] = Characteristic_BInteger;

  output_json["Characteristic_Float"] = Characteristic_Float;

  output_json["Characteristic_Integer"] = Characteristic_Integer;

  output_json["Characteristic_String"] = Characteristic_String;

  output_json["GeneticParentsAndChildSelection"] = GeneticParentsAndChildSelection;

  output_json["StringContains"] = StringContains;

  output_json["UnifyWhiteSpaces"] = UnifyWhiteSpaces;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ai_pointer__GeneticParentsAndChildSelection = input_json["ai"]["GeneticParentsAndChildSelection"];
  int ai_pointer__BotResetWeaponState = input_json["ai"]["BotResetWeaponState"];
  int ai_pointer__BotFreeWeaponState = input_json["ai"]["BotFreeWeaponState"];
  int ai_pointer__BotAllocWeaponState = input_json["ai"]["BotAllocWeaponState"];
  int ai_pointer__BotLoadWeaponWeights = input_json["ai"]["BotLoadWeaponWeights"];
  int ai_pointer__BotGetWeaponInfo = input_json["ai"]["BotGetWeaponInfo"];
  int ai_pointer__BotChooseBestFightWeapon = input_json["ai"]["BotChooseBestFightWeapon"];
  int ai_pointer__BotInitAvoidReach = input_json["ai"]["BotInitAvoidReach"];
  int ai_pointer__BotInitMoveState = input_json["ai"]["BotInitMoveState"];
  int ai_pointer__BotFreeMoveState = input_json["ai"]["BotFreeMoveState"];
  int ai_pointer__BotAllocMoveState = input_json["ai"]["BotAllocMoveState"];
  int ai_pointer__BotPredictVisiblePosition = input_json["ai"]["BotPredictVisiblePosition"];
  int ai_pointer__BotMovementViewTarget = input_json["ai"]["BotMovementViewTarget"];
  int ai_pointer__BotReachabilityArea = input_json["ai"]["BotReachabilityArea"];
  int ai_pointer__BotResetLastAvoidReach = input_json["ai"]["BotResetLastAvoidReach"];
  int ai_pointer__BotResetAvoidReach = input_json["ai"]["BotResetAvoidReach"];
  int ai_pointer__BotMoveInDirection = input_json["ai"]["BotMoveInDirection"];
  int ai_pointer__BotMoveToGoal = input_json["ai"]["BotMoveToGoal"];
  int ai_pointer__BotResetMoveState = input_json["ai"]["BotResetMoveState"];
  int ai_pointer__BotFreeGoalState = input_json["ai"]["BotFreeGoalState"];
  int ai_pointer__BotAllocGoalState = input_json["ai"]["BotAllocGoalState"];
  int ai_pointer__BotMutateGoalFuzzyLogic = input_json["ai"]["BotMutateGoalFuzzyLogic"];
  int ai_pointer__BotSaveGoalFuzzyLogic = input_json["ai"]["BotSaveGoalFuzzyLogic"];
  int ai_pointer__BotInterbreedGoalFuzzyLogic = input_json["ai"]["BotInterbreedGoalFuzzyLogic"];
  int ai_pointer__BotFreeItemWeights = input_json["ai"]["BotFreeItemWeights"];
  int ai_pointer__BotLoadItemWeights = input_json["ai"]["BotLoadItemWeights"];
  int ai_pointer__BotUpdateEntityItems = input_json["ai"]["BotUpdateEntityItems"];
  int ai_pointer__BotInitLevelItems = input_json["ai"]["BotInitLevelItems"];
  int ai_pointer__BotAvoidGoalTime = input_json["ai"]["BotAvoidGoalTime"];
  int ai_pointer__BotGetMapLocationGoal = input_json["ai"]["BotGetMapLocationGoal"];
  int ai_pointer__BotGetNextCampSpotGoal = input_json["ai"]["BotGetNextCampSpotGoal"];
  int ai_pointer__BotGetLevelItemGoal = input_json["ai"]["BotGetLevelItemGoal"];
  int ai_pointer__BotItemGoalInVisButNotVisible = input_json["ai"]["BotItemGoalInVisButNotVisible"];
  int ai_pointer__BotTouchingGoal = input_json["ai"]["BotTouchingGoal"];
  int ai_pointer__BotChooseNBGItem = input_json["ai"]["BotChooseNBGItem"];
  int ai_pointer__BotChooseLTGItem = input_json["ai"]["BotChooseLTGItem"];
  int ai_pointer__BotGetSecondGoal = input_json["ai"]["BotGetSecondGoal"];
  int ai_pointer__BotGetTopGoal = input_json["ai"]["BotGetTopGoal"];
  int ai_pointer__BotGoalName = input_json["ai"]["BotGoalName"];
  int ai_pointer__BotDumpGoalStack = input_json["ai"]["BotDumpGoalStack"];
  int ai_pointer__BotDumpAvoidGoals = input_json["ai"]["BotDumpAvoidGoals"];
  int ai_pointer__BotEmptyGoalStack = input_json["ai"]["BotEmptyGoalStack"];
  int ai_pointer__BotPopGoal = input_json["ai"]["BotPopGoal"];
  int ai_pointer__BotPushGoal = input_json["ai"]["BotPushGoal"];
  int ai_pointer__BotRemoveFromAvoidGoals = input_json["ai"]["BotRemoveFromAvoidGoals"];
  int ai_pointer__BotResetAvoidGoals = input_json["ai"]["BotResetAvoidGoals"];
  int ai_pointer__BotResetGoalState = input_json["ai"]["BotResetGoalState"];
  int ai_pointer__BotSetChatName = input_json["ai"]["BotSetChatName"];
  int ai_pointer__BotSetChatGender = input_json["ai"]["BotSetChatGender"];
  int ai_pointer__BotLoadChatFile = input_json["ai"]["BotLoadChatFile"];
  int ai_pointer__BotReplaceSynonyms = input_json["ai"]["BotReplaceSynonyms"];
  int ai_pointer__UnifyWhiteSpaces = input_json["ai"]["UnifyWhiteSpaces"];
  int ai_pointer__BotMatchVariable = input_json["ai"]["BotMatchVariable"];
  int ai_pointer__BotFindMatch = input_json["ai"]["BotFindMatch"];
  int ai_pointer__StringContains = input_json["ai"]["StringContains"];
  int ai_pointer__BotGetChatMessage = input_json["ai"]["BotGetChatMessage"];
  int ai_pointer__BotEnterChat = input_json["ai"]["BotEnterChat"];
  int ai_pointer__BotChatLength = input_json["ai"]["BotChatLength"];
  int ai_pointer__BotReplyChat = input_json["ai"]["BotReplyChat"];
  int ai_pointer__BotNumInitialChats = input_json["ai"]["BotNumInitialChats"];
  int ai_pointer__BotInitialChat = input_json["ai"]["BotInitialChat"];
  int ai_pointer__BotNumConsoleMessages = input_json["ai"]["BotNumConsoleMessages"];
  int ai_pointer__BotNextConsoleMessage = input_json["ai"]["BotNextConsoleMessage"];
  int ai_pointer__BotRemoveConsoleMessage = input_json["ai"]["BotRemoveConsoleMessage"];
  int ai_pointer__BotQueueConsoleMessage = input_json["ai"]["BotQueueConsoleMessage"];
  int ai_pointer__BotFreeChatState = input_json["ai"]["BotFreeChatState"];
  int ai_pointer__BotAllocChatState = input_json["ai"]["BotAllocChatState"];
  int ai_pointer__Characteristic_String = input_json["ai"]["Characteristic_String"];
  int ai_pointer__Characteristic_BInteger = input_json["ai"]["Characteristic_BInteger"];
  int ai_pointer__Characteristic_Integer = input_json["ai"]["Characteristic_Integer"];
  int ai_pointer__Characteristic_BFloat = input_json["ai"]["Characteristic_BFloat"];
  int ai_pointer__Characteristic_Float = input_json["ai"]["Characteristic_Float"];
  int ai_pointer__BotFreeCharacter = input_json["ai"]["BotFreeCharacter"];
  int ai_pointer__BotLoadCharacter = input_json["ai"]["BotLoadCharacter"];
  TYPE_1__ ai_pointer = {ai_pointer__GeneticParentsAndChildSelection, ai_pointer__BotResetWeaponState, ai_pointer__BotFreeWeaponState, ai_pointer__BotAllocWeaponState, ai_pointer__BotLoadWeaponWeights, ai_pointer__BotGetWeaponInfo, ai_pointer__BotChooseBestFightWeapon, ai_pointer__BotInitAvoidReach, ai_pointer__BotInitMoveState, ai_pointer__BotFreeMoveState, ai_pointer__BotAllocMoveState, ai_pointer__BotPredictVisiblePosition, ai_pointer__BotMovementViewTarget, ai_pointer__BotReachabilityArea, ai_pointer__BotResetLastAvoidReach, ai_pointer__BotResetAvoidReach, ai_pointer__BotMoveInDirection, ai_pointer__BotMoveToGoal, ai_pointer__BotResetMoveState, ai_pointer__BotFreeGoalState, ai_pointer__BotAllocGoalState, ai_pointer__BotMutateGoalFuzzyLogic, ai_pointer__BotSaveGoalFuzzyLogic, ai_pointer__BotInterbreedGoalFuzzyLogic, ai_pointer__BotFreeItemWeights, ai_pointer__BotLoadItemWeights, ai_pointer__BotUpdateEntityItems, ai_pointer__BotInitLevelItems, ai_pointer__BotAvoidGoalTime, ai_pointer__BotGetMapLocationGoal, ai_pointer__BotGetNextCampSpotGoal, ai_pointer__BotGetLevelItemGoal, ai_pointer__BotItemGoalInVisButNotVisible, ai_pointer__BotTouchingGoal, ai_pointer__BotChooseNBGItem, ai_pointer__BotChooseLTGItem, ai_pointer__BotGetSecondGoal, ai_pointer__BotGetTopGoal, ai_pointer__BotGoalName, ai_pointer__BotDumpGoalStack, ai_pointer__BotDumpAvoidGoals, ai_pointer__BotEmptyGoalStack, ai_pointer__BotPopGoal, ai_pointer__BotPushGoal, ai_pointer__BotRemoveFromAvoidGoals, ai_pointer__BotResetAvoidGoals, ai_pointer__BotResetGoalState, ai_pointer__BotSetChatName, ai_pointer__BotSetChatGender, ai_pointer__BotLoadChatFile, ai_pointer__BotReplaceSynonyms, ai_pointer__UnifyWhiteSpaces, ai_pointer__BotMatchVariable, ai_pointer__BotFindMatch, ai_pointer__StringContains, ai_pointer__BotGetChatMessage, ai_pointer__BotEnterChat, ai_pointer__BotChatLength, ai_pointer__BotReplyChat, ai_pointer__BotNumInitialChats, ai_pointer__BotInitialChat, ai_pointer__BotNumConsoleMessages, ai_pointer__BotNextConsoleMessage, ai_pointer__BotRemoveConsoleMessage, ai_pointer__BotQueueConsoleMessage, ai_pointer__BotFreeChatState, ai_pointer__BotAllocChatState, ai_pointer__Characteristic_String, ai_pointer__Characteristic_BInteger, ai_pointer__Characteristic_Integer, ai_pointer__Characteristic_BFloat, ai_pointer__Characteristic_Float, ai_pointer__BotFreeCharacter, ai_pointer__BotLoadCharacter};
  TYPE_1__* ai = &ai_pointer;
  BotAllocChatState = input_json["BotAllocChatState"];
  BotAllocGoalState = input_json["BotAllocGoalState"];
  BotAllocMoveState = input_json["BotAllocMoveState"];
  BotAllocWeaponState = input_json["BotAllocWeaponState"];
  BotAvoidGoalTime = input_json["BotAvoidGoalTime"];
  BotChatLength = input_json["BotChatLength"];
  BotChooseBestFightWeapon = input_json["BotChooseBestFightWeapon"];
  BotChooseLTGItem = input_json["BotChooseLTGItem"];
  BotChooseNBGItem = input_json["BotChooseNBGItem"];
  BotDumpAvoidGoals = input_json["BotDumpAvoidGoals"];
  BotDumpGoalStack = input_json["BotDumpGoalStack"];
  BotEmptyGoalStack = input_json["BotEmptyGoalStack"];
  BotEnterChat = input_json["BotEnterChat"];
  BotFindMatch = input_json["BotFindMatch"];
  BotFreeCharacter = input_json["BotFreeCharacter"];
  BotFreeChatState = input_json["BotFreeChatState"];
  BotFreeGoalState = input_json["BotFreeGoalState"];
  BotFreeItemWeights = input_json["BotFreeItemWeights"];
  BotFreeMoveState = input_json["BotFreeMoveState"];
  BotFreeWeaponState = input_json["BotFreeWeaponState"];
  BotGetChatMessage = input_json["BotGetChatMessage"];
  BotGetLevelItemGoal = input_json["BotGetLevelItemGoal"];
  BotGetMapLocationGoal = input_json["BotGetMapLocationGoal"];
  BotGetNextCampSpotGoal = input_json["BotGetNextCampSpotGoal"];
  BotGetSecondGoal = input_json["BotGetSecondGoal"];
  BotGetTopGoal = input_json["BotGetTopGoal"];
  BotGetWeaponInfo = input_json["BotGetWeaponInfo"];
  BotGoalName = input_json["BotGoalName"];
  BotInitAvoidReach = input_json["BotInitAvoidReach"];
  BotInitLevelItems = input_json["BotInitLevelItems"];
  BotInitMoveState = input_json["BotInitMoveState"];
  BotInitialChat = input_json["BotInitialChat"];
  BotInterbreedGoalFuzzyLogic = input_json["BotInterbreedGoalFuzzyLogic"];
  BotItemGoalInVisButNotVisible = input_json["BotItemGoalInVisButNotVisible"];
  BotLoadCharacter = input_json["BotLoadCharacter"];
  BotLoadChatFile = input_json["BotLoadChatFile"];
  BotLoadItemWeights = input_json["BotLoadItemWeights"];
  BotLoadWeaponWeights = input_json["BotLoadWeaponWeights"];
  BotMatchVariable = input_json["BotMatchVariable"];
  BotMoveInDirection = input_json["BotMoveInDirection"];
  BotMoveToGoal = input_json["BotMoveToGoal"];
  BotMovementViewTarget = input_json["BotMovementViewTarget"];
  BotMutateGoalFuzzyLogic = input_json["BotMutateGoalFuzzyLogic"];
  BotNextConsoleMessage = input_json["BotNextConsoleMessage"];
  BotNumConsoleMessages = input_json["BotNumConsoleMessages"];
  BotNumInitialChats = input_json["BotNumInitialChats"];
  BotPopGoal = input_json["BotPopGoal"];
  BotPredictVisiblePosition = input_json["BotPredictVisiblePosition"];
  BotPushGoal = input_json["BotPushGoal"];
  BotQueueConsoleMessage = input_json["BotQueueConsoleMessage"];
  BotReachabilityArea = input_json["BotReachabilityArea"];
  BotRemoveConsoleMessage = input_json["BotRemoveConsoleMessage"];
  BotRemoveFromAvoidGoals = input_json["BotRemoveFromAvoidGoals"];
  BotReplaceSynonyms = input_json["BotReplaceSynonyms"];
  BotReplyChat = input_json["BotReplyChat"];
  BotResetAvoidGoals = input_json["BotResetAvoidGoals"];
  BotResetAvoidReach = input_json["BotResetAvoidReach"];
  BotResetGoalState = input_json["BotResetGoalState"];
  BotResetLastAvoidReach = input_json["BotResetLastAvoidReach"];
  BotResetMoveState = input_json["BotResetMoveState"];
  BotResetWeaponState = input_json["BotResetWeaponState"];
  BotSaveGoalFuzzyLogic = input_json["BotSaveGoalFuzzyLogic"];
  BotSetChatGender = input_json["BotSetChatGender"];
  BotSetChatName = input_json["BotSetChatName"];
  BotTouchingGoal = input_json["BotTouchingGoal"];
  BotUpdateEntityItems = input_json["BotUpdateEntityItems"];
  Characteristic_BFloat = input_json["Characteristic_BFloat"];
  Characteristic_BInteger = input_json["Characteristic_BInteger"];
  Characteristic_Float = input_json["Characteristic_Float"];
  Characteristic_Integer = input_json["Characteristic_Integer"];
  Characteristic_String = input_json["Characteristic_String"];
  GeneticParentsAndChildSelection = input_json["GeneticParentsAndChildSelection"];
  StringContains = input_json["StringContains"];
  UnifyWhiteSpaces = input_json["UnifyWhiteSpaces"];
  clock_t begin = clock();
  Init_AI_Export(ai);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ai);
}