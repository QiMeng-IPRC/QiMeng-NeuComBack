#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int fh_neginf; } ;
typedef  TYPE_1__ FibHeap ;

/* Variables and functions */
extern "C" { unsigned int fh_setneginf ( FibHeap * h, unsigned int data );
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

void write_output(TYPE_1__* h, unsigned int data, unsigned int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *h;
  json output_temp_2;

  output_temp_2["fh_neginf"] = output_temp_1.fh_neginf;
  output_json["h"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int h_pointer__fh_neginf = input_json["h"]["fh_neginf"];
  TYPE_1__ h_pointer = {h_pointer__fh_neginf};
  TYPE_1__* h = &h_pointer;
  unsigned int data = input_json["data"];
  clock_t begin = clock();
  unsigned int returnv = fh_setneginf(h, data);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(h, data, returnv);
}