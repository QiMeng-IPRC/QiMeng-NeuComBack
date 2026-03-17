#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pblk ;
struct TYPE_3__ {size_t size_this; } ;
typedef  TYPE_1__ _MallocBlock_t ;

/* Variables and functions */
extern "C" { void blk_size_and_flags_set(_MallocBlock_t *pblk, size_t size_and_flags);
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

void write_output(TYPE_1__* pblk, unsigned long int size_and_flags) {
  json output_json;
  TYPE_1__ output_temp_1 = *pblk;
  json output_temp_2;

  output_temp_2["size_this"] = output_temp_1.size_this;
  output_json["pblk"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int pblk_pointer__size_this = input_json["pblk"]["size_this"];
  TYPE_1__ pblk_pointer = {pblk_pointer__size_this};
  TYPE_1__* pblk = &pblk_pointer;
  unsigned long int size_and_flags = input_json["size_and_flags"];
  clock_t begin = clock();
  blk_size_and_flags_set(pblk, size_and_flags);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pblk, size_and_flags);
}