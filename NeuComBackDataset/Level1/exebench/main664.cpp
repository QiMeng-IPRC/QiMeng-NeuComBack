#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_7__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_5__ {scalar_t__ bIsSpriteActor; } ;
struct TYPE_6__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; scalar_t__ speed; TYPE_1__ staticFlags; int /*<<< orphan*/  positionInMoveScript; } ;
typedef  TYPE_2__ ActorStruct ;

/* Variables and functions */
extern  size_t currentScriptValue ; 
extern  int /*<<< orphan*/  destX ; 
extern  int /*<<< orphan*/  destY ; 
extern  int /*<<< orphan*/  destZ ; 
extern  TYPE_3__* sceneTracks ; 
extern  size_t* scriptPtr ; 
extern "C" { int32 mPOS_POINT(int32 actorIdx, ActorStruct *actor);
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

void write_output(int actorIdx, TYPE_2__* actor, int returnv) {
  json output_json;
  TYPE_2__ output_temp_3 = *actor;
  json output_temp_4;

  output_temp_4["Z"] = output_temp_3.Z;

  output_temp_4["Y"] = output_temp_3.Y;

  output_temp_4["X"] = output_temp_3.X;

  output_temp_4["speed"] = output_temp_3.speed;
  json output_temp_5;

  output_temp_5["bIsSpriteActor"] = output_temp_3.staticFlags.bIsSpriteActor;
  output_temp_4["staticFlags"] = output_temp_5;

  output_temp_4["positionInMoveScript"] = output_temp_3.positionInMoveScript;
  output_json["actor"] = output_temp_4;

  output_json["currentScriptValue"] = currentScriptValue;

  output_json["destX"] = destX;

  output_json["destY"] = destY;

  output_json["destZ"] = destZ;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    TYPE_3__ output_temp_8 = sceneTracks[i7];
    json output_temp_9;

    output_temp_9["Z"] = output_temp_8.Z;

    output_temp_9["Y"] = output_temp_8.Y;

    output_temp_9["X"] = output_temp_8.X;
    output_temp_6.push_back(output_temp_9);
  }
  output_json["sceneTracks"] = output_temp_6;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    unsigned long int output_temp_12 = scriptPtr[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["scriptPtr"] = output_temp_10;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int actorIdx = input_json["actorIdx"];
  int actor_pointer__Z = input_json["actor"]["Z"];
  int actor_pointer__Y = input_json["actor"]["Y"];
  int actor_pointer__X = input_json["actor"]["X"];
  long int actor_pointer__speed = input_json["actor"]["speed"];
  long int actor_pointer__staticFlags__bIsSpriteActor = input_json["actor"]["staticFlags"]["bIsSpriteActor"];
  TYPE_1__ actor_pointer__staticFlags = {actor_pointer__staticFlags__bIsSpriteActor};
  int actor_pointer__positionInMoveScript = input_json["actor"]["positionInMoveScript"];
  TYPE_2__ actor_pointer = {actor_pointer__Z, actor_pointer__Y, actor_pointer__X, actor_pointer__speed, actor_pointer__staticFlags, actor_pointer__positionInMoveScript};
  TYPE_2__* actor = &actor_pointer;
  currentScriptValue = input_json["currentScriptValue"];
  destX = input_json["destX"];
  destY = input_json["destY"];
  destZ = input_json["destZ"];
  std::vector<TYPE_3__> input_temp_1_vec;
  for (auto& elem : input_json["sceneTracks"]) {
    int input_temp_1_inner__Z = elem["Z"];
    int input_temp_1_inner__Y = elem["Y"];
    int input_temp_1_inner__X = elem["X"];
    TYPE_3__ input_temp_1_inner = {input_temp_1_inner__Z, input_temp_1_inner__Y, input_temp_1_inner__X};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  sceneTracks = &input_temp_1_vec[0];
  std::vector<unsigned long int> input_temp_2_vec;
  for (auto& elem : input_json["scriptPtr"]) {
    unsigned long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  scriptPtr = &input_temp_2_vec[0];
  clock_t begin = clock();
  int returnv = mPOS_POINT(actorIdx, actor);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(actorIdx, actor, returnv);
}