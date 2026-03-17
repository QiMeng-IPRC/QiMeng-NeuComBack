#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct xlate_vdata_st {int /*<<< orphan*/  trig; int /*<<< orphan*/  func; scalar_t__ vflags; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  RFXGasFunc ; 
extern  int /*<<< orphan*/  RFXGasTrig ; 
extern "C" { int fn_rfxgas ( struct xlate_vdata_st *xlate_vdata );
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

void write_output(struct xlate_vdata_st* xlate_vdata, int returnv) {
  json output_json;
  struct xlate_vdata_st output_temp_1 = *xlate_vdata;
  json output_temp_2;

  output_temp_2["trig"] = output_temp_1.trig;

  output_temp_2["func"] = output_temp_1.func;

  output_temp_2["vflags"] = output_temp_1.vflags;
  output_json["xlate_vdata"] = output_temp_2;

  output_json["RFXGasFunc"] = RFXGasFunc;

  output_json["RFXGasTrig"] = RFXGasTrig;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int xlate_vdata_pointer__trig = input_json["xlate_vdata"]["trig"];
  int xlate_vdata_pointer__func = input_json["xlate_vdata"]["func"];
  long int xlate_vdata_pointer__vflags = input_json["xlate_vdata"]["vflags"];
  struct xlate_vdata_st xlate_vdata_pointer = {xlate_vdata_pointer__trig, xlate_vdata_pointer__func, xlate_vdata_pointer__vflags};
  struct xlate_vdata_st* xlate_vdata = &xlate_vdata_pointer;
  RFXGasFunc = input_json["RFXGasFunc"];
  RFXGasTrig = input_json["RFXGasTrig"];
  clock_t begin = clock();
  int returnv = fn_rfxgas(xlate_vdata);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(xlate_vdata, returnv);
}