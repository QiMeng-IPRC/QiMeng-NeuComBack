#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ x86_max_cores; } ;
struct TYPE_3__ {scalar_t__ num_boxes; } ;

/* Variables and functions */
extern  TYPE_2__ boot_cpu_data ; 
extern  int /*<<< orphan*/  snb_msr_uncores ; 
extern  TYPE_1__ snb_uncore_cbox ; 
extern  int /*<<< orphan*/  uncore_msr_uncores ; 
extern "C" { void snb_uncore_cpu_init(void);
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

void write_output() {
  json output_json;
  json output_temp_1;

  output_temp_1["x86_max_cores"] = boot_cpu_data.x86_max_cores;
  output_json["boot_cpu_data"] = output_temp_1;

  output_json["snb_msr_uncores"] = snb_msr_uncores;
  json output_temp_2;

  output_temp_2["num_boxes"] = snb_uncore_cbox.num_boxes;
  output_json["snb_uncore_cbox"] = output_temp_2;

  output_json["uncore_msr_uncores"] = uncore_msr_uncores;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int boot_cpu_data__x86_max_cores = input_json["boot_cpu_data"]["x86_max_cores"];
  boot_cpu_data = {boot_cpu_data__x86_max_cores};
  snb_msr_uncores = input_json["snb_msr_uncores"];
  long int snb_uncore_cbox__num_boxes = input_json["snb_uncore_cbox"]["num_boxes"];
  snb_uncore_cbox = {snb_uncore_cbox__num_boxes};
  uncore_msr_uncores = input_json["uncore_msr_uncores"];
  clock_t begin = clock();
  snb_uncore_cpu_init();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}