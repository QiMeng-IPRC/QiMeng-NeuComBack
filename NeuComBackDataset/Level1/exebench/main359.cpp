#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ frame; } ;
struct TYPE_8__ {scalar_t__ nextthink; int /*<<< orphan*/  think; TYPE_1__ s; } ;
typedef  TYPE_2__ edict_t ;
struct TYPE_9__ {scalar_t__ time; } ;

/* Variables and functions */
extern  TYPE_6__ level ; 
extern  int /*<<< orphan*/  misc_satellite_dish_think ; 
extern "C" { void misc_satellite_dish_use (edict_t *self, edict_t *other, edict_t *activator);
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

void write_output(TYPE_2__* self, TYPE_2__* other, TYPE_2__* activator) {
  json output_json;
  TYPE_2__ output_temp_3 = *self;
  json output_temp_4;

  output_temp_4["nextthink"] = output_temp_3.nextthink;

  output_temp_4["think"] = output_temp_3.think;
  json output_temp_5;

  output_temp_5["frame"] = output_temp_3.s.frame;
  output_temp_4["s"] = output_temp_5;
  output_json["self"] = output_temp_4;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    TYPE_2__ output_temp_8 = other[i7];
    json output_temp_9;

    output_temp_9["nextthink"] = output_temp_8.nextthink;

    output_temp_9["think"] = output_temp_8.think;
    json output_temp_10;

    output_temp_10["frame"] = output_temp_8.s.frame;
    output_temp_9["s"] = output_temp_10;
    output_temp_6.push_back(output_temp_9);
  }
  output_json["other"] = output_temp_6;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    TYPE_2__ output_temp_13 = activator[i12];
    json output_temp_14;

    output_temp_14["nextthink"] = output_temp_13.nextthink;

    output_temp_14["think"] = output_temp_13.think;
    json output_temp_15;

    output_temp_15["frame"] = output_temp_13.s.frame;
    output_temp_14["s"] = output_temp_15;
    output_temp_11.push_back(output_temp_14);
  }
  output_json["activator"] = output_temp_11;
  json output_temp_16;

  output_temp_16["time"] = level.time;
  output_json["level"] = output_temp_16;

  output_json["misc_satellite_dish_think"] = misc_satellite_dish_think;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int self_pointer__nextthink = input_json["self"]["nextthink"];
  int self_pointer__think = input_json["self"]["think"];
  long int self_pointer__s__frame = input_json["self"]["s"]["frame"];
  TYPE_1__ self_pointer__s = {self_pointer__s__frame};
  TYPE_2__ self_pointer = {self_pointer__nextthink, self_pointer__think, self_pointer__s};
  TYPE_2__* self = &self_pointer;
  std::vector<TYPE_2__> input_temp_1_vec;
  for (auto& elem : input_json["other"]) {
    long int input_temp_1_inner__nextthink = elem["nextthink"];
    int input_temp_1_inner__think = elem["think"];
    long int input_temp_1_inner__s__frame = elem["s"]["frame"];
    TYPE_1__ input_temp_1_inner__s = {input_temp_1_inner__s__frame};
    TYPE_2__ input_temp_1_inner = {input_temp_1_inner__nextthink, input_temp_1_inner__think, input_temp_1_inner__s};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_2__* other = &input_temp_1_vec[0];
  std::vector<TYPE_2__> input_temp_2_vec;
  for (auto& elem : input_json["activator"]) {
    long int input_temp_2_inner__nextthink = elem["nextthink"];
    int input_temp_2_inner__think = elem["think"];
    long int input_temp_2_inner__s__frame = elem["s"]["frame"];
    TYPE_1__ input_temp_2_inner__s = {input_temp_2_inner__s__frame};
    TYPE_2__ input_temp_2_inner = {input_temp_2_inner__nextthink, input_temp_2_inner__think, input_temp_2_inner__s};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  TYPE_2__* activator = &input_temp_2_vec[0];
  long int level__time = input_json["level"]["time"];
  level = {level__time};
  misc_satellite_dish_think = input_json["misc_satellite_dish_think"];
  clock_t begin = clock();
  misc_satellite_dish_use(self, other, activator);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(self, other, activator);
}