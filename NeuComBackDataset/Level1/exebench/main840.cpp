#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int h_32; int l_32; } ;
struct EXTEND {int sign; scalar_t__ exp; TYPE_1__ mantissa; } ;

/* Variables and functions */
extern "C" { void mul_ext(struct EXTEND *e1, struct EXTEND *e2, struct EXTEND *e3);
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

void write_output(struct EXTEND* e1, struct EXTEND* e2, struct EXTEND* e3) {
  json output_json;
  struct EXTEND output_temp_1 = *e1;
  json output_temp_2;

  output_temp_2["sign"] = output_temp_1.sign;

  output_temp_2["exp"] = output_temp_1.exp;
  json output_temp_3;

  output_temp_3["h_32"] = output_temp_1.mantissa.h_32;

  output_temp_3["l_32"] = output_temp_1.mantissa.l_32;
  output_temp_2["mantissa"] = output_temp_3;
  output_json["e1"] = output_temp_2;
  struct EXTEND output_temp_4 = *e2;
  json output_temp_5;

  output_temp_5["sign"] = output_temp_4.sign;

  output_temp_5["exp"] = output_temp_4.exp;
  json output_temp_6;

  output_temp_6["h_32"] = output_temp_4.mantissa.h_32;

  output_temp_6["l_32"] = output_temp_4.mantissa.l_32;
  output_temp_5["mantissa"] = output_temp_6;
  output_json["e2"] = output_temp_5;
  struct EXTEND output_temp_7 = *e3;
  json output_temp_8;

  output_temp_8["sign"] = output_temp_7.sign;

  output_temp_8["exp"] = output_temp_7.exp;
  json output_temp_9;

  output_temp_9["h_32"] = output_temp_7.mantissa.h_32;

  output_temp_9["l_32"] = output_temp_7.mantissa.l_32;
  output_temp_8["mantissa"] = output_temp_9;
  output_json["e3"] = output_temp_8;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int e1_pointer__sign = input_json["e1"]["sign"];
  long int e1_pointer__exp = input_json["e1"]["exp"];
  int e1_pointer__mantissa__h_32 = input_json["e1"]["mantissa"]["h_32"];
  int e1_pointer__mantissa__l_32 = input_json["e1"]["mantissa"]["l_32"];
  TYPE_1__ e1_pointer__mantissa = {e1_pointer__mantissa__h_32, e1_pointer__mantissa__l_32};
  struct EXTEND e1_pointer = {e1_pointer__sign, e1_pointer__exp, e1_pointer__mantissa};
  struct EXTEND* e1 = &e1_pointer;
  int e2_pointer__sign = input_json["e2"]["sign"];
  long int e2_pointer__exp = input_json["e2"]["exp"];
  int e2_pointer__mantissa__h_32 = input_json["e2"]["mantissa"]["h_32"];
  int e2_pointer__mantissa__l_32 = input_json["e2"]["mantissa"]["l_32"];
  TYPE_1__ e2_pointer__mantissa = {e2_pointer__mantissa__h_32, e2_pointer__mantissa__l_32};
  struct EXTEND e2_pointer = {e2_pointer__sign, e2_pointer__exp, e2_pointer__mantissa};
  struct EXTEND* e2 = &e2_pointer;
  int e3_pointer__sign = input_json["e3"]["sign"];
  long int e3_pointer__exp = input_json["e3"]["exp"];
  int e3_pointer__mantissa__h_32 = input_json["e3"]["mantissa"]["h_32"];
  int e3_pointer__mantissa__l_32 = input_json["e3"]["mantissa"]["l_32"];
  TYPE_1__ e3_pointer__mantissa = {e3_pointer__mantissa__h_32, e3_pointer__mantissa__l_32};
  struct EXTEND e3_pointer = {e3_pointer__sign, e3_pointer__exp, e3_pointer__mantissa};
  struct EXTEND* e3 = &e3_pointer;
  clock_t begin = clock();
  mul_ext(e1, e2, e3);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(e1, e2, e3);
}