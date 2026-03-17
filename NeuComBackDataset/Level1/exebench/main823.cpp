#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct gas {int mpg; int distance; int gals; } ;

/* Variables and functions */
extern "C" { void deal_with_pointer(struct gas *pbill);
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

void write_output(struct gas* pbill) {
  json output_json;
  struct gas output_temp_1 = *pbill;
  json output_temp_2;

  output_temp_2["mpg"] = output_temp_1.mpg;

  output_temp_2["distance"] = output_temp_1.distance;

  output_temp_2["gals"] = output_temp_1.gals;
  output_json["pbill"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pbill_pointer__mpg = input_json["pbill"]["mpg"];
  int pbill_pointer__distance = input_json["pbill"]["distance"];
  int pbill_pointer__gals = input_json["pbill"]["gals"];
  struct gas pbill_pointer = {pbill_pointer__mpg, pbill_pointer__distance, pbill_pointer__gals};
  struct gas* pbill = &pbill_pointer;
  clock_t begin = clock();
  deal_with_pointer(pbill);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pbill);
}