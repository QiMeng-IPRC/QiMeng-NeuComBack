#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  klong ;
struct TYPE_4__ {int /*<<< orphan*/  i64; } ;
struct TYPE_5__ {TYPE_1__ rv; scalar_t__ type; } ;
typedef  TYPE_2__ kVar ;
typedef  scalar_t__ kType ;

/* Variables and functions */
extern "C" { void k_var_set_long(kVar* p, klong o);
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

void write_output(TYPE_2__* p, int o) {
  json output_json;
  TYPE_2__ output_temp_1 = *p;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["i64"] = output_temp_1.rv.i64;
  output_temp_2["rv"] = output_temp_3;

  output_temp_2["type"] = output_temp_1.type;
  output_json["p"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_pointer__rv__i64 = input_json["p"]["rv"]["i64"];
  TYPE_1__ p_pointer__rv = {p_pointer__rv__i64};
  long int p_pointer__type = input_json["p"]["type"];
  TYPE_2__ p_pointer = {p_pointer__rv, p_pointer__type};
  TYPE_2__* p = &p_pointer;
  int o = input_json["o"];
  clock_t begin = clock();
  k_var_set_long(p, o);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, o);
}