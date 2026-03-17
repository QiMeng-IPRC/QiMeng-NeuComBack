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
struct TYPE_5__ {scalar_t__ pausetime; int aiflags; } ;
struct TYPE_6__ {TYPE_1__ monsterinfo; } ;
typedef  TYPE_2__ edict_t ;
struct TYPE_7__ {scalar_t__ time; } ;

/* Variables and functions */
extern  TYPE_3__ level ; 
extern "C" { void chick_duck_hold (edict_t *self);
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

void write_output(TYPE_2__* self) {
  json output_json;
  TYPE_2__ output_temp_1 = *self;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["pausetime"] = output_temp_1.monsterinfo.pausetime;

  output_temp_3["aiflags"] = output_temp_1.monsterinfo.aiflags;
  output_temp_2["monsterinfo"] = output_temp_3;
  output_json["self"] = output_temp_2;
  json output_temp_4;

  output_temp_4["time"] = level.time;
  output_json["level"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int self_pointer__monsterinfo__pausetime = input_json["self"]["monsterinfo"]["pausetime"];
  int self_pointer__monsterinfo__aiflags = input_json["self"]["monsterinfo"]["aiflags"];
  TYPE_1__ self_pointer__monsterinfo = {self_pointer__monsterinfo__pausetime, self_pointer__monsterinfo__aiflags};
  TYPE_2__ self_pointer = {self_pointer__monsterinfo};
  TYPE_2__* self = &self_pointer;
  long int level__time = input_json["level"]["time"];
  level = {level__time};
  clock_t begin = clock();
  chick_duck_hold(self);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(self);
}