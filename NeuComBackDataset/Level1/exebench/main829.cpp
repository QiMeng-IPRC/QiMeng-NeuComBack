#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  b; } ;
struct TYPE_5__ {TYPE_1__ sr; int /*<<< orphan*/  b; } ;
typedef  TYPE_2__ CfbBreakerController_t ;

/* Variables and functions */
extern "C" { void CfbBreakerController_syncOutputData(CfbBreakerController_t *me);
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

void write_output(TYPE_2__* me) {
  json output_json;
  TYPE_2__ output_temp_1 = *me;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["b"] = output_temp_1.sr.b;
  output_temp_2["sr"] = output_temp_3;

  output_temp_2["b"] = output_temp_1.b;
  output_json["me"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int me_pointer__sr__b = input_json["me"]["sr"]["b"];
  TYPE_1__ me_pointer__sr = {me_pointer__sr__b};
  int me_pointer__b = input_json["me"]["b"];
  TYPE_2__ me_pointer = {me_pointer__sr, me_pointer__b};
  TYPE_2__* me = &me_pointer;
  clock_t begin = clock();
  CfbBreakerController_syncOutputData(me);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(me);
}