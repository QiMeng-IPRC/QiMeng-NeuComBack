#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int m; scalar_t__ f; scalar_t__ n; } ;
typedef  TYPE_1__ rbuf_t ;

/* Variables and functions */
extern "C" { void rbuf_init(rbuf_t *rbuf, int size);
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

void write_output(TYPE_1__* rbuf, int size) {
  json output_json;
  TYPE_1__ output_temp_1 = *rbuf;
  json output_temp_2;

  output_temp_2["m"] = output_temp_1.m;

  output_temp_2["f"] = output_temp_1.f;

  output_temp_2["n"] = output_temp_1.n;
  output_json["rbuf"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int rbuf_pointer__m = input_json["rbuf"]["m"];
  long int rbuf_pointer__f = input_json["rbuf"]["f"];
  long int rbuf_pointer__n = input_json["rbuf"]["n"];
  TYPE_1__ rbuf_pointer = {rbuf_pointer__m, rbuf_pointer__f, rbuf_pointer__n};
  TYPE_1__* rbuf = &rbuf_pointer;
  int size = input_json["size"];
  clock_t begin = clock();
  rbuf_init(rbuf, size);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rbuf, size);
}