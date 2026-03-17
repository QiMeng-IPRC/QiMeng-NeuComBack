#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int val; } ;
struct TYPE_5__ {TYPE_1__ timer_synci_cfg; } ;
typedef  TYPE_2__ mcpwm_dev_t ;

/* Variables and functions */
extern "C" { void mcpwm_ll_timer_set_timer_synchro(mcpwm_dev_t *mcpwm, int timer, int timer_sync_id);
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

void write_output(TYPE_2__* mcpwm, int timer, int timer_sync_id) {
  json output_json;
  TYPE_2__ output_temp_1 = *mcpwm;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["val"] = output_temp_1.timer_synci_cfg.val;
  output_temp_2["timer_synci_cfg"] = output_temp_3;
  output_json["mcpwm"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int mcpwm_pointer__timer_synci_cfg__val = input_json["mcpwm"]["timer_synci_cfg"]["val"];
  TYPE_1__ mcpwm_pointer__timer_synci_cfg = {mcpwm_pointer__timer_synci_cfg__val};
  TYPE_2__ mcpwm_pointer = {mcpwm_pointer__timer_synci_cfg};
  TYPE_2__* mcpwm = &mcpwm_pointer;
  int timer = input_json["timer"];
  int timer_sync_id = input_json["timer_sync_id"];
  clock_t begin = clock();
  mcpwm_ll_timer_set_timer_synchro(mcpwm, timer, timer_sync_id);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(mcpwm, timer, timer_sync_id);
}