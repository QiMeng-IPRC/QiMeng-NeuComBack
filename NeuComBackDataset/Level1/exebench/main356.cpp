#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct rgba {int r; int g; int b; int /*<<< orphan*/  a; } ;

/* Variables and functions */
extern "C" { void rgba_desaturate (struct rgba *dest, struct rgba *src);
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

void write_output(struct rgba* dest, struct rgba* src) {
  json output_json;
  struct rgba output_temp_1 = *dest;
  json output_temp_2;

  output_temp_2["r"] = output_temp_1.r;

  output_temp_2["g"] = output_temp_1.g;

  output_temp_2["b"] = output_temp_1.b;

  output_temp_2["a"] = output_temp_1.a;
  output_json["dest"] = output_temp_2;
  struct rgba output_temp_3 = *src;
  json output_temp_4;

  output_temp_4["r"] = output_temp_3.r;

  output_temp_4["g"] = output_temp_3.g;

  output_temp_4["b"] = output_temp_3.b;

  output_temp_4["a"] = output_temp_3.a;
  output_json["src"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int dest_pointer__r = input_json["dest"]["r"];
  int dest_pointer__g = input_json["dest"]["g"];
  int dest_pointer__b = input_json["dest"]["b"];
  int dest_pointer__a = input_json["dest"]["a"];
  struct rgba dest_pointer = {dest_pointer__r, dest_pointer__g, dest_pointer__b, dest_pointer__a};
  struct rgba* dest = &dest_pointer;
  int src_pointer__r = input_json["src"]["r"];
  int src_pointer__g = input_json["src"]["g"];
  int src_pointer__b = input_json["src"]["b"];
  int src_pointer__a = input_json["src"]["a"];
  struct rgba src_pointer = {src_pointer__r, src_pointer__g, src_pointer__b, src_pointer__a};
  struct rgba* src = &src_pointer;
  clock_t begin = clock();
  rgba_desaturate(dest, src);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dest, src);
}