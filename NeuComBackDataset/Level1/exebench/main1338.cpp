#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct eap_sm {int /*<<< orphan*/  EAP_state; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  EAP_SUCCESS ; 
extern "C" { void eap_sm_notify_cached(struct eap_sm *sm);
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

void write_output(struct eap_sm* sm) {
  json output_json;
  struct eap_sm output_temp_1 = *sm;
  json output_temp_2;

  output_temp_2["EAP_state"] = output_temp_1.EAP_state;
  output_json["sm"] = output_temp_2;

  output_json["EAP_SUCCESS"] = EAP_SUCCESS;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int sm_pointer__EAP_state = input_json["sm"]["EAP_state"];
  struct eap_sm sm_pointer = {sm_pointer__EAP_state};
  struct eap_sm* sm = &sm_pointer;
  EAP_SUCCESS = input_json["EAP_SUCCESS"];
  clock_t begin = clock();
  eap_sm_notify_cached(sm);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sm);
}