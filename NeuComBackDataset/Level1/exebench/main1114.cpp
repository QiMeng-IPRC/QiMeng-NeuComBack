#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  DataOutChanged; } ;
struct TYPE_23__ {TYPE_8__ event; } ;
struct TYPE_15__ {int /*<<< orphan*/  DataInChanged; } ;
struct TYPE_16__ {TYPE_1__ event; } ;
struct TYPE_13__ {TYPE_9__ outputEvents; TYPE_2__ inputEvents; } ;
struct TYPE_19__ {int /*<<< orphan*/  DataInChanged; } ;
struct TYPE_20__ {TYPE_5__ event; } ;
struct TYPE_21__ {TYPE_6__ inputEvents; } ;
struct TYPE_17__ {int /*<<< orphan*/  DataInChanged; } ;
struct TYPE_18__ {TYPE_3__ event; } ;
struct TYPE_14__ {TYPE_10__ pf1; TYPE_7__ pf2; TYPE_4__ inputEvents; } ;
typedef  TYPE_11__ container_two_basic_t ;

/* Variables and functions */
extern "C" { void container_two_basic_syncInputEvents(container_two_basic_t *me);
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

void write_output(TYPE_11__* me) {
  json output_json;
  TYPE_11__ output_temp_1 = *me;
  json output_temp_2;
  json output_temp_3;
  json output_temp_4;
  json output_temp_5;

  output_temp_5["DataOutChanged"] = output_temp_1.pf1.outputEvents.event.DataOutChanged;
  output_temp_4["event"] = output_temp_5;
  output_temp_3["outputEvents"] = output_temp_4;
  json output_temp_6;
  json output_temp_7;

  output_temp_7["DataInChanged"] = output_temp_1.pf1.inputEvents.event.DataInChanged;
  output_temp_6["event"] = output_temp_7;
  output_temp_3["inputEvents"] = output_temp_6;
  output_temp_2["pf1"] = output_temp_3;
  json output_temp_8;
  json output_temp_9;
  json output_temp_10;

  output_temp_10["DataInChanged"] = output_temp_1.pf2.inputEvents.event.DataInChanged;
  output_temp_9["event"] = output_temp_10;
  output_temp_8["inputEvents"] = output_temp_9;
  output_temp_2["pf2"] = output_temp_8;
  json output_temp_11;
  json output_temp_12;

  output_temp_12["DataInChanged"] = output_temp_1.inputEvents.event.DataInChanged;
  output_temp_11["event"] = output_temp_12;
  output_temp_2["inputEvents"] = output_temp_11;
  output_json["me"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int me_pointer__pf1__outputEvents__event__DataOutChanged = input_json["me"]["pf1"]["outputEvents"]["event"]["DataOutChanged"];
  TYPE_8__ me_pointer__pf1__outputEvents__event = {me_pointer__pf1__outputEvents__event__DataOutChanged};
  TYPE_9__ me_pointer__pf1__outputEvents = {me_pointer__pf1__outputEvents__event};
  int me_pointer__pf1__inputEvents__event__DataInChanged = input_json["me"]["pf1"]["inputEvents"]["event"]["DataInChanged"];
  TYPE_1__ me_pointer__pf1__inputEvents__event = {me_pointer__pf1__inputEvents__event__DataInChanged};
  TYPE_2__ me_pointer__pf1__inputEvents = {me_pointer__pf1__inputEvents__event};
  TYPE_10__ me_pointer__pf1 = {me_pointer__pf1__outputEvents, me_pointer__pf1__inputEvents};
  int me_pointer__pf2__inputEvents__event__DataInChanged = input_json["me"]["pf2"]["inputEvents"]["event"]["DataInChanged"];
  TYPE_5__ me_pointer__pf2__inputEvents__event = {me_pointer__pf2__inputEvents__event__DataInChanged};
  TYPE_6__ me_pointer__pf2__inputEvents = {me_pointer__pf2__inputEvents__event};
  TYPE_7__ me_pointer__pf2 = {me_pointer__pf2__inputEvents};
  int me_pointer__inputEvents__event__DataInChanged = input_json["me"]["inputEvents"]["event"]["DataInChanged"];
  TYPE_3__ me_pointer__inputEvents__event = {me_pointer__inputEvents__event__DataInChanged};
  TYPE_4__ me_pointer__inputEvents = {me_pointer__inputEvents__event};
  TYPE_11__ me_pointer = {me_pointer__pf1, me_pointer__pf2, me_pointer__inputEvents};
  TYPE_11__* me = &me_pointer;
  clock_t begin = clock();
  container_two_basic_syncInputEvents(me);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(me);
}