#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cnt; int head; int size; } ;
typedef  TYPE_1__ rbuff_t ;

/* Variables and functions */
extern "C" { int rbuff_remove_left(rbuff_t *rb, int n);
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

void write_output(TYPE_1__* rb, int n, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *rb;
  json output_temp_2;

  output_temp_2["cnt"] = output_temp_1.cnt;

  output_temp_2["head"] = output_temp_1.head;

  output_temp_2["size"] = output_temp_1.size;
  output_json["rb"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int rb_pointer__cnt = input_json["rb"]["cnt"];
  int rb_pointer__head = input_json["rb"]["head"];
  int rb_pointer__size = input_json["rb"]["size"];
  TYPE_1__ rb_pointer = {rb_pointer__cnt, rb_pointer__head, rb_pointer__size};
  TYPE_1__* rb = &rb_pointer;
  int n = input_json["n"];
  clock_t begin = clock();
  int returnv = rbuff_remove_left(rb, n);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rb, n, returnv);
}