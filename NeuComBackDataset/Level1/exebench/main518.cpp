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
struct TYPE_10__ {scalar_t__ Dp12Change; } ;
struct TYPE_9__ {TYPE_4__ event; } ;
struct TYPE_7__ {scalar_t__ DfChange; scalar_t__ Tick; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
struct TYPE_11__ {double StepSize; double T0; double Pi; int _trigger; int /*<<< orphan*/  _state; TYPE_3__ outputEvents; TYPE_2__ inputEvents; } ;
typedef  TYPE_5__ Tieline_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  STATE_Tieline_reset ; 
extern "C" { int Tieline_preinit(Tieline_t *me);
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

  output_temp_2["StepSize"] = output_temp_1.StepSize;

  output_temp_2["T0"] = output_temp_1.T0;

  output_temp_2["Pi"] = output_temp_1.Pi;

  output_temp_2["_trigger"] = output_temp_1._trigger;

  output_temp_2["_state"] = output_temp_1._state;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["Dp12Change"] = output_temp_1.outputEvents.event.Dp12Change;
  output_temp_3["event"] = output_temp_4;
  output_temp_2["outputEvents"] = output_temp_3;
  json output_temp_5;
  json output_temp_6;

  output_temp_6["DfChange"] = output_temp_1.inputEvents.event.DfChange;

  output_temp_6["Tick"] = output_temp_1.inputEvents.event.Tick;
  output_temp_5["event"] = output_temp_6;
  output_temp_2["inputEvents"] = output_temp_5;
  output_json["me"] = output_temp_2;

  output_json["STATE_Tieline_reset"] = STATE_Tieline_reset;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double me_pointer__StepSize = input_json["me"]["StepSize"];
  double me_pointer__T0 = input_json["me"]["T0"];
  double me_pointer__Pi = input_json["me"]["Pi"];
  int me_pointer___trigger = input_json["me"]["_trigger"];
  int me_pointer___state = input_json["me"]["_state"];
  long int me_pointer__outputEvents__event__Dp12Change = input_json["me"]["outputEvents"]["event"]["Dp12Change"];
  TYPE_4__ me_pointer__outputEvents__event = {me_pointer__outputEvents__event__Dp12Change};
  TYPE_3__ me_pointer__outputEvents = {me_pointer__outputEvents__event};
  long int me_pointer__inputEvents__event__DfChange = input_json["me"]["inputEvents"]["event"]["DfChange"];
  long int me_pointer__inputEvents__event__Tick = input_json["me"]["inputEvents"]["event"]["Tick"];
  TYPE_1__ me_pointer__inputEvents__event = {me_pointer__inputEvents__event__DfChange, me_pointer__inputEvents__event__Tick};
  TYPE_2__ me_pointer__inputEvents = {me_pointer__inputEvents__event};
  TYPE_5__ me_pointer = {me_pointer__StepSize, me_pointer__T0, me_pointer__Pi, me_pointer___trigger, me_pointer___state, me_pointer__outputEvents, me_pointer__inputEvents};
  TYPE_5__* me = &me_pointer;
  STATE_Tieline_reset = input_json["STATE_Tieline_reset"];
  clock_t begin = clock();
  int returnv = Tieline_preinit(me);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(me, returnv);
}