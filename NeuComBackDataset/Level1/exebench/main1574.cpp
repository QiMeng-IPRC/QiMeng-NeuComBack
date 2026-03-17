#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ TE_SYNC_R2095_succeeds; scalar_t__ TE_SYNC_R2095_precedes; scalar_t__ nextID; } ;
typedef  TYPE_1__ ooaofooa_TE_SYNC ;

/* Variables and functions */
extern "C" { void ooaofooa_TE_SYNC_R2095_Unlink_precedes( ooaofooa_TE_SYNC * left, ooaofooa_TE_SYNC * right );
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

void write_output(TYPE_1__* left, TYPE_1__* right) {
  json output_json;
  TYPE_1__ output_temp_1 = *left;
  json output_temp_2;

  output_temp_2["TE_SYNC_R2095_succeeds"] = output_temp_1.TE_SYNC_R2095_succeeds;

  output_temp_2["TE_SYNC_R2095_precedes"] = output_temp_1.TE_SYNC_R2095_precedes;

  output_temp_2["nextID"] = output_temp_1.nextID;
  output_json["left"] = output_temp_2;
  TYPE_1__ output_temp_3 = *right;
  json output_temp_4;

  output_temp_4["TE_SYNC_R2095_succeeds"] = output_temp_3.TE_SYNC_R2095_succeeds;

  output_temp_4["TE_SYNC_R2095_precedes"] = output_temp_3.TE_SYNC_R2095_precedes;

  output_temp_4["nextID"] = output_temp_3.nextID;
  output_json["right"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int left_pointer__TE_SYNC_R2095_succeeds = input_json["left"]["TE_SYNC_R2095_succeeds"];
  long int left_pointer__TE_SYNC_R2095_precedes = input_json["left"]["TE_SYNC_R2095_precedes"];
  long int left_pointer__nextID = input_json["left"]["nextID"];
  TYPE_1__ left_pointer = {left_pointer__TE_SYNC_R2095_succeeds, left_pointer__TE_SYNC_R2095_precedes, left_pointer__nextID};
  TYPE_1__* left = &left_pointer;
  long int right_pointer__TE_SYNC_R2095_succeeds = input_json["right"]["TE_SYNC_R2095_succeeds"];
  long int right_pointer__TE_SYNC_R2095_precedes = input_json["right"]["TE_SYNC_R2095_precedes"];
  long int right_pointer__nextID = input_json["right"]["nextID"];
  TYPE_1__ right_pointer = {right_pointer__TE_SYNC_R2095_succeeds, right_pointer__TE_SYNC_R2095_precedes, right_pointer__nextID};
  TYPE_1__* right = &right_pointer;
  clock_t begin = clock();
  ooaofooa_TE_SYNC_R2095_Unlink_precedes(left, right);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(left, right);
}