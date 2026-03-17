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
struct TYPE_9__ {int GoRejectArm; } ;
struct TYPE_10__ {TYPE_3__ event; } ;
struct TYPE_7__ {int /*<<< orphan*/  RejectCanister; int /*<<< orphan*/  LasersChanged; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
struct TYPE_11__ {int _trigger; int _state; TYPE_4__ outputEvents; TYPE_2__ inputEvents; int /*<<< orphan*/  RejectSiteLaser; } ;
typedef  TYPE_5__ RejectArmController_t ;

/* Variables and functions */
#define  STATE_RejectArmController_AwaitCanister 130 
#define  STATE_RejectArmController_Clear 129 
#define  STATE_RejectArmController_GoReject 128 
extern "C" { void RejectArmController_run(RejectArmController_t *me);
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

void write_output(TYPE_5__* me) {
  json output_json;
  TYPE_5__ output_temp_1 = *me;
  json output_temp_2;

  output_temp_2["_trigger"] = output_temp_1._trigger;

  output_temp_2["_state"] = output_temp_1._state;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["GoRejectArm"] = output_temp_1.outputEvents.event.GoRejectArm;
  output_temp_3["event"] = output_temp_4;
  output_temp_2["outputEvents"] = output_temp_3;
  json output_temp_5;
  json output_temp_6;

  output_temp_6["RejectCanister"] = output_temp_1.inputEvents.event.RejectCanister;

  output_temp_6["LasersChanged"] = output_temp_1.inputEvents.event.LasersChanged;
  output_temp_5["event"] = output_temp_6;
  output_temp_2["inputEvents"] = output_temp_5;

  output_temp_2["RejectSiteLaser"] = output_temp_1.RejectSiteLaser;
  output_json["me"] = output_temp_2;
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
  int me_pointer__outputEvents__event__GoRejectArm = input_json["me"]["outputEvents"]["event"]["GoRejectArm"];
  TYPE_3__ me_pointer__outputEvents__event = {me_pointer__outputEvents__event__GoRejectArm};
  TYPE_4__ me_pointer__outputEvents = {me_pointer__outputEvents__event};
  int me_pointer__inputEvents__event__RejectCanister = input_json["me"]["inputEvents"]["event"]["RejectCanister"];
  int me_pointer__inputEvents__event__LasersChanged = input_json["me"]["inputEvents"]["event"]["LasersChanged"];
  TYPE_1__ me_pointer__inputEvents__event = {me_pointer__inputEvents__event__RejectCanister, me_pointer__inputEvents__event__LasersChanged};
  TYPE_2__ me_pointer__inputEvents = {me_pointer__inputEvents__event};
  int me_pointer__RejectSiteLaser = input_json["me"]["RejectSiteLaser"];
  TYPE_5__ me_pointer = {me_pointer___trigger, me_pointer___state, me_pointer__outputEvents, me_pointer__inputEvents, me_pointer__RejectSiteLaser};
  TYPE_5__* me = &me_pointer;
  clock_t begin = clock();
  RejectArmController_run(me);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(me);
}