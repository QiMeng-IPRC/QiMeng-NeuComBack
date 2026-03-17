#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int mr_small ;
struct TYPE_2__ {int apbase; int pack; int base; } ;
typedef  int BOOL ;

/* Variables and functions */
extern  TYPE_1__* mr_mip ; 
extern "C" { mr_small mr_setbase( mr_small nb);
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

void write_output(int nb, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *mr_mip;
  json output_temp_2;

  output_temp_2["apbase"] = output_temp_1.apbase;

  output_temp_2["pack"] = output_temp_1.pack;

  output_temp_2["base"] = output_temp_1.base;
  output_json["mr_mip"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int nb = input_json["nb"];
  int mr_mip_pointer__apbase = input_json["mr_mip"]["apbase"];
  int mr_mip_pointer__pack = input_json["mr_mip"]["pack"];
  int mr_mip_pointer__base = input_json["mr_mip"]["base"];
  TYPE_1__ mr_mip_pointer = {mr_mip_pointer__apbase, mr_mip_pointer__pack, mr_mip_pointer__base};
  mr_mip = &mr_mip_pointer;
  clock_t begin = clock();
  int returnv = mr_setbase(nb);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(nb, returnv);
}