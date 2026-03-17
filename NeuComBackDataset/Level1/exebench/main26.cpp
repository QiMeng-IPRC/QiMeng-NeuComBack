#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t size; size_t size_mask; scalar_t__ write_ptr; scalar_t__ read_ptr; } ;
typedef  TYPE_1__ ringbuffer_t ;

/* Variables and functions */
extern "C" { void ringbuffer_reset_size (ringbuffer_t * rb, size_t sz);
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

void write_output(TYPE_1__* rb, unsigned long int sz) {
  json output_json;
  TYPE_1__ output_temp_1 = *rb;
  json output_temp_2;

  output_temp_2["size"] = output_temp_1.size;

  output_temp_2["size_mask"] = output_temp_1.size_mask;

  output_temp_2["write_ptr"] = output_temp_1.write_ptr;

  output_temp_2["read_ptr"] = output_temp_1.read_ptr;
  output_json["rb"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int rb_pointer__size = input_json["rb"]["size"];
  unsigned long int rb_pointer__size_mask = input_json["rb"]["size_mask"];
  long int rb_pointer__write_ptr = input_json["rb"]["write_ptr"];
  long int rb_pointer__read_ptr = input_json["rb"]["read_ptr"];
  TYPE_1__ rb_pointer = {rb_pointer__size, rb_pointer__size_mask, rb_pointer__write_ptr, rb_pointer__read_ptr};
  TYPE_1__* rb = &rb_pointer;
  unsigned long int sz = input_json["sz"];
  clock_t begin = clock();
  ringbuffer_reset_size(rb, sz);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rb, sz);
}