#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ nextthink; int /*<<< orphan*/  think; } ;
typedef  TYPE_1__ edict_t ;
struct TYPE_7__ {scalar_t__ time; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  cutA_A_final ; 
extern  TYPE_2__ level ; 
extern "C" { void cutA_A_trigger (edict_t *ent, edict_t *other, edict_t *activator);
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

void write_output(TYPE_1__* ent, TYPE_1__* other, TYPE_1__* activator) {
  json output_json;
  TYPE_1__ output_temp_3 = *ent;
  json output_temp_4;

  output_temp_4["nextthink"] = output_temp_3.nextthink;

  output_temp_4["think"] = output_temp_3.think;
  output_json["ent"] = output_temp_4;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    TYPE_1__ output_temp_7 = other[i6];
    json output_temp_8;

    output_temp_8["nextthink"] = output_temp_7.nextthink;

    output_temp_8["think"] = output_temp_7.think;
    output_temp_5.push_back(output_temp_8);
  }
  output_json["other"] = output_temp_5;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    TYPE_1__ output_temp_11 = activator[i10];
    json output_temp_12;

    output_temp_12["nextthink"] = output_temp_11.nextthink;

    output_temp_12["think"] = output_temp_11.think;
    output_temp_9.push_back(output_temp_12);
  }
  output_json["activator"] = output_temp_9;

  output_json["cutA_A_final"] = cutA_A_final;
  json output_temp_13;

  output_temp_13["time"] = level.time;
  output_json["level"] = output_temp_13;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int ent_pointer__nextthink = input_json["ent"]["nextthink"];
  int ent_pointer__think = input_json["ent"]["think"];
  TYPE_1__ ent_pointer = {ent_pointer__nextthink, ent_pointer__think};
  TYPE_1__* ent = &ent_pointer;
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["other"]) {
    long int input_temp_1_inner__nextthink = elem["nextthink"];
    int input_temp_1_inner__think = elem["think"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__nextthink, input_temp_1_inner__think};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_1__* other = &input_temp_1_vec[0];
  std::vector<TYPE_1__> input_temp_2_vec;
  for (auto& elem : input_json["activator"]) {
    long int input_temp_2_inner__nextthink = elem["nextthink"];
    int input_temp_2_inner__think = elem["think"];
    TYPE_1__ input_temp_2_inner = {input_temp_2_inner__nextthink, input_temp_2_inner__think};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  TYPE_1__* activator = &input_temp_2_vec[0];
  cutA_A_final = input_json["cutA_A_final"];
  long int level__time = input_json["level"]["time"];
  level = {level__time};
  clock_t begin = clock();
  cutA_A_trigger(ent, other, activator);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ent, other, activator);
}