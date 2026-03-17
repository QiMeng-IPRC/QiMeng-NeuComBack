#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nextthink; int /*<<< orphan*/  think; } ;
typedef  TYPE_1__ gentity_t ;
struct TYPE_5__ {scalar_t__ time; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  G_TripMineThink ; 
extern  TYPE_2__ level ; 
extern "C" { void G_TripMinePrime(gentity_t* ent);
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

void write_output(TYPE_1__* ent) {
  json output_json;
  TYPE_1__ output_temp_1 = *ent;
  json output_temp_2;

  output_temp_2["nextthink"] = output_temp_1.nextthink;

  output_temp_2["think"] = output_temp_1.think;
  output_json["ent"] = output_temp_2;

  output_json["G_TripMineThink"] = G_TripMineThink;
  json output_temp_3;

  output_temp_3["time"] = level.time;
  output_json["level"] = output_temp_3;
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
  G_TripMineThink = input_json["G_TripMineThink"];
  long int level__time = input_json["level"]["time"];
  level = {level__time};
  clock_t begin = clock();
  G_TripMinePrime(ent);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ent);
}