#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct refine_edata {int node1; int node2; int dim; } ;

/* Variables and functions */
extern "C" { void init_cube_edata(struct refine_edata *edata, int node1, int dim, int mask );
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

void write_output(struct refine_edata* edata, int node1, int dim, int mask) {
  json output_json;
  struct refine_edata output_temp_1 = *edata;
  json output_temp_2;

  output_temp_2["node1"] = output_temp_1.node1;

  output_temp_2["node2"] = output_temp_1.node2;

  output_temp_2["dim"] = output_temp_1.dim;
  output_json["edata"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int edata_pointer__node1 = input_json["edata"]["node1"];
  int edata_pointer__node2 = input_json["edata"]["node2"];
  int edata_pointer__dim = input_json["edata"]["dim"];
  struct refine_edata edata_pointer = {edata_pointer__node1, edata_pointer__node2, edata_pointer__dim};
  struct refine_edata* edata = &edata_pointer;
  int node1 = input_json["node1"];
  int dim = input_json["dim"];
  int mask = input_json["mask"];
  clock_t begin = clock();
  init_cube_edata(edata, node1, dim, mask);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(edata, node1, dim, mask);
}