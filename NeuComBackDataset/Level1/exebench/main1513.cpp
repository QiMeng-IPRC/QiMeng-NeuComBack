#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tSfPolicyId ;
struct TYPE_3__ {scalar_t__ numAllocatedPolicies; scalar_t__ defaultPolicyId; } ;
typedef  TYPE_1__ tSfPolicyConfig ;

/* Variables and functions */
extern "C" { void sfSetDefaultPolicy( tSfPolicyConfig *config, tSfPolicyId policyId );
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

void write_output(TYPE_1__* config, long int policyId) {
  json output_json;
  TYPE_1__ output_temp_1 = *config;
  json output_temp_2;

  output_temp_2["numAllocatedPolicies"] = output_temp_1.numAllocatedPolicies;

  output_temp_2["defaultPolicyId"] = output_temp_1.defaultPolicyId;
  output_json["config"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int config_pointer__numAllocatedPolicies = input_json["config"]["numAllocatedPolicies"];
  long int config_pointer__defaultPolicyId = input_json["config"]["defaultPolicyId"];
  TYPE_1__ config_pointer = {config_pointer__numAllocatedPolicies, config_pointer__defaultPolicyId};
  TYPE_1__* config = &config_pointer;
  long int policyId = input_json["policyId"];
  clock_t begin = clock();
  sfSetDefaultPolicy(config, policyId);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(config, policyId);
}