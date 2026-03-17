#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct rgb {double r; double g; double b; } ;

/* Variables and functions */
extern "C" { void realrgb(double r, double g, double b, struct rgb *to);
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

void write_output(double r, double g, double b, struct rgb* to) {
  json output_json;
  struct rgb output_temp_1 = *to;
  json output_temp_2;

  output_temp_2["r"] = output_temp_1.r;

  output_temp_2["g"] = output_temp_1.g;

  output_temp_2["b"] = output_temp_1.b;
  output_json["to"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double r = input_json["r"];
  double g = input_json["g"];
  double b = input_json["b"];
  double to_pointer__r = input_json["to"]["r"];
  double to_pointer__g = input_json["to"]["g"];
  double to_pointer__b = input_json["to"]["b"];
  struct rgb to_pointer = {to_pointer__r, to_pointer__g, to_pointer__b};
  struct rgb* to = &to_pointer;
  clock_t begin = clock();
  realrgb(r, g, b, to);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(r, g, b, to);
}