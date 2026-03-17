#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ InjectRunning; scalar_t__ InjectorPositionChanged; scalar_t__ InjectDone; scalar_t__ StartPump; } ;
struct TYPE_10__ {TYPE_3__ event; } ;
struct TYPE_7__ {scalar_t__ PumpFinished; scalar_t__ ConveyorStoppedForInject; scalar_t__ EmergencyStopChanged; scalar_t__ InjectorArmFinishedMovement; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
struct TYPE_11__ {int _trigger; int /*<<< orphan*/  _state; TYPE_4__ outputEvents; TYPE_2__ inputEvents; } ;
typedef  TYPE_5__ InjectorMotorController_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  STATE_InjectorMotorController_MoveArmUp ; 
extern "C" { int InjectorMotorController_preinit(InjectorMotorController_t *me);
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

void write_output(TYPE_5__* me, int returnv) {
  json output_json;
  TYPE_5__ output_temp_1 = *me;
  json output_temp_2;

  output_temp_2["_trigger"] = output_temp_1._trigger;

  output_temp_2["_state"] = output_temp_1._state;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["InjectRunning"] = output_temp_1.outputEvents.event.InjectRunning;

  output_temp_4["InjectorPositionChanged"] = output_temp_1.outputEvents.event.InjectorPositionChanged;

  output_temp_4["InjectDone"] = output_temp_1.outputEvents.event.InjectDone;

  output_temp_4["StartPump"] = output_temp_1.outputEvents.event.StartPump;
  output_temp_3["event"] = output_temp_4;
  output_temp_2["outputEvents"] = output_temp_3;
  json output_temp_5;
  json output_temp_6;

  output_temp_6["PumpFinished"] = output_temp_1.inputEvents.event.PumpFinished;

  output_temp_6["ConveyorStoppedForInject"] = output_temp_1.inputEvents.event.ConveyorStoppedForInject;

  output_temp_6["EmergencyStopChanged"] = output_temp_1.inputEvents.event.EmergencyStopChanged;

  output_temp_6["InjectorArmFinishedMovement"] = output_temp_1.inputEvents.event.InjectorArmFinishedMovement;
  output_temp_5["event"] = output_temp_6;
  output_temp_2["inputEvents"] = output_temp_5;
  output_json["me"] = output_temp_2;

  output_json["STATE_InjectorMotorController_MoveArmUp"] = STATE_InjectorMotorController_MoveArmUp;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int me_pointer___trigger = input_json["me"]["_trigger"];
  int me_pointer___state = input_json["me"]["_state"];
  long int me_pointer__outputEvents__event__InjectRunning = input_json["me"]["outputEvents"]["event"]["InjectRunning"];
  long int me_pointer__outputEvents__event__InjectorPositionChanged = input_json["me"]["outputEvents"]["event"]["InjectorPositionChanged"];
  long int me_pointer__outputEvents__event__InjectDone = input_json["me"]["outputEvents"]["event"]["InjectDone"];
  long int me_pointer__outputEvents__event__StartPump = input_json["me"]["outputEvents"]["event"]["StartPump"];
  TYPE_3__ me_pointer__outputEvents__event = {me_pointer__outputEvents__event__InjectRunning, me_pointer__outputEvents__event__InjectorPositionChanged, me_pointer__outputEvents__event__InjectDone, me_pointer__outputEvents__event__StartPump};
  TYPE_4__ me_pointer__outputEvents = {me_pointer__outputEvents__event};
  long int me_pointer__inputEvents__event__PumpFinished = input_json["me"]["inputEvents"]["event"]["PumpFinished"];
  long int me_pointer__inputEvents__event__ConveyorStoppedForInject = input_json["me"]["inputEvents"]["event"]["ConveyorStoppedForInject"];
  long int me_pointer__inputEvents__event__EmergencyStopChanged = input_json["me"]["inputEvents"]["event"]["EmergencyStopChanged"];
  long int me_pointer__inputEvents__event__InjectorArmFinishedMovement = input_json["me"]["inputEvents"]["event"]["InjectorArmFinishedMovement"];
  TYPE_1__ me_pointer__inputEvents__event = {me_pointer__inputEvents__event__PumpFinished, me_pointer__inputEvents__event__ConveyorStoppedForInject, me_pointer__inputEvents__event__EmergencyStopChanged, me_pointer__inputEvents__event__InjectorArmFinishedMovement};
  TYPE_2__ me_pointer__inputEvents = {me_pointer__inputEvents__event};
  TYPE_5__ me_pointer = {me_pointer___trigger, me_pointer___state, me_pointer__outputEvents, me_pointer__inputEvents};
  TYPE_5__* me = &me_pointer;
  STATE_InjectorMotorController_MoveArmUp = input_json["STATE_InjectorMotorController_MoveArmUp"];
  clock_t begin = clock();
  int returnv = InjectorMotorController_preinit(me);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(me, returnv);
}