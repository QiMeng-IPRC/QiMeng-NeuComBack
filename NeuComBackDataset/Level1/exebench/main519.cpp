#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double xy; double yx; double xx; double yy; double tx; double ty; } ;
typedef  TYPE_1__ gs_matrix ;

/* Variables and functions */
extern "C" { int gs_matrix_invert(const gs_matrix * pm, gs_matrix * pmr);
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

void write_output(TYPE_1__* pm, TYPE_1__* pmr, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *pm;
  json output_temp_2;

  output_temp_2["xy"] = output_temp_1.xy;

  output_temp_2["yx"] = output_temp_1.yx;

  output_temp_2["xx"] = output_temp_1.xx;

  output_temp_2["yy"] = output_temp_1.yy;

  output_temp_2["tx"] = output_temp_1.tx;

  output_temp_2["ty"] = output_temp_1.ty;
  output_json["pm"] = output_temp_2;
  TYPE_1__ output_temp_3 = *pmr;
  json output_temp_4;

  output_temp_4["xy"] = output_temp_3.xy;

  output_temp_4["yx"] = output_temp_3.yx;

  output_temp_4["xx"] = output_temp_3.xx;

  output_temp_4["yy"] = output_temp_3.yy;

  output_temp_4["tx"] = output_temp_3.tx;

  output_temp_4["ty"] = output_temp_3.ty;
  output_json["pmr"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double pm_pointer__xy = input_json["pm"]["xy"];
  double pm_pointer__yx = input_json["pm"]["yx"];
  double pm_pointer__xx = input_json["pm"]["xx"];
  double pm_pointer__yy = input_json["pm"]["yy"];
  double pm_pointer__tx = input_json["pm"]["tx"];
  double pm_pointer__ty = input_json["pm"]["ty"];
  TYPE_1__ pm_pointer = {pm_pointer__xy, pm_pointer__yx, pm_pointer__xx, pm_pointer__yy, pm_pointer__tx, pm_pointer__ty};
  TYPE_1__* pm = &pm_pointer;
  double pmr_pointer__xy = input_json["pmr"]["xy"];
  double pmr_pointer__yx = input_json["pmr"]["yx"];
  double pmr_pointer__xx = input_json["pmr"]["xx"];
  double pmr_pointer__yy = input_json["pmr"]["yy"];
  double pmr_pointer__tx = input_json["pmr"]["tx"];
  double pmr_pointer__ty = input_json["pmr"]["ty"];
  TYPE_1__ pmr_pointer = {pmr_pointer__xy, pmr_pointer__yx, pmr_pointer__xx, pmr_pointer__yy, pmr_pointer__tx, pmr_pointer__ty};
  TYPE_1__* pmr = &pmr_pointer;
  clock_t begin = clock();
  int returnv = gs_matrix_invert(pm, pmr);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pm, pmr, returnv);
}