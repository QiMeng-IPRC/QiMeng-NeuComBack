#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  free; int /*<<< orphan*/  malloc; } ;
typedef  TYPE_1__ ll_point ;
typedef  int /*<<< orphan*/  ll_cb_malloc ;
typedef  int /*<<< orphan*/  ll_cb_free ;

/* Variables and functions */
extern "C" { void ll_point_mem_callback(ll_point*pt,ll_cb_malloc m,ll_cb_free f);
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

void write_output(TYPE_1__* pt, int m, int f) {
  json output_json;
  TYPE_1__ output_temp_1 = *pt;
  json output_temp_2;

  output_temp_2["free"] = output_temp_1.free;

  output_temp_2["malloc"] = output_temp_1.malloc;
  output_json["pt"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pt_pointer__free = input_json["pt"]["free"];
  int pt_pointer__malloc = input_json["pt"]["malloc"];
  TYPE_1__ pt_pointer = {pt_pointer__free, pt_pointer__malloc};
  TYPE_1__* pt = &pt_pointer;
  int m = input_json["m"];
  int f = input_json["f"];
  clock_t begin = clock();
  ll_point_mem_callback(pt, m, f);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pt, m, f);
}