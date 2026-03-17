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
struct TYPE_5__ {float a; } ;
struct TYPE_6__ {TYPE_1__ dp; } ;
struct TYPE_7__ {TYPE_2__ p; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ BForce ;

/* Variables and functions */
extern  int /*<<< orphan*/  BODY_FORCE_DP ; 
extern "C" { void bforce_set_dp(float a, BForce *p);
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

void write_output(float a, TYPE_3__* p) {
  json output_json;
  TYPE_3__ output_temp_1 = *p;
  json output_temp_2;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["a"] = output_temp_1.p.dp.a;
  output_temp_3["dp"] = output_temp_4;
  output_temp_2["p"] = output_temp_3;

  output_temp_2["type"] = output_temp_1.type;
  output_json["p"] = output_temp_2;

  output_json["BODY_FORCE_DP"] = BODY_FORCE_DP;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float a = input_json["a"];
  float p_pointer__p__dp__a = input_json["p"]["p"]["dp"]["a"];
  TYPE_1__ p_pointer__p__dp = {p_pointer__p__dp__a};
  TYPE_2__ p_pointer__p = {p_pointer__p__dp};
  int p_pointer__type = input_json["p"]["type"];
  TYPE_3__ p_pointer = {p_pointer__p, p_pointer__type};
  TYPE_3__* p = &p_pointer;
  BODY_FORCE_DP = input_json["BODY_FORCE_DP"];
  clock_t begin = clock();
  bforce_set_dp(a, p);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, p);
}