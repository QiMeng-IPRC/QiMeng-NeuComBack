#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct odm_dm_struct {scalar_t__ DebugComponents; int /*<<< orphan*/  DebugLevel; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  ODM_DBG_TRACE ; 
extern "C" { void ODM_InitDebugSetting(struct odm_dm_struct *pDM_Odm);
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

void write_output(struct odm_dm_struct* pDM_Odm) {
  json output_json;
  struct odm_dm_struct output_temp_1 = *pDM_Odm;
  json output_temp_2;

  output_temp_2["DebugComponents"] = output_temp_1.DebugComponents;

  output_temp_2["DebugLevel"] = output_temp_1.DebugLevel;
  output_json["pDM_Odm"] = output_temp_2;

  output_json["ODM_DBG_TRACE"] = ODM_DBG_TRACE;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int pDM_Odm_pointer__DebugComponents = input_json["pDM_Odm"]["DebugComponents"];
  int pDM_Odm_pointer__DebugLevel = input_json["pDM_Odm"]["DebugLevel"];
  struct odm_dm_struct pDM_Odm_pointer = {pDM_Odm_pointer__DebugComponents, pDM_Odm_pointer__DebugLevel};
  struct odm_dm_struct* pDM_Odm = &pDM_Odm_pointer;
  ODM_DBG_TRACE = input_json["ODM_DBG_TRACE"];
  clock_t begin = clock();
  ODM_InitDebugSetting(pDM_Odm);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pDM_Odm);
}