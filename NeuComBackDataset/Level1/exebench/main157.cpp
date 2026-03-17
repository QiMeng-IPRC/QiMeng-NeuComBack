#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ VmathVector3 ;
struct TYPE_7__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_2__ VmathPoint3 ;

/* Variables and functions */
extern "C" { void vmathP3SubV3( VmathPoint3 *result, const VmathPoint3 *pnt, const VmathVector3 *vec1 );
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

void write_output(TYPE_2__* result, TYPE_2__* pnt, TYPE_1__* vec1) {
  json output_json;
  TYPE_2__ output_temp_1 = *result;
  json output_temp_2;

  output_temp_2["z"] = output_temp_1.z;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["x"] = output_temp_1.x;
  output_json["result"] = output_temp_2;
  TYPE_2__ output_temp_3 = *pnt;
  json output_temp_4;

  output_temp_4["z"] = output_temp_3.z;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["x"] = output_temp_3.x;
  output_json["pnt"] = output_temp_4;
  TYPE_1__ output_temp_5 = *vec1;
  json output_temp_6;

  output_temp_6["z"] = output_temp_5.z;

  output_temp_6["y"] = output_temp_5.y;

  output_temp_6["x"] = output_temp_5.x;
  output_json["vec1"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int result_pointer__z = input_json["result"]["z"];
  long int result_pointer__y = input_json["result"]["y"];
  long int result_pointer__x = input_json["result"]["x"];
  TYPE_2__ result_pointer = {result_pointer__z, result_pointer__y, result_pointer__x};
  TYPE_2__* result = &result_pointer;
  long int pnt_pointer__z = input_json["pnt"]["z"];
  long int pnt_pointer__y = input_json["pnt"]["y"];
  long int pnt_pointer__x = input_json["pnt"]["x"];
  TYPE_2__ pnt_pointer = {pnt_pointer__z, pnt_pointer__y, pnt_pointer__x};
  TYPE_2__* pnt = &pnt_pointer;
  long int vec1_pointer__z = input_json["vec1"]["z"];
  long int vec1_pointer__y = input_json["vec1"]["y"];
  long int vec1_pointer__x = input_json["vec1"]["x"];
  TYPE_1__ vec1_pointer = {vec1_pointer__z, vec1_pointer__y, vec1_pointer__x};
  TYPE_1__* vec1 = &vec1_pointer;
  clock_t begin = clock();
  vmathP3SubV3(result, pnt, vec1);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(result, pnt, vec1);
}