#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct foo {int /*<<< orphan*/  x; } ;

/* Variables and functions */
extern "C" { void test3(struct foo *p, struct foo *q);
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

void write_output(struct foo* p, struct foo* q) {
  json output_json;
  struct foo output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["x"] = output_temp_1.x;
  output_json["p"] = output_temp_2;
  struct foo output_temp_3 = *q;
  json output_temp_4;

  output_temp_4["x"] = output_temp_3.x;
  output_json["q"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_pointer__x = input_json["p"]["x"];
  struct foo p_pointer = {p_pointer__x};
  struct foo* p = &p_pointer;
  int q_pointer__x = input_json["q"]["x"];
  struct foo q_pointer = {q_pointer__x};
  struct foo* q = &q_pointer;
  clock_t begin = clock();
  test3(p, q);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, q);
}