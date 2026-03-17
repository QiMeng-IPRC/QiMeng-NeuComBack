#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct mantissa {scalar_t__ h_32; unsigned long l_32; } ;

/* Variables and functions */
extern "C" { int b64_add(struct mantissa *e1, struct mantissa *e2);
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

void write_output(struct mantissa* e1, struct mantissa* e2, int returnv) {
  json output_json;
  struct mantissa output_temp_1 = *e1;
  json output_temp_2;

  output_temp_2["h_32"] = output_temp_1.h_32;

  output_temp_2["l_32"] = output_temp_1.l_32;
  output_json["e1"] = output_temp_2;
  struct mantissa output_temp_3 = *e2;
  json output_temp_4;

  output_temp_4["h_32"] = output_temp_3.h_32;

  output_temp_4["l_32"] = output_temp_3.l_32;
  output_json["e2"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int e1_pointer__h_32 = input_json["e1"]["h_32"];
  unsigned long int e1_pointer__l_32 = input_json["e1"]["l_32"];
  struct mantissa e1_pointer = {e1_pointer__h_32, e1_pointer__l_32};
  struct mantissa* e1 = &e1_pointer;
  long int e2_pointer__h_32 = input_json["e2"]["h_32"];
  unsigned long int e2_pointer__l_32 = input_json["e2"]["l_32"];
  struct mantissa e2_pointer = {e2_pointer__h_32, e2_pointer__l_32};
  struct mantissa* e2 = &e2_pointer;
  clock_t begin = clock();
  int returnv = b64_add(e1, e2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(e1, e2, returnv);
}