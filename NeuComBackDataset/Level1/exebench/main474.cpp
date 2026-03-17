#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  clean; } ;
typedef  TYPE_1__ STORE_METHOD ;
typedef  int /*<<< orphan*/  STORE_CLEANUP_FUNC_PTR ;

/* Variables and functions */
extern "C" { int STORE_method_set_cleanup_function(STORE_METHOD *sm, STORE_CLEANUP_FUNC_PTR clean_f);
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

void write_output(TYPE_1__* sm, int clean_f, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *sm;
  json output_temp_2;

  output_temp_2["clean"] = output_temp_1.clean;
  output_json["sm"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int sm_pointer__clean = input_json["sm"]["clean"];
  TYPE_1__ sm_pointer = {sm_pointer__clean};
  TYPE_1__* sm = &sm_pointer;
  int clean_f = input_json["clean_f"];
  clock_t begin = clock();
  int returnv = STORE_method_set_cleanup_function(sm, clean_f);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sm, clean_f, returnv);
}